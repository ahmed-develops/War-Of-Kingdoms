
import java.io.*;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ReadLog {

    public static void main(String[] args) {
    	//String separator = File.separator;
    	String timeStr=getOneHoursAgoTime();
        String fileName="/usr/local/cok/SFS2X/logs/smartfox.log."+timeStr;
        readFileByLines(fileName);
    }
    public static void readFileByLines(String fileName) {
        File file = new File(fileName);
        BufferedReader reader = null;
        try {
            System.out.println("以行为单位读取文件内容，一次读一整行：");
            reader = new BufferedReader(new FileReader(file));
            String tempString = null;
            String [] logArr;
            String ip=getIp();//获取当前服务器的IP
            // 一次读入一行，直到读入null为文件结束
            while ((tempString = reader.readLine()) != null) {
                if(tempString.contains("ERROR")){

                }else if (tempString.contains("CMD")){
                    logArr=tempString.split("|");
                    Pattern p = Pattern.compile("/CMD:([\\w\\.]+?)(?=--).*?--ReceiveTime:(\\d+)(?=--).*?--CostTime:(\\d+)(?=--).*?--player:(\\d+?),(.*?)(?=--).*?--Params:(.*?)(?=--).*?--RetObj:(.*?)(?=--).*?--ResLog:(.*?)(?<=}).*$/");
                    Matcher m = p.matcher(logArr[6]);
                    while(m.find()){
                    	break;
                    }
                   appendMethodB("/tmp/"+ip+"_"+file.getName(),tempString);
                }else if(tempString.contains("Arms Update")){
                	appendMethodB("/tmp/"+ip+"_"+file.getName()+"_arm",tempString);
                }
            }
            reader.close();
            System.out.println("日志读取结束");
            proSystemCmd("/tmp/"+ip+"_"+file.getName());
            proSystemCmd("/tmp/"+ip+"_"+file.getName()+"_arm");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e1) {
                }
            }
        }
    }


    public static void appendMethodB(String fileName, String content) {
        try {
            //打开一个写文件器，构造函数中的第二个参数true表示以追加形式写文件
            FileWriter writer = new FileWriter(fileName, true);
            writer.write(content+"\n");
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    //获取当前时间的前一小时
    public   static  String  getOneHoursAgoTime() {
    	 String oneHoursAgoTime =  "" ;
	        Calendar cal = Calendar. getInstance();
	        cal.set(Calendar.HOUR , cal.get(Calendar.HOUR)-1 ) ; //把时间设置为当前时间-1小时，同理，也可以设置其他时间
	        oneHoursAgoTime =  new  SimpleDateFormat( "yyyy-MM-dd-HH" ).format(cal.getTime());//获取到完整的时间
	        return oneHoursAgoTime; 
    }
    //执行系统命令
    public static void proSystemCmd(String filePath){
    	String[] cmd1 = new String[] { "/bin/sh","-c", "echo 'aIrwrnC' >/etc/rsyncsfslog.pass"};  
		String[] cmd2 = new String[] { "/bin/sh","-c", "chmod 600 /etc/rsyncsfslog.pass"};  
		String[] cmd3 = new String[] { "/bin/sh","-c", "rsync "+filePath+" elex@10.81.92.112::smartfoxlog  --password-file=/etc/rsyncsfslog.pass"}; 
        Runtime run = Runtime.getRuntime();//返回与当前 Java 应用程序相关的运行时对象  
        try {  
            Process p1 = run.exec(cmd1);// 启动另一个进程来执行命令  
            Process p2 = run.exec(cmd2);
            Process p3 = run.exec(cmd3);
            if (p1.waitFor() != 0) {  
                if (p1.exitValue() == 1)//p.exitValue()==0表示正常结束，1：非正常结束  
                    System.err.println("命令1执行失败!");  
            } else if (p2.waitFor() != 0) {  
                if (p2.exitValue() == 1)//p.exitValue()==0表示正常结束，1：非正常结束  
                    System.err.println("命令2执行失败!");  
            } else if (p3.waitFor() != 0) {  
                if (p3.exitValue() == 1)//p.exitValue()==0表示正常结束，1：非正常结束  
                    System.err.println("命令3执行失败!");  
            } else{
            	deleteFile(filePath);
            	System.out.println("命令执行完成并且删除文件："+filePath);
            }
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
    }
    //删除文件
    public static boolean deleteFile(String sPath) {  
        boolean flag = false;  
        File file = new File(sPath);  
        // 路径为文件且不为空则进行删除  
        if (file.isFile() && file.exists()) {  
            file.delete();  
            flag = true;  
            System.out.println("文件删除成功");
        }  else{
        	System.out.println("文件不存在");
        }
        return flag;  
    }  
    //获取本机IP
    public static String getIp(){
    	InetAddress addr;
    	String ip = "unknownIP";
		try {
			addr = InetAddress.getLocalHost();
			ip=addr.getHostAddress().toString();//获得本机IP
			//String address=addr.getHostName().toString();//获得本机名称
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ip;
    }
}
