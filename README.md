**carrosapi** é uma API REST de veículos, com todas as funcionalidades (CREATE, READ, UPDATE, DELETE). Feita para estudo.

Necessário:
* Ruby 3.0.0
* Rails 6.1.3

## Quick Setup:

Primeiramente, instale as gems do servidor:
```bash
bundle install
```
Faça o migrate dos models para o banco de dados:
```
rails db:migrate
```
Se desejar, pode criar algumas inserções padrão no banco:
```
rails db:seed
```
Por fim, inicialize o servidor:
```bash
rails s
```
Para conferir as rotas disponíveis, digite:
```bash
rails routes
```