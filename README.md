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
        
        
        

