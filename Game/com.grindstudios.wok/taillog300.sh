tail -F ./logs/smartfox.log|awk '{print substr($0,1,500)}'

