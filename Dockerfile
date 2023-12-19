# 阶段一：构建应用
FROM python:3.10 as builder

WORKDIR /app

# 复制应用代码到容器中
COPY app.py /app

# 安装 Flask 库及其他依赖（如果有）
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 定义容器启动时运行的命令
CMD ["python", "app.py"]
