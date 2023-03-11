test_that(
  "compute_plant_growth_works", 
  {
    # expect_true((summary(water)["Max."]-summary(water)["Min."]) > 0)
    # if the plant never gets water for 7 days then both should be zero
    water_data = rep(0, times=7)
    expect_that(compute_plant_growth(water_data)$totalwater, equals(0))
    }
  )