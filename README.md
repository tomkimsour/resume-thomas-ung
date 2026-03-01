# Description

This repository contains the code to generate my resume using [Typst](https://typst.app/).
To build my projects, I rely on [Just](https://github.com/casey/just) which is a tool to run commands just like you would you make to build your projects but more straight forward and made to build project instead of compiling code.

## Dependencies

```
brew install typst just
```

## How to build

To build you can run 
```bash
just build
```

To build a specific language:
```bash
just build-en
just build-fr
```

## How to develop

To develop you can use typst watch tool by running
```
just watch
```

Or watch a specific language:
```
just watch-en
just watch-fr
```
```
```
