# Cork oak height growth model
# Authors: Mariola Sánchez-González, Margarida Tomé, Gregorio Montero
# Source: https://hal.archives-ouvertes.fr/hal-00883925/document

# height_t2: oak height at time 2 (meters)
# height_t1: oak height at time 1 (meters)
# t1: tree age at time 1, (years)
# t2: tree age at time 2 (years)

#' Estimate cork oak growth
#' 
#' this is a function from this paper which calculate the tree height for cork oaks given some initial age and height
#'
#' @param height_t1 This is the tree height at the starting year
#' @param t1 A number indicating the starting year. Try to indicate the class of the parameter
#' @param t2 This is the ending year
#'
#' @return
#' @export
#'
#' @examples
height_t2 <- function(height_t1, t1, t2) {
  20.7216 / (1 - (1 - 20.7216 / height_t1) * (t1 / t2) ^ 1.4486)
}
