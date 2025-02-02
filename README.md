# medicina_direta

A simple user list

## Getting Started

This project is a starting point for a Flutter application.

This project should take in mind with the following points:

Descrição do Projeto
A aplicação será uma lista de usuários, com funcionalidade de detalhes do usuário e refresh manual dos dados.

A aplicação deve:
1.	Listar usuários com nome, e-mail e avatar.
2.	Exibir detalhes do usuário ao clicar em um item da lista.
3.	Atualizar os dados ao puxar para baixo (pull-to-refresh).

Instruções
1.	Estruture o código nas camadas especificadas e organize as pastas conforme a Clean Architecture.
2.	Utilize testes unitários para a camada Domain, testando os métodos do repositório.
3.	Documente o código e explique brevemente cada camada no README do projeto.
4.	Inclua comentários explicando as principais decisões arquiteturais.
 

Critérios de Avaliação
  -	Estrutura do código e divisão em camadas.
  -	Uso correto do padrão Repository.
  -	Uso do Dio e GetX.
  -	Organização dos pacotes e clareza do código.
  -	Cobertura de testes unitários na camada Domain.
  -	Documentação e explicação das escolhas.

This project, basing on clean architecture, has the following layers:

- data
  - api_source: using 'https://randomuser.me/api/?results=10' for data resource
  - model
  - repository: using a user_repository and its implementation 
- domain
  - entity
    - user
- presentation [TODO]


A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
