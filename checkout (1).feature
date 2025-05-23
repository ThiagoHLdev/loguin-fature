
Funcionalidade: Finalização de compra (checkout)
  Como cliente logado
  Quero finalizar a compra dos produtos no carrinho
  Para receber meus produtos em casa

  Contexto:
    Dado que tenho produtos no carrinho
    E estou logado na minha conta

  Cenário: Finalizar pedido com sucesso
    Quando acesso a página de checkout
    E preencho meus dados de entrega
    E escolho a forma de pagamento "Cartão de Crédito"
    E confirmo o pedido
    Então devo ver a mensagem "Pedido confirmado com sucesso"
    E devo receber um e-mail de confirmação

  Cenário: Tentar finalizar pedido sem dados de entrega
    Quando acesso a página de checkout
    E não preencho os dados de entrega
    E tento confirmar o pedido
    Então devo ver a mensagem "Por favor, preencha os dados de entrega"
