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
    
 - cd 到 jingdocker目录
    
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
    
        
            如遇容器工作不正常，可先docker restart （容器id）重启容器解决问题，
            不生效的话，先执行 docker-compose down 再docker-compose up -d（down 会清除所有数据，生产环境慎用）
        