# Thesis

This is our graduate thesis for the senior year of the Honors Program, intake 2018-2022, at the University of Science, VNU-HCM.

## Members

Student Code | Student Name
--- | --- 
18120043 | Minh-Khoi Pham
18120134 | Thang-Long Nguyen-Ho

And our esteemed **supervisor**: ***Assoc. Prof. Minh-Triet Tran***

## Table of contents

Overall, our thesis contains 7 chapters in total:
  1. Introduction
  2. Background
  3. Related Works
  4. Proposed Method
  5. Experiment
  6. Application
  7. Conclusion

## Codebases

- The source code for this projects comprises of two parts:
  - Training/Evaluation : [kaylode/ivos](https://github.com/kaylode/ivos.git)
  - Annotation tool: [nhtlongcs/ivos-gui](https://github.com/nhtlongcs/ivos-gui)

## How to run using Docker

```
docker run --rm -it -v $(pwd):/workdir danteev/texlive latexmk -pdf usmthesis.tex
docker run --rm -it -v $(pwd):/workdir danteev/texlive latexmk -pdf proposal.tex
```
