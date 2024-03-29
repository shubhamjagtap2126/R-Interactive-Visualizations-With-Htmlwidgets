library("tidyverse")
library("DT")
library("stringr")

transport_data <- read_csv("data/transport_data.csv")

pretty_headers <- gsub("[.]", " ", colnames(transport_data)) %>%
  str_to_title()

transport_data %>%
  datatable(
    rownames = FALSE,
    colnames = pretty_headers,
    filter = list(position = "top"),
    options = list(language = list(sSearch = "Filter:"))
  )