#' @importFrom magrittr %>%
#' @export
magrittr::`%>%`

##' 편의를 위한 'not-in' 연산자
##'
##' 내장 연산자 \code{\%in\%}의 보수입니다. \code{y}에 없는 \code{x}의 요소를 반환합니다.
##' @title \%nin\%
##' @param x 항목의 벡터
##' @param y 모든 값의 벡터
##' @return x에 있고 y에 없는 항목의 논리 벡터
##' @author Kieran Healy
##' @rdname nin
##' @examples
##' fruit <- c("apples", "oranges", "banana")
##' "apples" %nin% fruit
##' "pears" %nin% fruit
##' @export
"%nin%" <- function(x, y) {
  return( !(x %in% y) )
}


##' 정수를 날짜로 변환합니다.
##'
##' @title int_to_year
##' @param x 정수 또는 정수 벡터입니다.
##' @param month 연도에 추가할 월입니다. 1월부터 9월까지의 월은
##'     "01", "02" 등과 같이 문자열로 지정해야 하며,
##'     1 또는 2o 등과 같이 지정하면 안 됩니다.
##' @param day 연도에 추가할 일입니다. 일은 "01" 또는 "02" 등과 같이
##'     문자열로 지정해야 하며, 1 또는 2 등과 같이 지정하면 안 됩니다.
##' @return 입력 정수가 연도 구성 요소를 형성하는 날짜 벡터입니다.
##'     기본적으로 추가되는 일 및 월 구성 요소는 6월 15일이므로
##'     플롯의 계열 중간에 눈금 표시가 나타납니다. 입력의 경우
##'     0년부터 9999년까지만 허용됩니다.
##' @examples
##' int_to_year(1960)
##' class(int_to_year(1960))
##' int_to_year(1960:1965)
##' int_to_year(1990, month = "01", day = "30")
##' @author Kieran Healy
##' @export
int_to_year <- function(x, month="06", day="15") {
  values <- !is.na(x) ## NA가 아닌 값
  if(any(x[values]%%1!=0)){
    message("입력에 정수가 아닌 값이 포함되어 있습니다.")
  } else {
    d_string <- rep(NA, length(x))
    d_string[values] <- paste0(x[values], "-", month, "-", day)
    as.Date(strptime(d_string, format="%Y-%m-%d"))
  }
}

##' 색상 팔레트를 그립니다.
##'
##' colorspace 라이브러리에서 가져왔습니다.
##' @title 색상 팔레트 그리기
##' @param col 색상 벡터
##' @param border 테두리
##' @param ... 기타 인수
##' @return 색상 팔레트 플롯
##' @author colorspace 라이브러리 작성자
##' @export
##' @examples
##' color_pal(c("#66C2A5", "#FC8D62", "#8DA0CB"))
color_pal <- function(col, border = "gray70", ...) {
  n <- length(col)
  graphics::plot(0, 0, type="n", xlim = c(0, 1), ylim = c(0, 1),
    axes = FALSE, xlab = "", ylab = "", ...)
  graphics::rect(0:(n-1)/n, 0, 1:n/n, 1, col = col, border = border)
}

##' 색상 16진수 값 표를 색상 표로 플로팅합니다.
##'
##' 색상 값의 데이터 프레임이 주어지면 견본으로 플로팅합니다.
##' @title 색상 16진수 값 표를 색상 표로 플로팅
##' @param df 색상 16진수 값의 데이터 프레임
##' @return 색상 표 플롯
##' @author Kieran Healy
##' @examples
##' color_table
##' color_comp(color_table)
##' @export
color_comp <- function(df) {
    d <- as.data.frame(df)
    graphics::plot.new()
    graphics::par(mfrow = c(ncol(d), 1), mar = c(1, 0, 2, 0), cex = 1.2)

    for(i in 1:ncol(d)) {
        color_pal(d[,i])
        graphics::title(colnames(d)[i])
    }
}



