FROM tensorflow/tensorflow:2.3.0-py3

# Install any additional libraries needed for your model
RUN pip install --upgrade pip && pip install numpy pandas scikit-learn

# Add your model or code here (e.g., upload your model to the container)
COPY ./your_model /opt/ml/model

# Define entrypoint (this depends on your model)
ENTRYPOINT ["python", "/opt/ml/model/inference.py"]
