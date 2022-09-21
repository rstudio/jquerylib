test_that("sourcemap comments are found", {

  expect_sourcemap <- function(version) {
    dep <- jquery_core(version, minified = TRUE)

    dep_file <- file.path(
      htmltools::resolveDependencies(dep)[[1]]$src$file,
      dep$script
    )

    expect_true(file.exists(dep_file))

    sourcemap_line <- paste0(
      "//# sourceMappingURL=jquery-", expand_version(version), ".min.map"
    )

    expect_equal(tail(readLines(dep_file), 1), sourcemap_line)
  }

  expect_sourcemap(1)
  expect_sourcemap(2)
  expect_sourcemap(3)
})
