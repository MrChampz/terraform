resource "local_file" "exemplo" {
  filename = "exemplo.txt"
  content = var.conteudo
}

variable "conteudo" {
  type = string
  default = "Conteudo conteudo"
  description = "Valor do conteudo"
}

data "local_file" "conteudo-exemplo" {
  filename = "exemplo.txt"
}

output "data-source-result" {
  value = data.local_file.conteudo-exemplo.content
}

output "id-do-arquivo" {
  value = resource.local_file.exemplo.id
}

output "conteudo" {
  value = var.conteudo
}

output "egg-chicken" {
  value = sort(["🥚", "🐥"])
}