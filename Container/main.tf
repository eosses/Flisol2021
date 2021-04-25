#Criação da Imagem
resource "docker_image" "image_id" {
  name = "pengbai/docker-supermario:latest"
}

# Inicia o Container
resource "docker_container" "container_id" {
  name  = "supermario"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "8080"
    external = "80"
  }
}
