test_that("compute_plant_growth_works",{
  
  expect_true(compute_plant_growth(sun, water)[[1]] > 0) 
  expect_true(length(compute_plant_growth(sun,water))==2)
})