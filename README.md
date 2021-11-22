# Wayne's resume

[![GitHub top language](https://img.shields.io/github/languages/top/KageyamaRuka/resume.svg)](https://github.com/KageyamaRuka/resume)

This is my resume, based on [this](https://github.com/ice1000/resume).
There's a [Haskell script](Resume.hs) to generate the TeX source files.

# Build

To build this resume, install texlive-full and GHC toolchain first.<br/>
Then:

```bash
# Generate the TeX files
runghc Resume.hs en >> latex/resume.tex
runghc Resume.hs cn >> latex/resume-cn.tex
runghc Resume.hs elab >> latex/resume-elab.tex

# Build the TeX files
cd latex
make
cp *.pdf ..
cd ..
```
