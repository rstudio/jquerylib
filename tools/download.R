jq_cdn_download <- function(version, minified = TRUE) {
  basename <- paste0("jquery-", version, if (minified) ".min.js" else ".js")
  download.file(
    file.path("https://code.jquery.com", basename),
    file.path("inst", "lib", basename)
  )
}

jq_cdn_download("3.4.1", TRUE)
jq_cdn_download("3.4.1", FALSE)
jq_cdn_download("2.2.4", TRUE)
jq_cdn_download("2.2.4", FALSE)
jq_cdn_download("1.12.4", TRUE)
jq_cdn_download("1.12.4", FALSE)

download.file(
  "https://raw.githubusercontent.com/jquery/jquery/master/AUTHORS.txt",
  "inst/lib/AUTHORS.txt"
)

download.file(
  "https://raw.githubusercontent.com/jquery/jquery/master/LICENSE.txt",
  "inst/lib/LICENSE.txt"
)
