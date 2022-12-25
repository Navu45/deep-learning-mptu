FROM tensorflow/tensorflow:latest-gpu-jupyter
COPY requirements.txt requirements.txt
RUN python3 -m pip install -r requirements.txt
CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]