##' 깔끔한 n방향 빈도표를 생성합니다.
##'
##' Tidyverse, 파이프라인 및 dplyr 친화적인 빈도표
##' @title 깔끔한 n방향 빈도표 생성
##' @param df tibble 또는 데이터 프레임 (파이프라인 내에서 암시적)
##' @param ... group_by()와 같이 그룹화
##' @return 그룹화 변수, 그룹당 N (`n`) 및 각 그룹의 비율 (`prop`)을
##'     포함하는 tibble로, 가장 바깥쪽 그룹화 변수를 기준으로 계산됩니다.
##' @author Kieran Healy
##' @examples
##' mtcars %>% freq_tab(vs, gear, carb)
##'
##' @export
freq_tab <- function (df, ...)
{
    grouping <- rlang::quos(...)
    n <- NULL

    if(dplyr::is_grouped_df(df)) {
        out_tbl <- df %>% dplyr::count(!!!grouping)
    } else {
        out_tbl <- df %>% dplyr::group_by(!!!grouping) %>% dplyr::count()
    }

    n_groups <- length(dplyr::group_vars(out_tbl))

    if(n_groups == 1) {
        out_tbl %>% dplyr::ungroup() %>%
            dplyr::mutate(freq = n/sum(n))
    } else {
        outer_group <- dplyr::groups(out_tbl)[[1]]
        out_tbl %>% dplyr::group_by(!!outer_group) %>%
            dplyr::mutate(prop = prop.table(n))
    }
}

##' ggplot2 플롯을 임의의 그리드에 배열합니다.
##'
##' 함수는 `list(plot, row(s), column(s))` 형식의 인수를 사용합니다.
##'     여기서 `plot`은 ggplot2 플롯 객체이고, 행과 열은 해당 플롯 객체가
##'     차지하기를 원하는 그리드 영역을 식별합니다.
##'     http://stackoverflow.com/questions/18427455/multiple-ggplots-of-different-sizes를 참조하십시오.
##' @title ggplot2 플롯을 임의의 그리드에 배열
##' @return ggplot2 플롯의 그리드
##' @author [wq] 패키지에서 추출
##' @param ... ggplot 객체의 일련의 목록
##' @examples
##' library(ggplot2)
##' p1 <- qplot(x=wt,y=mpg,geom="point",main="Scatterplot of wt vs.
##'     mpg", data=mtcars)
##' p2 <- qplot(x=wt,y=disp,geom="point",main="Scatterplot of wt vs
##'     disp", data=mtcars)
##' p3 <- qplot(wt,data=mtcars)
##' lay_out(list(p1, 1:2, 1:4),
##'       list(p2, 3:4, 1:2),
##'       list(p3, 3:4, 3:4))
##' @export
lay_out = function(...) {
    x <- list(...)
    n <- max(sapply(x, function(x) max(x[[2]])))
    p <- max(sapply(x, function(x) max(x[[3]])))
    grid::pushViewport(grid::viewport(layout = grid::grid.layout(n, p)))

    for (i in seq_len(length(x))) {
        print(x[[i]][[1]], vp = grid::viewport(layout.pos.row = x[[i]][[2]],
            layout.pos.col = x[[i]][[3]]))
    }
}


##' 비율(백분율)의 양방향 표를 빠르게 만듭니다.
##'
##' `table` 및 `prop.table`의 래퍼로, 기본적으로 여백 레이블이 NULL로 설정되고
##'     셀은 소수점 이하 1자리에서 백분율로 반올림됩니다.
##' @title 비율(백분율)의 양방향 표를 빠르게 만들기
##' @param x 행 변수
##' @param y 열 변수
##' @param margin `prop.table`을 참조하십시오. 기본값은 결합 분포(모든 셀의 합계는 100),
##'     행 여백의 경우 1(행 합계는 1), 열 여백의 경우 2(열 합계는 1)입니다.
##' @param digs 백분율을 반올림할 자릿수입니다. 기본값은 1입니다.
##' @param dnn `table`을 참조하십시오. 결과의 차원에 지정할 이름(dimnames 이름)입니다.
##'     기본값은 없음의 경우 NULL입니다.
##' @param ... `table`에 전달할 기타 인수입니다.
##' @return 백분율 값의 분할표입니다.
##' @author Kieran Healy
##' @examples
##'
##' with(gss_sm, tw_tab(bigregion, religion, useNA = "ifany", digs = 1))
##'
##' with(gss_sm, tw_tab(bigregion, religion, margin = 2, useNA =
##'     "ifany", digs = 1))
##'
##' @export
tw_tab <- function(x, y, margin = NULL, digs = 1, dnn = NULL, ...) {
    out <- round(prop.table(table(x, y, ...), margin = margin)*100, digits = digs)
    out
}

