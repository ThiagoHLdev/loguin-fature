
Funcionalidade: Login do usuário
  Como usuário da loja
  Quero fazer login com minhas credenciais
  Para acessar minha conta e realizar compras

  Contexto:
    Dado que estou na página de login

  Esquema do Cenário: Login com credenciais válidas
    Quando preencho o campo "usuário" com "<usuario>"
    E preencho o campo "senha" com "<senha>"
    E clico no botão de login
    Então devo ver a mensagem "Login realizado com sucesso"
    E devo ser redirecionado para a página inicial

    Exemplos:
      | usuario        | senha      |
      | joao@email.com | 123456     |
      | ana@email.com  | senha123   |

  Cenário: Login com credenciais inválidas
    Quando preencho o campo "usuário" com "teste@email.com"
    E preencho o campo "senha" com "errada"
    E clico no botão de login
    Então devo ver a mensagem "Usuário ou senha inválidos"
