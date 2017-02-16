FROM python:3.6.0

COPY start.sh /start.sh
VOLUME /notebooks
WORKDIR /notebooks
EXPOSE 8888
CMD ["/start.sh"]

RUN pip3 --no-cache-dir install seaborn
RUN pip3 --no-cache-dir install jupyter
RUN pip3 --no-cache-dir install numexpr
RUN pip3 --no-cache-dir install nibabel
RUN pip3 --no-cache-dir install nilearn
RUN pip3 --no-cache-dir install sklearn
RUN pip3 --no-cache-dir install scikit-image
RUN pip3 --no-cache-dir install python-slugify
