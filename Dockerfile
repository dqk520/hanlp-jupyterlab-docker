FROM python:3.8.5

RUN pip --no-cache-dir install hanlp

RUN pip install jupyterlab

WORKDIR /jupyter

EXPOSE 8887

CMD ["bash", "-c", "jupyter lab --notebook-dir=/jupyter --ip 0.0.0.0 --no-browser --allow-root"]
