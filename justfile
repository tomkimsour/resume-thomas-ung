build:
  typst compile src/main.typ thomas-ung.pdf

build-en:
  typst compile src/main.typ thomas-ung-en.pdf --input lang=en

build-fr:
  typst compile src/main.typ thomas-ung-fr.pdf --input lang=fr
watch:
  typst watch src/main.typ thomas-ung.pdf

watch-en:
  typst watch src/main.typ thomas-ung-en.pdf --input lang=en

watch-fr:
  typst watch src/main.typ thomas-ung-fr.pdf --input lang=fr
