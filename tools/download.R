jq_cdn_download <- function(version) {
  basenames <- paste0("jquery-", version, c(".min.js", ".min.map", ".js"))
  download.file(
    file.path("https://code.jquery.com", basenames),
    file.path("inst", "lib", basenames)
  )
}

jq_cdn_download("3.5.1")
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
