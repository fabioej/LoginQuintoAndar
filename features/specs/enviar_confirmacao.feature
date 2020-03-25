#language: pt

Funcionalidade: Confirmação do numero do celular
    Após inserir corretamente os dados na tela para confirmação do número de telefone celular
    O usuario deve enviar um sms ou usar o whatsapp para receber um código de confirmação do login

    Contexto: Acessar pagina de envio de codigo de confirmação
        Dado que foi inserido o telefone corretamente na pagina de Confirmação do numero do celular
    
        Cenario: Verificar textos exibidos na pagina
            Quando estou na pagina para o envio do código de confirmação do login
            Então vejo a seguinte mensagem 
            """
            o Quintoandar.com.br usa o Account Kit, uma tecnologia do Facebook, para ajudar você a fazer login. 
            Não é necessária uma conta do Facebook. Um SMS ou uma confirmação de texto pode ser enviada para verificar seu número. 
            Podem ser aplicadas tarifas de dados ou de mensagem. Saiba como o Facebook usa suas informações
            """

        Cenario: Verificar conformidade do Layout da pagina
            Quando estou na pagina para o envio do código de confirmação do login
            Então verifico se a pagina contém uma faixa azul superior com o texto "Quintoandar.com.br" 
            E as dimensões da janela aberta estão em confirmidade, bem como os campos exibidos(textFields e botôes).

        Cenario: Usar SMS
            Dado que escolhi receber o codigo de confirmação via SMS
            Quando Clico em "Usar SMS"
            Então o sms deve ser recebido no celular do numero informado
            E é aberta uma proxima pagina para fornecer o codigo ao sistema, efetuando assim o login.

         Cenario: Usar Whatsapp
            Dado que escolhi receber o codigo de confirmação via Whatsapp
            Quando Clico em "Usar Whatsapp"
            Então uma mensagem deve ser recebida no whatsapp do numero informado
            E é aberta uma proxima pagina para fornecer o codigo ao sistema, efetuando assim o login.

        Cenario: Verificar conformidade do Layout da pagina de inserção do codigo recebido
            Quando estou na pagina para inserir o codigo recebido via SMS ou Whatsapp
            Então verifico se a pagina contém uma faixa azul superior com o texto "Quintoandar.com.br" 
            E as dimensões da janela aberta estão em confirmidade, bem como os campos exibidos(textFields e botôes). 

        Cenario: Verificar a funcionalidade do link "Eu nao recebi um código"
            Dado que estou na pagina para inserir o codigo recebido via SMS ou Whatsapp
            Quando clico em "Eu nao recebi um código"
            Entao deve ser exibidas as seguintes opções:
            | Verifique seu número de celular         |
            | Verifique sua caixa de entrada de SMS   |
            | Link para "inserir código"              |
            | Botão "Reenviar código SMS              |
            | Link para "Receber codigo via Facebook" |
            | Link para "Receber codigo pelo Whatsapp"|
            E testado e certificado manualmente que para cada opção o codigo é enviado.

        Cenario: Verificar Termos de uso
            Quando eu clico em "Termos de uso"
            Entao o link deve ser "https://www.quintoandar.com.br/termos#termos"
    
        Cenario: Política de Privacidade
            Quando eu clico em "Política de Privacidade"
            Entao o link deve ser "https://www.quintoandar.com.br/termos#privacidade"

        Cenario: Codigo invalido fornecido
            Quando o codigo de verificação invalido é fornecido pelo usuario
            Então deve ser exibida uma mensagem de erro

        Cenario: Codigo de verificação correto
            Quando  o codigo de verificação correto é fornecido pelo usuario
            Entao o login é efetuado com sucesso  





