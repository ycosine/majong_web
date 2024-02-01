# 使用 node:slim 作为基础镜像
FROM node:20.10.0-slim
# 创建工作目录
WORKDIR /app

# 复制 package.json 和 yarn.lock 文件
COPY . .

RUN yarn install

RUN yarn build

EXPOSE 9777

# 运行 Next.js 应用
CMD ["yarn", "serve"]
