FROM python:3.11-slim
COPY hello.py .
CMD ["python", "hello.py"]
