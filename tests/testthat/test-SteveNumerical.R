test_that("outlier_counter_checker", {
  expect_equal('Not Numeric', as.character(outlier_counter(iris)[5]))
  expect_true("character" == class(outlier_counter(iris)))
  expect_equal(0, as.integer(outlier_counter(iris)[4]))
  expect_error(outlier_counter("ABC"))
})
