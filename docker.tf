provider "docker" {
  host = "ssh://samsul@35.226.189.61:22"
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
