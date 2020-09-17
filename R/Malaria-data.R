
#' Malaria
#'
#' Results of a small Malaria vaccine trial in which 14 subjects were given a
#' new vaccine (PfSPZ) and 6 were given a placebo. After 19 weeks, both groups
#' were exposed to a
#' drug-sensitive malaria virus strain (allowing any infections
#' to be treated effectively).
#'
#' @rdname Malaria
#' @docType data
#' @name Malaria
#' @usage data(Malaria)
#' @format
#'
#' @details
#' The two variables are
#'
#' * `group` -- A factor with levels Treatment and Placebo
#' * `malaria` -- A factor with levels Yes and No, indicating whether the subject
#' exhibited malaria symptoms
#'
#' In `Malaria2` these are abbreviated to a single letter.
#'
#' @source <https://www.nih.gov/news-events/news-releases/experimental-pfspz-malaria-vaccine-provides-durable-protection-against-multiple-strains-nih-clinical-trial>
#' @examples
#' require(mosaic)
#' Malaria %>%
#'   dplyr::group_by(group, malaria, .drop = FALSE) %>%
#'   dplyr::tally()
#'
#' tally(malaria ~ group, data = Malaria)
#' MalariaSims <- do(1000) * diffprop(malaria ~ shuffle(group), data = Malaria)
#' MalariaSims %>%
#'   gf_histogram(~diffprop)
"Malaria"

#' @rdname Malaria
#' @docType data
#' @name Malaria2
#' @usage data(Malaria2)
#' @examples
#'
#' mosaic::tally(malaria ~ group, data = Malaria2)
"Malaria2"
