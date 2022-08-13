FROM ruby:3.1.2

WORKDIR /usr/src/mecab
COPY mecab/mecab-0.996.tar.gz ./
RUN tar zxf mecab-0.996.tar.gz \
  && rm mecab-0.996.tar.gz \
  && cd /usr/src/mecab/mecab-0.996 \
  && ./configure \
  && make \
  && make check \
  && make install
RUN ldconfig

CMD ["sh"]
