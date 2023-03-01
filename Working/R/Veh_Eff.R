# One of the equations used to compute automobile fuel efficiency is as follows this is the power required to keep a car moving at a given speed is as follows:
  
#  Pb = c_rol * m * g * V + 0.5 * A * p_air * c_drag * V^3
  
#' This function determines the power required to keep a vehicle moving at 
#' a given speed
#' @param c_drag coefficient due to drag default=0.3 
#' @param c_rol coefficient due to rolling/friction default=0.015
#' @param V vehicle speed (m/2)
#' @param m vehicle mass (kg)
#' @param A area of front of vehicle (m2)
#' @param g acceleration due to gravity (m/s) default=9.8
#' @param pair (kg/m3) default =1.2
#' @return power (W)

veh_eff = function (V, A, m, g = 9.8, p_air = 1.2, c_rol = 0.015, c_drag = 0.3) {
  # calculte
  Pb = c_rol * m * g * V + 0.5 * A * p_air * c_drag * V^3
return(Pb)
}