##' 데이터 프레임 또는 tibble의 숫자 열을 반올림합니다.
##'
##' 데이터 프레임 또는 tibble을 입력으로 받아 숫자 열을 지정된 자릿수로 반올림합니다.
##' @title round_df
##' @param data 데이터 프레임 또는 tibble
##' @param dig 반올림할 자릿수
##' @return `data`와 동일한 클래스의 객체로, 숫자 열이 `dig`로 반올림됩니다.
##' @examples
##' head(round_df(iris, 0))
##' @author Kieran Healy
##' @export
round_df <- function(data, dig=2) {
    obj_class <- class(data)
    tibs <- c("grouped_df", "tbl_df", "tbl")
    all.c <- c("data.frame", tibs)

    ## `data`가 유효한 클래스입니까?
    right.class <- any(obj_class %in% all.c)
    if(!right.class) return(message("객체가 데이터 프레임 또는 tibble이 아닙니다."))

    ## `data`가 tibble 또는 df입니까?
    is.tib <- any(obj_class %in% tibs)
    if(is.tib) {
        cl <- "tbl"
    } else {
        cl <- "df"
    }

    ## 사용할 함수 선택
    f.list <- list(df = data.frame, tbl = tibble::as_tibble)
    fx <- get(cl, f.list)

    fx(lapply(data, function(y) if(is.numeric(y)) round(y, dig) else y))
}

##' 데이터 프레임 또는 tibble의 숫자 열을 스케일링 및/또는 중앙 정렬합니다.
##'
##' 데이터 프레임 또는 tibble을 입력으로 받아 숫자 열을 스케일링 및/또는 중앙 정렬합니다.
##'     기본적으로 중앙 정렬하지만 스케일링하지는 않습니다.
##' @title center_df
##' @param data 데이터 프레임 또는 tibble
##' @param sc 변수 스케일링 (기본값 FALSE)
##' @param cen 변수를 평균으로 중앙 정렬 (기본값 TRUE)
##' @return `data`와 동일한 클래스의 객체로, 요청에 따라 숫자 열이 스케일링되거나 중앙 정렬됩니다.
##' @author Kieran Healy
##' @examples
##' head(center_df(organdata))
##' @export
center_df <- function(data, sc = FALSE, cen = TRUE) {
    obj_class <- class(data)
    tibs <- c("grouped_df", "tbl_df", "tbl")
    all.c <- c("data.frame", tibs)

    ## `data`가 유효한 클래스입니까?
    right.class <- any(obj_class %in% all.c)
    if(!right.class) return(message("객체가 데이터 프레임 또는 tibble이 아닙니다."))

    ## `data`가 tibble 또는 df입니까?
    is.tib <- any(obj_class %in% tibs)
    if(is.tib) {
        cl <- "tbl"
    } else {
        cl <- "df"
    }

    ## 사용할 함수 선택
    f.list <- list(df = data.frame, tbl = tibble::as_tibble)
    fx <- get(cl, f.list)

    ind <- sapply(data, is.numeric)
    data[ind] <- lapply(data[ind], scale, scale=sc, center=cen)
    data <- fx(data)
    data
}

