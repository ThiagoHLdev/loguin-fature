Feature: Login no sistema

  Scenario: Login com credenciais válidas
    Given que o usuário está na página de login
    When ele insere um email válido "usuario@teste.com"
    And insere a senha correta "senha123"
    And clica no botão de login
    Then ele deve ser redirecionado para a página inicial

  Scenario Outline: Tentativa de login com credenciais inválidas
    Given que o usuário está na página de login
    When ele insere o email "<email>"
    And insere a senha "<senha>"
    And clica no botão de login
    Then ele deve ver a mensagem "<mensagem>"

    Examples:
      | email               | senha       | mensagem                         |
      | usuario@teste.com   | senhaerrada | Senha incorreta                 |
      | emailinvalido.com   | senha123    | Email inválido                   |
      | usuario@teste.com   |             | Campo senha é obrigatório       |


Feature: Checkout de compra

  Scenario: Finalizar compra com sucesso
    Given que o usuário adicionou itens ao carrinho
    And acessou a página de checkout
    When ele preenche os dados de pagamento
    And confirma a compra
    Then ele deve ver a mensagem "Compra realizada com sucesso"

  Scenario: Tentativa de checkout sem itens no carrinho
    Given que o usuário acessou a página de checkout
    When ele tenta finalizar a compra sem itens
    Then ele deve ver a mensagem "Seu carrinho está vazio"


Feature: Configuração de perfil

  Scenario: Atualizar informações do usuário com sucesso
    Given que o usuário está na página de configurações
    When ele altera o nome para "Novo Nome"
    And salva as alterações
    Then ele deve ver a mensagem "Dados atualizados com sucesso"

  Scenario: Tentar salvar configurações sem preencher campos obrigatórios
    Given que o usuário está na página de configurações
    When ele apaga o nome e tenta salvar
    Then ele deve ver a mensagem "Campo nome é obrigatório"
