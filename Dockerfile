# 1. Base Image
FROM python:3.11-slim

# 2. Set Environment Variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# 3. Set Work Directory
WORKDIR /app

# 4. Install Dependencies
COPY ./backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy Project Code
COPY ./backend .

# 6. Expose Port (if using a web framework like Django/Flask)
# EXPOSE 8000

# 7. Run Command
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"] 