Feature: Login no sistema

  Scenario: Login com credenciais válidas
    Dado que o usuário está na página de login
    Quando inserir o email "usuario@teste.com", a senha "senha123" e clicar no botão de login
    Então ele deve ser redirecionado para a página inicial

  Scenario Outline: Tentativa de login com credenciais inválidas
    Dado que o usuário está na página de login
    Quando inserir o email "<email>", a senha "<senha>" e clicar no botão de login
    Então ele deve ver a mensagem "<mensagem>"

    Exemplos:
      | email              | senha       | mensagem                        |
      | usuario@teste.com  | senhaerrada | Senha incorreta                 |
      | emailinvalido.com  | senha123    | Email inválido                  |
      | usuario@teste.com  |             | Campo senha é obrigatório       |
