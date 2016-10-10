FROM rpy2/rpy2:2.8.x
MAINTAINER Jan-Gerd Tenberge <jan-gerd.tenberge@uni-muenster.de>

VOLUME /notebook
USER root
RUN pip3 --no-cache-dir install seaborn jupyter numexpr statsmodels elasticsearch python-slugify
USER $NB_USER
WORKDIR /notebook
COPY start.sh /start.sh
EXPOSE 8888
CMD ["/start.sh"]
