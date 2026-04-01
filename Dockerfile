# Ek halki-phulki python image use karein
FROM python:3.11-slim

# Apni script ko container ke andar copy karein
COPY hello.py .

# Command jo container chalne par script run karegi
CMD ["python", "hello.py"]FROM python:3.11-slim
COPY hello.py .
CMD ["python", "hello.py"]
