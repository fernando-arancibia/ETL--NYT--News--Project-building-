# 
FROM python:3.10

# 
WORKDIR /code

# 
COPY ./requirements.txt /code/requirements.txt

# 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
COPY ./app /code/app

#EXPOSE 8000:8000

#   python -m uvicorn main:app --reload
CMD ["python", "-m", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
#CMD ["python", "-m", "uvicorn", "app.main:app", "--reload"]
#CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
