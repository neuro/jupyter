FROM python:3.6.0

COPY start.sh /start.sh
VOLUME /notebooks
WORKDIR /notebooks
EXPOSE 8888
CMD ["/start.sh"]

RUN apt-get update && apt-get install -y r-recommended
RUN pip3 --no-cache-dir install numpy pandas
RUN pip3 --no-cache-dir install seaborn jupyter numexpr nibabel nilearn sklearn scikit-image python-slugify rpy2 openpyxl xlrd
