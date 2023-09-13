# xapi (API开放平台)

在线体验地址： <a href="http://60.204.157.168" target="_blank">XAPI</a>


## 项目介绍

基于 React + Golang + Gin + Dubbo-go 的 API接口开放调用平台。

管理员可以接入并发布接口，同时统计分析各接口的调用情况；用户可以注册登录并开通接口调用权限，浏览接口以及在线进行调试，并可以通过 客户端SDK 轻松调用接口。

## 项目架构设计

这个项目的架构是一个典型的分布式系统，包括多个独立的子项目，每个子项目具有特定的功能和职责。以下是每个子项目的功能和关系。

1. __前端项目__ [GitHub: xapi-frontend](https://github.com/xiaoxiongmao5/xapi-frontend) ：提供用户界面，用户可以登录、查看接口列表、发起接口调用。
2. __后端项目__ [GitHub: xapi-backend](https://github.com/xiaoxiongmao5/xapi-backend) ：提供用户认证、接口管理、账号管理、接口调用功能。
3. __网关项目__ [GitHub: xapi-gateway](https://github.com/xiaoxiongmao5/xapi-gateway) ：统一鉴权、限流、路由转发、统一日志、接口染色、统一业务处理等。
4. __客户端SDK__ [GitHub: xapi-clientsdk](https://github.com/xiaoxiongmao5/xapi-clientsdk) ：封装了对模拟接口项目的调用，提供了简化的API以便其他项目使用。
5. __模拟接口项目__ ：模拟第三方接口，供客户端SDK调用，用于开发和测试。（这个子项目在该项目中属于第三方服务，可使用第三方在线服务或本地开发项目，我直接使用的本地简单项目，就不创建仓库了）

## 项目业务流程图
![image](https://github.com/xiaoxiongmao5/xapi/assets/25204083/0c0174ae-6d1f-406a-8c03-96ccf94e293f)


### 调用接口的流程图
![image](https://github.com/xiaoxiongmao5/xapi/assets/25204083/9f033e8b-87a6-4a16-be1d-43badfcd76cd)


## 技术栈

### 后端技术栈
* 主语言：Golang
* 框架：Gin
* 数据库：Mysql8.0
* 注册中心：Nacos
* RPC远程调用：Dubbo-go
* 微服务网关：Gin
* 接口文档生成：swagger
* CRUD基础代码生成：sqlc
* 技术设计：API签名认证
* 容器化部署：Dockerfile、Docker Compose

### 前端技术栈

* 开发框架：React、Umi 4
* 脚手架：Ant Design Pro
* 组件库：Ant Design、Ant Design Components
* 语法扩展：TypeScript、Less
* 打包工具：Webpack
* 代码规范：ESLint、StyleLint、Prettier
* 图表展示：Echats
* 接口代码生成：OpenAPI

## 项目部署

### 容器化部署（推荐⭐️）

1. 克隆该项目到本地
    ```bash
    git clone https://github.com/xiaoxiongmao5/xapi.git
    ```
2. 修改配置
    ```bash
    vim docker-xapi/docker-compose.yml
    ```
    修改 `services.backend.extra_hosts` ,将 `xapi-gateway.com` 域名解析的IP 改为你部署的服务器的IP（如果端口8080并未对外开放，就设置为内网IP）
3. [可选] 添加访问拦截黑名单
    ```bash
    vim docker-xapi/docker-xapi-backend/conf/appconfig.json
    vim docker-xapi/docker-xapi-gateway/conf/appconfig.json
    ```
    添加要拦截的 ip 到 `ipBlackList`中。
4. 启动项目
    ```bash
    docker compose up -d
    ```

### 单个项目部署

按照以下顺序部署项目
1. 启动 `nacos` 服务
创建 docker-compose.yml
    ```yml
    version: '2'
    services:
      nacos:
        image: nacos/nacos-server:v2.1.2-slim
        container_name: nacos
        restart: always
        volumes:
          - ./data/nacos/logs:/home/nacos/logs
        environment:
          TZ: Asia/Shanghai
          LANG: en_US.UTF-8
          MODE: standalone
        ports:
          - "8848:8848"
        cpu_shares: 4
        mem_limit: 2048M
    ```
    运行 `docker compose up -d`
2. 部署 `网关 gateway` 项目
    下载项目到部署服务器上，修改配置文件，go build 编译，运行可执行文件
3. 部署 `后端 backend` 项目
    1. 先安装并启动MySQL
    2. 在MySQL中运行 `docker-xapi/init.sql`，初始化数据
    3. 下载项目到部署服务器上，修改配置文件，go build 编译，运行可执行文件
4. 部署 `前端 frontend` 项目
    build项目后，放在部署服务器上，使用Nginx代理访问
