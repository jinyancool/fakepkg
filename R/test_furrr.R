#' @export

test_furrr <- function(){
  intervals <- seq(1,60)
  oplan <- plan(multisession, workers = 60)
  on.exit(plan(oplan), add = TRUE)
  future_walk(intervals, ~ run_fun(.x))
}
#' @export
run_fun <- function(s){
  message(s)
  demo("mandelbrot", package = "future", ask = FALSE)
}
