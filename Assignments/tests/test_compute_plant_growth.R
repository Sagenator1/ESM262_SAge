test_that("compute_plant_growth_works",{
  
  # calculation test
  expect_equal(compute_plant_growth(sun = 1, water = 1), list(2.5,0.25))
  
  # test that a pot is necessary for a potted plant
  expect_equal(compute_plant_growth(sun = 1, water = 1, pot = 0), list(0, 0))
  
  # test that a potted plant must have sun and water to grow
  expect_equal(compute_plant_growth(sun = 0, water = 0), list(0,0))
  
 
  
})
