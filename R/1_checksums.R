library(tools)
library(tidyverse)

fls <- list.files(file.path("data"), pattern = ".fastq.gz")

map(fls, function(i){
  md5sum(file.path( "data", i))
  }) %>%
  unlist %>%
  as.data.frame() %>%
  write.csv(file.path("data", "checksums_fasq.csv"))
