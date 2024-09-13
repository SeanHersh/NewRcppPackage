library(testthat)

test_that("sort_cpp works correctly", {
  # Test empty vector
  expect_equal(sort_cpp(numeric(0)), numeric(0))

  # Normal case with sorting
  expect_equal(sort_cpp(c(3, 1, 4, 1, 5, 9)), c(1, 1, 3, 4, 5, 9))

  # All identical elements
  expect_equal(sort_cpp(c(5, 5, 5, 5)), c(5, 5, 5, 5))

  # Negative numbers and mixed values
  expect_equal(sort_cpp(c(-5, 3, -1, 2, 0)), c(-5, -1, 0, 2, 3))

  # Single element vector
  expect_equal(sort_cpp(c(7)), c(7))


  large_vector <- sort_cpp(rev(1:1000))
  expect_equal(large_vector, 1:1000)  # Should be sorted from 1 to 1000
})
