# jingdocker

**本地环境**   分支develop

    1.修改.env 的SCRIPT=dev
    2.进入项目jingdocker根目录
    3.启动 docker-compose up

    访问地址：
    freecart项目  localhost:2080/admin   /127.0.0.1:2080/admin
    jingsaas后台 localhost:40080  /0.0.0.0:40080
    jingweb项目(loadjs启动)  localhost:8080 /127.0.0.1:8080
    jingweb项目（打包启动）localhost:6080 /localhost:6080
    

**生产环境**    分支master

    1.修改.env 的SERVER_NAME=jingfree.com，SCRIPT=production
    2.进入项目jingdocker根目录
    3.启动 docker-compose -f docker-compose.piwik.yml up