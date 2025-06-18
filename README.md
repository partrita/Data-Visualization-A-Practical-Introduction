<!-- README.md는 README.Rmd에서 생성됩니다. 해당 파일을 편집하십시오. -->

# socviz <img src="man/figures/logo.png" align="right" width="120" />

<!-- badges: start -->
[![R 빌드 상태](https://github.com/kjhealy/socviz/workflows/R-CMD-check/badge.svg)](https://github.com/kjhealy/socviz/actions)
<!-- badges: end -->

이것은 _[데이터 시각화: 실용적 입문](https://amzn.to/2vfAixM)_ (Princeton University Press, 2019) 책과 함께 제공되는 데이터 세트, 함수 및 강의 자료의 R 패키지입니다.

<img src="http://socviz.co/assets/dv-cover-pupress.jpg" width = "75%"/>

## 이 패키지의 내용물

`socviz` 패키지에는 약 25개의 데이터 세트와 여러 유틸리티 및 편의 함수가 포함되어 있습니다. 대부분은 _[데이터 시각화: 실용적 입문](https://amzn.to/2vfAixM)_ (`http://socviz.co`)에서 사용되며, 자습생과 학생이 기술을 연습할 수 있도록 몇 가지 다른 것도 있습니다.

강의 패킷도 포함되어 있습니다. 이것은 책의 장과 유사한 9개의 [R Markdown](http://rmarkdown.rstudio.com) 문서로 구성된 [R Studio](http://rstudio.com) 프로젝트가 포함된 압축 파일입니다. 여기에는 책에 있는 거의 모든 그림(그리고 몇 가지 추가 그림)에 대한 코드가 포함되어 있습니다. R에서 로컬로 자체 데이터를 읽는 것과 같은 작업을 시연하는 데 도움이 되는 일부 지원 파일도 포함되어 있습니다.

## 설치

패키지를 설치하려면 책의 서문에 있는 지침을 따르십시오. 또는 먼저 필요에 따라 [MacOS](https://cran.r-project.org/bin/macosx/), [Windows](https://cran.r-project.org/bin/windows/) 또는 [Linux](https://cran.r-project.org/bin/linux/)용 R을 다운로드하여 설치하십시오. 그런 다음 [RStudio](http://rstudio.com/download/)를 다운로드하여 설치하십시오. RStudio를 시작한 다음 콘솔 프롬프트(`> `)에 다음 코드를 입력하고 각 줄 끝에서 Return 키를 누르십시오.

```r
my_packages <- c("tidyverse", "fs", "devtools")
install.packages(my_packages)

install.packages("socviz")
```

`socviz`의 개발 버전을 설치하려면 `install.packages("socviz")` 대신 다음을 수행하십시오.

```r
devtools::install_github("kjhealy/socviz")
```

모든 항목이 다운로드되고 설치되면 (시간이 다소 걸릴 수 있음) `socviz` 패키지를 로드하십시오.

```r
library(socviz)
```

## 강의 패킷

지원 자료는 압축된 `.zip` 파일에 포함되어 있습니다. 바탕 화면으로 추출하려면 위에서 설명한 대로 `socviz` 패키지가 로드되었는지 확인하십시오. 그런 다음 다음과 같이 하십시오.

```r
setup_course_notes(folder = "~/Desktop")
```

대상 폴더를 선택할 수 있지만 하나를 제공해야 합니다. 여기서 `dataviz_course_notes.zip` 파일이 바탕 화면에 복사되고 `dataviz_course_notes`라는 폴더로 압축 해제됩니다. 폴더를 열고 `dataviz.Rproj`라는 파일을 두 번 클릭하여 프로젝트를 새 RStudio 세션으로 시작하십시오. 바탕 화면이 아닌 다른 곳(예: 문서 폴더)에 파일 압축을 풀려면 다음과 같이 하십시오.

```r
setup_course_notes(folder = "~/Documents")
```

## 데이터 세트 및 함수에 대한 추가 정보

포함된 데이터 세트 및 함수는 <http://kjhealy.github.io/socviz/reference/>에 문서화되어 있습니다.
