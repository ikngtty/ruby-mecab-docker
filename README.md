# Ruby Mecab Docker

```sh
docker build --tag ikngtty/ruby-mecab ./
docker push ikngtty/ruby-mecab
```

It has the `latest` tag only.
Multiple immutable version tags are ideal but take some costs for me.

Its Ruby version is updated manually.
It is done lazily depending on my mood, so using this image is not recommended
for other people.
I'll not implement auto-update because implementing it is troublesome and
auto-update may cause breaking changes before my app prepares for it.
(NOTE: Specifying `ruby:latest` (or simply `ruby`) in `Dockerfile` does not
achieve auto-update. To achieve it, it is necessary additionally
to build the image whenever Ruby is updated.)

## License

Files in this repository without [mecab](mecab) directory
are under the MIT license (the [LICENSE](LICENSE) file).

### MeCab

This repository includes [MeCab][mecab] programs.

Source of the main program is
[mecab/mecab-0.996.tar.gz](mecab/mecab-0.996.tar.gz)
, which is downloaded from
[here](https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7cENtOXlicTFaRUE)
and is included under the BSD license, which copy is
[mecab/mecab-0.996-license](mecab/mecab-0.996-license)
.

[mecab]:http://taku910.github.io/mecab/
