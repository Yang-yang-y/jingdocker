# jingdocker

**本地环境**   

- 安装 switchhosts

    下载地址  https://github.com/oldj/SwitchHosts/releases

    导入 switchhosts.json 
    
    切换到 dev 

    
- 启动 
    ```bash
    docker-compose up -d
    ```

- 访问地址：

    * freecart项目  

        http://store.jingfree.top/admin

    * jingsaas后台 

        api: http://sapi.jingfree.top

        打包访问 shop:  http://shop.jingfree.top

        node访问 devshop: http://devshop.jingfree.top (输入命令docker-compose  -f docker-compose.cmsdev.yml up -d )
        
    * xingstation

        打包访问 h5： http://h5.jingfree.top
        
        node访问 devh5: http://devh5.jingfree.top (输入命令 docker-compose  -f docker-compose.h5dev.yml up -d )
        
        
**docker命令**
    
 -   常用命令
          
         
                 docker-compose up -d     生成并后台启动容器组
                 
                 docker-compose -f xxx.yml up -d   指定配置文件 生成并后台启动容器组
                 
                 docker ps                查看运行的容器
                 
                 docker ps -a            查看所有容器 （包括已停止）
                 
                 docker logs -f（容器id）  输出容器日志
                  
                 docker exec -it （容器id）/bin/sh   进入容器
                  
                 docker restart （容器id） 重启容器
                 
                 docker-compose down      销毁容器
                 
                 docker-compose -f xxx.yml down  指定配置文件 销毁容器
                 

         
 - 建议
    
        
            本地环境调试
            确保switchhost软件已经运行
            1.进入jingdocker项目  
            2.执行docker-compose down  
            3.执行docker-compose -f docker-compose.cmsdev.yml down
            4.执行docker-compose -f docker-compose.h5dev.yml down
            5.执行docker-compsoe up 
            6.进入 xingstation_activity 目录 ，npm run dev 访问域名为 http://devh5.jingfree.top 
            7.进入 jingcms目录 ，npm run dev ，访问域名为 http://devshop.jingfree.top 
            8.如果还是不生效，关掉docker软件再重新打开，重复步骤 1，2，5
        