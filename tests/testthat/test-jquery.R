test_that("jquery_core(3) can be rendered", {
  script <- htmltools::renderDependencies(list(jquery_core(3, minified = TRUE)), "file")
  expect_snapshot(as.character(script))
})

test_that("jquery_core(2) can be rendered", {
  script <- htmltools::renderDependencies(list(jquery_core(2, minified = FALSE)), "file")
  expect_snapshot(as.character(script))
})

test_that("jquery_core(1) can be rendered", {
  script <- htmltools::renderDependencies(list(jquery_core(1, minified = TRUE)), "file")
  expect_snapshot(as.character(script))
})
