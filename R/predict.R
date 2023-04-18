
#' Classify penguin
#'
#' @param bill_length
#' @param flipper_length
#'
#' @return A string with the penguin's classification
#' @export
#'
#' @examples classify_penguin(10, 270)

classify_penguin <- function(bill_length, flipper_length) {
  if (flipper_length > 205) {
    return("Gentoo")
  } else {
    if (bill_length > 45) {
      return("Chinstrap")
    } else {
      return("Adelle")
    }
  }
}
