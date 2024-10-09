# Fishing function

# This function takes a vector of fishing data and calculates the most common species, rarest species
# and the total number of species,

#' @param species is a vector of species
#' @return list with the following items
#' \describe{
#' \item{most_commom_species}{Name of the most common species}
#' \item{rerest_species}{Name of the rarest species}
#' \item{total_species}{Total number of species}
#' }


diversity = function(species) {
  
  # converts vector of species to a factor
  species_fac = as.factor(species)
  
  # calculate most common species
  most_common_species = names(which.max(summary(species_fac)))
  
  # calculate rarest species
  rarest_species = names(which.min(summary(species_fac)))
  
  # calculate total number of species
  total_species = length(summary(species_fac))
  
  # specify outputs
  return(list(most_common_species, rarest_species, total_species))
}
