``` r
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
#> Error in matrix(c(1:5, 3:7, 5:9, 7:11), nrow = 4, byrow = T) %>% print %>% : 没有"%>%"这个函数
```

<sup>Created on 2018-11-06 by the [reprex package](https://reprex.tidyverse.org) (v0.2.1)</sup>
