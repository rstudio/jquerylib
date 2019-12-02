context("jquery")

test_that("jquery_core(3) can be rendered", {
  script <- htmltools::renderDependencies(jquery_core(3, minified = TRUE), "file")
  expect_equal(
    as.character(script),
    '<script src="lib/jquery-3.4.1.min.js"></script>'
  )
})

test_that("jquery_core(2) can be rendered", {
  script <- htmltools::renderDependencies(jquery_core(2, minified = FALSE), "file")
  expect_equal(
    as.character(script),
    '<script src="lib/jquery-2.2.4.js"></script>'
  )
})


test_that("jquery_core(2) can be rendered", {
  script <- htmltools::renderDependencies(jquery_core(1, minified = TRUE), "file")
  expect_equal(
    as.character(script),
    '<script src="lib/jquery-1.12.4.min.js"></script>'
  )
})
