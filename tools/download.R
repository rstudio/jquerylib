jq_cdn_download <- function(version) {
  basenames <- paste0("jquery-", version, c(".min.js", ".min.map", ".js"))
  target <- file.path("inst", "lib", version)
  dir.create(target, recursive = TRUE)
  download.file(
    file.path("https://code.jquery.com", basenames),
    file.path(target, basenames)
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
