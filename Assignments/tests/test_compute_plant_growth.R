test_that("compute_plant_growth_works",{
  
  # calculation test
  expect_equal(compute_plant_growth(sun = 1, water = 1), list(2.6,0.26))
  
  # test that pot can make plat grow alone - funny
  expect_equal(compute_plant_growth(sun = 0, water = 0), list(0.1, 0.01))
  
  # test that pot is accounted for
  expect_equal(compute_plant_growth(sun = 0, water = 0), list(0,0))
  
})