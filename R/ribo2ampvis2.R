#' Convert Ribotagger data to ampvis2 data input file
#'
#' @param file The RIbotagger output file you want to convert
#'
#' @return
#' @export
#'
#' @examples

ribo2ampvis <- function(file) {
  data_3 <- read.csv(file)
  data_2 <- data_3[,-1]

  data <- data_2 %>%
  mutate_if(is.integer,as.numeric) %>%
  mutate_if(is.numeric, ~replace_na(., 0)) %>%
  rename_with(~ sub("^.", "", .), starts_with("X"))

}

