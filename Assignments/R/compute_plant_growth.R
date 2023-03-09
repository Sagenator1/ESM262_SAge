#' Growth of Plant over time
#' 
#' @param sun number of sun hours per week
#' @param water number of watering events per week
#' @param pot #what did we say pot referred to again? Note that it is not curently used in our function
#' 
#' function to calculate plant growth 
compute_plant_growth = function(sun, water, pot = 1){
  if(sun <0 ){
    stop("Number of sun hours cannot be less than 0")
  }
  
  if(water <0 ){
    stop("Number of watering events cannot be less than 0")
  }
  
  growth = 2*sun + 0.5*water
  leaves = 0.1*growth
  
  return(list(growth, leaves))
}
