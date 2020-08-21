FROM ruby

ENV LANG C.UTF-8

WORKDIR /usr/src/mecab
COPY mecab/mecab-0.996.tar.gz ./
RUN tar zxf mecab-0.996.tar.gz \
  && rm mecab-0.996.tar.gz

WORKDIR /usr/src/mecab/mecab-0.996
RUN ./configure \
  && make \
  && make check \
  && make install \
  && ldconfig

CMD ["sh"]
