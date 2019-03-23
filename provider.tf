provider "google" {
  credentials = "${file("api-credentials.json")}"
  project     = "nth-setup-235219"
  region      = "us-central1"
}
