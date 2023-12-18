# 使用官方 Python 镜像作为基础镜像
FROM python:3.10

# 设置工作目录
WORKDIR /app

# 复制应用代码到容器中
COPY app.py /app

# 安装 Flask 库
RUN pip install flask

# 定义容器启动时运行的命令
CMD ["python", "app.py"]
