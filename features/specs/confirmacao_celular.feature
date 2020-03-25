#language: pt

Funcionalidade: Confirmação do numero do celular
    Para que o usuario possa logar no sistema do quinto andar
    Ele deve acessar o site (www.quintoandar.com.br) e clicar no canto superior direito em Entrar
    Com isso, é exibida a tela para confirmação do número de telefone celular.

Contexto: Acessar pagina de confirmação do numero do celular
    Dado que o acesso o site do quinto andar e clico em Entrar

    Cenario: Verificar textos exibidos na pagina
        Então vejo a seguinte mensagem "Qual o número do seu celular?"
        E vejo a seguinte mensagem "Vamos te enviar um código de acesso. Seus dados estarão seguros e você não precisa memorizar senha."
    
    Cenario: Verificar Termos de uso
        Quando eu clico em "Termos de uso"
        Entao o link deve ser "https://www.quintoandar.com.br/termos#termos"
    
    Cenario: Política de Privacidade
        Quando eu clico em "Política de Privacidade"
        Entao o link deve ser "https://www.quintoandar.com.br/termos#privacidade"
    
    #FORNECENDO O NUMERO DO CELULAR DO USUARIO
    Cenario: Confirmar sem fornecer numero do celular
        Quando clico no botão "Confirmar"
        Entao vejo a seguinte mensagem "Insira um número de telefone válido"
        
    Cenario: Confirmar inserindo numero de celular com padrao invalido
        Dado que os numeros de area e do celular fornecidos são:
            | cod_area | numero    |
            | 1        | 983874019 |
            | 19       | 9838740   |
            | 99       | 122       |
            | aa       | 983874019 |
            | 19       | a9838c40d |
        Entao clico em "Confirmar" e vejo a seguinte mensagem "Insira um número de telefone válido"

       