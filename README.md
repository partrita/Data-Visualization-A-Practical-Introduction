<!-- README.md is generated from README.Rmd. Please edit that file -->



# socviz <img src="man/figures/logo.png" align="right" width="120" />

<!-- badges: start -->
[![R build status](https://github.com/kjhealy/socviz/workflows/R-CMD-check/badge.svg)](https://github.com/kjhealy/socviz/actions)
<!-- badges: end -->

This is an R package of datasets, functions, and course materials to go along with the book _[Data Visualization: A Practical Introduction](https://amzn.to/2vfAixM)_ (Princeton University Press, 2019).


<img src="http://socviz.co/assets/dv-cover-pupress.jpg" width = "75%"/>

## What's in this Package

The `socviz` package contains about twenty five datasets and a number of utility and convenience functions. Most of them are used in _[Data Visualization: A Practical Introduction](https://amzn.to/2vfAixM)_ (`http://socviz.co`), and there are also a few others as well for self-learners and students to practice their skills on. 

A course packet is also included. This is a zipped file containing an [R Studio](http://rstudio.com) project consisting of a nine [R Markdown](http://rmarkdown.rstudio.com) documents that parallel the chapters in the book. They contain the code for almost all the figures in the book (and a few more besides). Some support files are also included, to help demonstrate things like reading in your own data locally in R.


## Installation

To install the package, you can follow the instructions in the Preface to the book. Alternatively, first download and install R for [MacOS](https://cran.r-project.org/bin/macosx/), [Windows](https://cran.r-project.org/bin/windows/) or [Linux](https://cran.r-project.org/bin/linux/), as appropriate. Then download and install [RStudio](http://rstudio.com/download/). Launch RStudio and then type the following code at the Console prompt (`> `), hitting return at the end of each line:


```r


my_packages <- c("tidyverse", "fs", "devtools")
install.packages(my_packages)

install.packages("socviz")

```

To install the development version of `socviz`, instead of `install.packages("socviz")` do the following:


```r

devtools::install_github("kjhealy/socviz")

```

Once everything has downloaded and been installed (which may take a little while), load the `socviz` package: 


```r
library(socviz)
```

## The Course Packet

The supporting materials are contained in a compressed `.zip` file. To extract them to your Desktop, make sure the `socviz` package is loaded as described above. Then do something like this:


```r

setup_course_notes(folder = "~/Desktop")

```

You can choose the destination folder, but you must supply one. Here, the `dataviz_course_notes.zip` file will be copied to your Desktop, and uncompressed there into a folder called `dataviz_course_notes`. Open the folder, and double-click the file named `dataviz.Rproj` to launch the project as a new RStudio session. If you want to uncompress the file somewhere other than your Desktop, e.g. your Documents folder, you can do this:


```r

setup_course_notes(folder = "~/Documents")

```



## More about the Datasets and Functions

The included datasets and functions are documented at <http://kjhealy.github.io/socviz/reference/>. 

# 🗄️ R Code for Kieran Healy's Data Visualization Book

The notebook included in this repository is an archive of all the code I ran and corrected for Kieran Healy's book [*Data Visualization: A Practical Introduction 1st Edition*](https://amzn.to/2vfAixM). My initial plan for this book was to learn data visualization with the programming side using R: I have accomplished this task and finished the book. The archive is shared here for anyone else that takes a chance at this amazing work since the book was published back in 2018 there are some deprecated parameters. It's also difficult to find the code for the themeing function `theme_book()`. Healy and no one that has worked on this book ceased helping their readers troubleshoot errors as seen from the past 2 years in the issues section of the [socviz repository](https://github.com/kjhealy/socviz).

The archived code however has a few issues:
+ I wasn't too strapped to organize the code: however, there are relevant headings for each chapter.
+ The few quizzes included in the book are intentionally skipped over. 
+ There may be 1 or 2 errors in the code from the book that I was not able to resolve.

## 📓 Thoughts on Google Collab
I realized a while back that collab has an option to let anyone change the language from Python to R, so I took up that opportunity since I did not want my already storage constrained laptop losing more storage because of these large packages that needed to be installed. The only downside for this approach is when the runtime expires and needs to be reactivated: the packages will have to be resintalled--which isn't a big issue with some of them that are small but the big ones take a considerable amount of time. If you're working with this book, I recommend finishing the chapter that requires that package to prevent having to install it over and over again. Also, doing this with the packages accustoms you to the tools you have in your disposal and gives you a great idea of what functions come from where making it so when you come back again you can recall a bit better every time.

If you want to create your own R-centric google collab, you can launch a notebook that does that through a url: https://colab.to/r.


