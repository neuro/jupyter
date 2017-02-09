FROM python:3

VOLUME /notebooks
RUN pip3 --no-cache-dir install seaborn jupyter numexpr python-slugify nibabel nilearn
RUN pip3 --no-cache-dir install sklearn
WORKDIR /notebooks
COPY start.sh /start.sh
EXPOSE 8888
CMD ["/start.sh"]
