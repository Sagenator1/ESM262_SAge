#' Growth of Plant over time
#' 
#' Compute the growth of a plant over time
#' @param sun number of sun hours per week
#' @param water number of watering events per week
#' @param pot size of pot (diameter in feet) the plant is growing in 
#' @return height of plant (in mm) and number of leaves 
#' 

compute_plant_growth = function(sun, water, pot = 1){
  
  #start with some error checking
  sun = ifelse((sun < 0 ), return("Sun cannot be less than 0"), sun)
  water = ifelse((water < 0), return("Water cannot be less than 0"), water)
  
  #if(sun < 0 ){
  #stop("Number of sun hours cannot be less than 0")
  #}
  
  #if(water < 0 ){
  # stop("Number of watering events cannot be less than 0")
  #}
  
  growth = 2*sun + 0.5*water
  leaves = 0.1*growth
  
  return(list(growth, leaves))
}
