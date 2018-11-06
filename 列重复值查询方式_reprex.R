#' ---
#' output:
#'   md_document:
#'     pandoc_args: [
#'       '-f', 'markdown-implicit_figures',
#'       '-t', 'commonmark',
#'       --wrap=preserve
#'     ]
#' ---



#+ reprex-setup, include = FALSE
options(tidyverse.quiet = TRUE)
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", error = TRUE)
knitr::opts_knit$set(upload.fun = knitr::imgur_upload)

#+ reprex-body
matrix(
    c(
        1:5
        ,3:7
        ,5:9
        ,7:11
    )
    ,nrow = 4
    ,byrow = T
) %>% 
    print %>% 
    as.data.table() %>% 
    gather %>% 
    group_by(value) %>% 
    add_count() %>% 
    dplyr::filter(n>1) %>% 
    group_by(value) %>% 
    summarise(n = mean(n)
              ,text = str_flatten(key,collapse = ', '))



#' <sup>Created on `r Sys.Date()` by the [reprex package](https://reprex.tidyverse.org) (v`r utils::packageVersion("reprex")`)</sup>


