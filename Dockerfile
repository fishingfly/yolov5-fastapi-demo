FROM registry.cn-hangzhou.aliyuncs.com/fishing01/python3-base:latest

LABEL maintainer="fishngfly"

RUN mkdir /yolov5-fastapi-demo

COPY . /yolov5-fastapi-demo

WORKDIR /yolov5-fastapi-demo

RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt --verbose

EXPOSE 8000

CMD ["uvicorn", "server:app", "--host", "0.0.0.0","--reload"]
