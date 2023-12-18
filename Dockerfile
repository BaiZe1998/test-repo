# 阶段一：构建应用
FROM python:3.10 as builder

WORKDIR /app

# 复制应用代码到容器中
COPY app.py /app

# 安装 Flask 库
RUN pip install flask

# 阶段二：创建最终镜像
FROM python:3.10-slim

# 设置工作目录
WORKDIR /app

# 从第一阶段复制构建好的应用
COPY --from=builder /app /app

# 定义容器启动时运行的命令
CMD ["python", "app.py"]
