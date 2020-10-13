
#' Chris Wild Bootstrapping Example
#'
#' This small data set is used in a video by Chris Wild to introduce the bootstrap.
#'
#' @rdname WildSample
#' @docType data
#' @name WildSample
#' @usage data(WildSample)
#' @format
#'
#' @details
#' The variables are
#'
#' * `name` -- the subject's name
#' * `sex` -- M or F
#' * `age` -- the subject's age
#' * `BPSysAve` -- the subject's average systolic blood pressure.
#'
#' In `Malaria2` these are abbreviated to a single letter.
#'
#' @source <https://www.youtube.com/watch?v=iN-77YVqLDw&ab_channel=WildAboutStatistics>
#' @examples
#' require(mosaic)
#' resample(WildSample)
"WildSample"

