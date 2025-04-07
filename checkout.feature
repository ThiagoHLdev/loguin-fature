Feature: Checkout de compra

  Scenario: Finalizar compra com sucesso
    Dado que o usuário adicionou um produto ao carrinho
    Quando acessar a página de checkout, preencher os dados de pagamento e clicar no botão de finalizar compra
    Então ele deve ver a mensagem "Compra finalizada com sucesso"

  Scenario: Finalizar compra com carrinho vazio
    Dado que o carrinho está vazio
    Quando tentar acessar a página de checkout
    Então ele deve ver a mensagem "Seu carrinho está vazio"
