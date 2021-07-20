provider "google" {
  credentials = "${file("avid-system-318007-175d86e3c6af.json")}"
  project     = "avid-system-318007"
  region      = "us-central1"
}