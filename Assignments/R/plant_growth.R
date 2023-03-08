#' Growth of Plant over time
#' 
#' @param sun
#' @param water
#' 
#' 
plant_growth = function(sun, water){
  growth = 2*sun + 0.5*water
  leaves = 0.1*growth
  return(list(growth, leaves))
}
