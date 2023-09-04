FROM dependencytrack/frontend

RUN python3 -m venv /opt/venv

# Install dependencies:
COPY requirements.txt .

RUN useradd -u 1001 testuser

RUN . /opt/venv/bin/activate && pip install -r requirements.txt
USER testuser

# Run the application:
COPY main.py .
CMD . /opt/venv/bin/activate && exec python main.py