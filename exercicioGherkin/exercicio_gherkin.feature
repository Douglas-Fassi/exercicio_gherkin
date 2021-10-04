            #language: pt

            Funcionalidade: Configurar Produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto conforme meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de escolha de produtos

            Cenário: Seleção de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu selecionar a cor "cor", o tamanho "tamanho" e quantidade de "quantidade" produtos
            E adicionar ao carrinho
            Então eu posso prossegir clicando no botão comprar

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando eu selecionar a quantidade de produtos
            E adicionar até 10 produtos
            Então posso adicionar os produtos ao carrinho

            Cenário: Quando eu clicar no botão "limpar" deve voltar ao estado original
            Quando eu quiser limpar os produtos escolhidos
            E clicar no botão "limpar"
            Então a página volta ao estado original

            Esquema do Cenário: Configurar múltiplos produtos
            Quando eu selecionar a <cor> e o <tamanho>
            E digitar a <quantidade> igual ou menor que 10
            Então aparecerá uma <mensagem> correspondente

            Exemplos:
            | cor       | tamanho | quantidade | mensagem               |
            | "Branco"  | "P"     | "10"       | "Adicione ao Carrinho" |
            | "Azul"    | "M"     | "1"        | "Adicione ao Carrinho" |
            | "Laranja" | "G"     | "5"        | "Adicione ao Carrinho" |
            | "Preto"   | "P"     | "11"       | "Quantidade inválida"  |



            Funcionalidade: Login na Plataforma

            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da plataforma EBAC-SHOP

            Esquema do Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso


            Exemplos:
            | usuario        | senha    | mensagem                     |
            | "Douglas_EBAC" | "7007"   | "Olá Douglas"                |
            | "Paola_F@EBAC" | "10@nos" | "Olá Paola"                  |
            | "João@fake"    | "01710"  | "usuario ou senha inválidos" |



            Funcionalidade: Tela de cadastro - Checkout

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de Checkout da plataforma EBAC-SHOP

            Esquema do Cenário: Validar cadastro
            Quando eu inserir <Dado obrigatorio> no campo com asterisco
            E inserir o <e-mail>
            Então deve exibir a <mensagem> correspondente

            Exemplos:

            | *Dado obrigatorio | e-mail                | mensagem                       |
            | "Douglas"         | "douglas@ebac.com.br" | "Cadastro salvo com sucesso"   |
            | "              "  | "douglas@ebac.com.br" | "Preencher *Dado obrigatório " |
            | "Douglas"         | "Doug@ebac.br"        | "ERRO! e-mail inválido"        |

            





