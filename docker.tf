provider "docker" {
  host = "tcp://127.0.0.1:2376/"
}

resource "docker_container" "nginx_app" {
  name  = "aplikasi"
  image = docker_image.nginx_app.latest
  ports {
    internal = "80"
    external = "80"
    protocol = "tcp"
  }
}

resource "docker_image" "nginx_app" {
  name = "nginx"
}