##' 문자 벡터의 시작 부분에서 일련의 문자를 제거합니다.
##'
##' 문자 벡터(일반적으로 요약되거나 정리된 모델 객체의 변수 이름 벡터)와
##'     문자 용어 벡터(일반적으로 R이 모델 용어를 만들 때 추가하는 더미 또는
##'     범주형 변수의 접두사)를 받아 후자를 전자에서 제거합니다.
##'     플롯의 변수 이름을 빠르게 정리하는 데 유용합니다.
##' @title prefix_strip
##' @param var_string 문자 벡터, 일반적으로 변수 이름
##' @param prefixes 문자 벡터, 일반적으로 변수 접두사
##' @param toTitle 결과를 제목 케이스로 변환합니까? 기본값은 TRUE입니다.
##' @param ... `gsub`에 대한 기타 인수
##' @return `var_name` 용어의 시작 부분에서 `prefixes` 용어가 제거된 문자 벡터입니다.
##' @author Kieran Healy
##' @examples
##' prefix_strip(iris$Species, c("set", "v"))
##' @export
prefix_strip <- function(var_string, prefixes, toTitle = TRUE, ...) {
    pre_terms <- paste0("^", prefixes, collapse = "|")
    new_labs <- gsub(pre_terms, "", var_string, ...)
    if(toTitle) tools::toTitleCase(new_labs) else new_labs
}


##' 문자 벡터의 시작 부분에서 일련의 문자(일반적으로 변수 이름)를 바꿉니다.
##'
##' 문자 벡터(일반적으로 요약되거나 정리된 모델 객체의 변수 이름 벡터)와
##'     문자 용어 벡터(일반적으로 R이 모델 용어를 만들 때 추가하는 더미 또는
##'     범주형 변수의 접두사)를 받아 후자를 전자에서 제거합니다.
##'     플롯의 변수 이름을 빠르게 정리하는 데 유용합니다.
##' @title prefix_replace
##' @param var_names 문자 벡터, 일반적으로 변수 이름
##' @param prefixes 문자 벡터, 일반적으로 변수 접두사
##' @param replacements `prefixes`에 대한 대체 문자 벡터로, 순서는 동일합니다.
##' @param toTitle 결과를 제목 케이스로 변환합니까? 기본값은 TRUE입니다.
##' @param ... `gsub`에 대한 기타 인수
##' @return `var_names`의 `prefixes` 용어가 `replacement` 용어의 내용으로 대체된 문자 벡터입니다.
##' @examples
##' prefix_replace(iris$Species, c("set", "ver", "vir"), c("sat",
##'     "ber", "bar"))
##' @author Kieran Healy
##' @export
prefix_replace <- function(var_names, prefixes, replacements, toTitle = TRUE, ...) {
    out <- var_names
    for (i in seq_along(prefixes)) {
    out <- gsub(prefixes[i], replacements[i], out, ...)
  }
  if(toTitle) tools::toTitleCase(out) else out
}

##' 강의 노트를 바탕 화면에 복사하고 확장합니다.
##'
##' socviz 라이브러리에서 강의 자료가 포함된 zip 파일을 바탕 화면으로 전송합니다.
##' @title setup_course_notes
##' @param folder 사용자 홈 내에 복사할 대상입니다. 사용자가 제공해야 합니다.
##' @param zipfile socviz 라이브러리에 있는 압축된 강의 자료 파일의 이름입니다.
##' @param packet 생성할 강의 패킷 폴더의 이름입니다.
##' @return `zipfile`이 `folder`에 복사되고 해당 내용이 `packet`이라는 디렉터리로 확장됩니다.
##' @author Kieran Healy
##' @examples
##' setup_course_notes()
##' @export
setup_course_notes <- function(folder, zipfile = "dataviz_course_notes.zip",
                               packet = "dataviz_course_notes") {
    if(missing(folder)) {
        message("노트의 대상을 지정해야 합니다(예: '~/Desktop').")
    } else {
        file_name <- zipfile
        lib_loc <- fs::path_package("socviz")

        origin_path <- fs::path(lib_loc, "resources", file_name)
        dest_path <- fs::path_expand(folder)

        if(fs::dir_exists(dest_path)) {

            fs::file_copy(origin_path, dest_path)

            dest_file <- fs::path(dest_path, file_name)
            fs::dir_create(dest_path, packet)
            dest_dir_name <- fs::path(dest_path)

            utils::unzip(dest_file, exdir = dest_dir_name)

            message(paste(file_name, "을(를)", dest_path, "에 복사하고", dest_dir_name, "으로 확장했습니다."))
        } else {
        message(paste("실패했습니다. 폴더", dest_path, "이(가) 존재하지 않아 노트를 복사할 수 없습니다."))}
        }
}
