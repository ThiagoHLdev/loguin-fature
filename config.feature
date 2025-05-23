
Funcionalidade: Configuração de produtos
  Como administrador da loja
  Quero configurar os dados dos produtos
  Para que eles fiquem atualizados no sistema

  Contexto:
    Dado que estou logado como administrador

  Esquema do Cenário: Atualizar informações do produto
    Quando acesso a página de configuração do produto "<produto>"
    E altero os campos "nome" para "<novo_nome>" e "preço" para "<novo_preco>"
    E salvo as alterações
    Então o sistema deve exibir a mensagem "Produto atualizado com sucesso"
    E os dados do produto "<produto>" devem ser atualizados no sistema

    Exemplos:
      | produto      | novo_nome       | novo_preco |
      | Camiseta A   | Camiseta Nova A | 59.90      |
      | Tênis B      | Tênis Modelo B  | 219.99     |

  Cenário: Desativar produto
    Quando acesso a página de configuração do produto "Mochila X"
    E marco o produto como inativo
    E salvo as alterações
    Então o sistema deve exibir a mensagem "Produto atualizado com sucesso"
    E o produto "Mochila X" deve estar desativado na loja
