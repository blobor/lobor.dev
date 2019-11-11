provider "google" {
  credentials = "${file("key.json")}"
  project = "lobor-dev-255818"
  region = "europe-west3"
  zone = "europe-west3-c"
}

resource "google_storage_bucket" "default" {
  name     = "www.lobor.dev"
  location = "EU"
  storage_class = "MULTI_REGIONAL"
  bucket_policy_only = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}
