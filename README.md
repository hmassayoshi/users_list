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

## This project, basing on clean architecture, has the following layers:
- lib
  - domain: with the application business logic
    - entities: business objects
    - use_cases: business logic
  - data: with the data access logic
    - repositories: domain repository implementation
    - data sources: API fetches (from https://jsonplaceholder.typicode.com/users)
    - models: data handling from API
  - presentation: with the user interface
    - controllers: UI state manager
    - pages: application screens
    - widgets: widget components
  - main: gathering all the layers

## This project uses the following packages
- Dio: Used for API calls using HTTP requests, a robust and easy tool for HTTP requests
- GetX: Used for state management and navigation through the app, a simple and efficient tool for state management
- Mockito: Used for mock the repository layer
- Build Runner: Used for generating mocked files

## How to execute
1. Clone the repo.
2. Execute `flutter pub get` for dependencies installation.
3. Execute `flutter run` to run the application.

## The last apk build can be found on res/apk
[medicina_direta_1.0](https://github.com/hmassayoshi/medicina_direta/blob/72a0bf79af7dae1e474fc766b5892d490f2ef80c/res/apk/app-release.apk)


