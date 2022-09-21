jq_cdn_download <- function(version) {
  basenames <- paste0("jquery-", version, c(".min.js", ".min.map", ".js"))
  target <- file.path("inst", "lib", version)
  dir.create(target, recursive = TRUE)
  Map(
    basename = basenames,
    f = function(basename) {
      download.file(
        file.path("https://code.jquery.com", basename),
        file.path(target, basename)
      )
    }
  )

  # Add in source map location
  # Required given comments in https://blog.jquery.com/2014/01/24/jquery-1-11-and-2-1-released/
  jquery_min_js <- file.path(target, paste0("jquery-", version, ".min.js"))
  # Make sure the sourceMappingURL does not exist
  testthat::expect_false(
    any(grepl("^//# sourceMappingURL=", readLines(jquery_min_js))
  ))
  # Point to the version-less source map file
  cat(
    file = jquery_min_js,
    append = TRUE,
    paste0("//# sourceMappingURL=jquery-", version, ".min.map\n")
  )

}

unlink("inst/lib", recursive = TRUE)
jq_cdn_download("3.6.0")
jq_cdn_download("2.2.4")
jq_cdn_download("1.12.4")

download.file(
  "https://raw.githubusercontent.com/jquery/jquery/master/AUTHORS.txt",
  "inst/lib/AUTHORS.txt"
)

download.file(
  "https://raw.githubusercontent.com/jquery/jquery/master/LICENSE.txt",
  "inst/lib/LICENSE.txt"
)
