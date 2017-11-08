# jingdocker

**本地环境**   分支develop


- 修改.env 
    ```bash
    SCRIPT=dev
    ```
    
- 进入项目jingdocker根目录
    ```bash
    cd yourworkspace/jingdocker
    ```
    
- 启动 
    ```bash
    docker-compose up
    ```

- 访问地址：

    * freecart项目  
        ```
        http://localhost:2080/admin
        http://127.0.0.1:2080/admin
         ```  
    * jingsaas后台 
        ```
        http://localhost:40080 
        http://0.0.0.0:40080
        ```
    * jingweb项目(loadjs启动)
        ```
        http://localhost:8088
        http://127.0.0.1:8088
        ```
    * jingweb项目（打包启动）
        ```
        http://localhost:6080 
        http://localhost:6080
        ```
        
**生产环境**    分支master

- 修改.env 
    ```
    SERVER_NAME=jingfree.com
    SCRIPT=production
    ```
- 启动容器 
    * 进入项目jingdocker根目录
        ```bash
        cd yourworkspace/jingdocker
        ```
    * 启动 
        ```bash
        docker-compose -f docker-compose.piwik.yml up
        ```
