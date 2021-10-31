# Conhece-Recife

<p align="center">
<img src="./src/main/webapp/images/Conhece Recife Logo.png" width="50%" height="50%"/>
</p>


## Motivação 
O projeto Conhece Recife tem por objetivo fazer com que tanto turistas que desejam der uma experiência agradável durante seu tempo de visita à cidade, quanto os próprios recifenses que apesar de residirem nela conhecem pouco sobre a história e cultura local, despertem interesse e venham a conhecer os pontos turísticos da cidade e ainda ganhar descontos no comercio local durante sua visita.   
O sistema visa não só atrair pessoas para lugares de referência na Região Metropolitana de Recife como também ajudar o comércio local através de sistema de parceria gerando assim maior visibilidade para o local e despertando o interesse do público em visitá-lo.


## Alternativas para o sistema proposto
O sistema proposto terá como objetivo mostrar locais em Recife onde o usuário poderá saber se possui acessibilidade no local, visitá-lo, conhecer sua história e obter descontos em comércios ao redor. Tudo de maneira simples e rápida.
### Alternativa I
O sistema estará disponível na internet, onde poderá ser acessado de qualquer browser e o site deverá obedecer aos conceitos de responsividade, haja vista que o sistema deve oferecer praticidade para os usuários.
### Alternativa II
O sistema deve ser entregue em forma de aplicativo Mobile, visando praticidade e de forma que ocupe pouco espaço de armazenamento no dispositivo do usuário.

## Requisitos funcionais 

### *Cadastrar Parceiros*
Permitindo que o parceiro cadastre-se e informe os dados do seu estabelecimeto e quais os descontos que serão oferecidos. 
- Prioridade: Essencial.
- Entradas e Pré-condições:Não tem.
- Saídas e Pós-Condições: Um parceiro é cadastrado no sistema.
### *Cadastrar Pontos Turísticos*
Permitindo que o  cadastro dos pontos turísticos
- Prioridade: Essencial.
- Entradas e Pré-condições:Não tem.
- Saídas e Pós-Condições: Um ponto turístico é cadastrado no sistema.
### *Atualizar Pontos Turísticos*
Permite alterar os dados dos pontos turísticos já cadastrados 
- Prioridade: Essencial.
- Entradas e Pré-condições:Não tem.
- Saídas e Pós-Condições: Atualiza um ponto turístico
### *Atualizar um Parceiro*
Permite alterar os dados dos parceiros já cadastrados 
- Prioridade: Essencial.
- Entradas e Pré-condições:Não tem.
- Saídas e Pós-Condições: Atualiza  os dados de um parceiro

### *Excluir um Parceiro*
Permite excluir os dados dos parceiros já cadastrados 
- Prioridade: Essencial.
- Entradas e Pré-condições:Não tem.
- Saídas e Pós-Condições: Exclui os dados de um parceiro

### *Excluir Pontos Turísticos*
Permite excluir os pontos turísticos já cadastrados
- Prioridade: Essencial.
- Entradas e Pré-condições:Não tem.
- Saídas e Pós-Condições: Exclui os pontos turísticos. 


## Requisitos não funcionais

### [NF001] - Performance

O tempo de resposta das consultas não deve ser maior do que 4 segundos.
### [NF002] - Performance

O tempo de retorno da geração dos relatórios não pode ser maior do que 8 segundos.
### [NF003] - Segurança

É necessário autenticar o usuário por meio de login e senha
### [NF003] - Segurança

Os usuários terão acesso a um conjunto mínimo de funcionalidades, que compreendem as funções operacionais básicas.
### [NF003] - Segurança

O usuário administrador terá acesso a todas as funcionalidades do sistema

## Especificação de Requisitos

### Especificação do Sistema 
O objetivo do Conhece Recife consiste em guiar os usuários a encontrar uma rota limpa e mais rápida para os pontos turísticos da metrópole. Também informa se o destino possui acessibilidade para todos os públicos e se o comércio local dispõe de descontos para usuários do app. Tem como objetivo principal, mostrar um pouco da história de cada ponto turístico da cidade de forma segura, inclusa e eficaz. 
### Especificação dos requisitos de sistema
- **Rotas**: ao gerar uma rota, o sistema irá criar o percurso do ponto inicial até seu objetivo, de uma forma que tome menos tempo do usuário.
- **Acessibilidade**: ao pesquisar um local, será indicado no lado direito da tela o que ele fornece, por exemplo: Legendagem descritiva indicada para deficientes auditivos; acessibilidade para deficiente locomotor; narrações descritivas por voz de sons e elementos visual-chaves, ambiente para a prática de atividades físicas, alternativas para o público infantil e opções em libras.
- **Comércio**: quando o usuário pesquisar uma rota para um ponto histórico, será revelado no mapa se na redondeza há algum parceiro, obtendo assim descontos. 
- **Pontos turísticos**: ao abrir esta aba, será mostrado um pouco da história do local e sobre a acessibilidade do mesmo.

## Protótipos

### **Página Inicial**
Será possível conhecer um pouco da história recifense, conhecer os nossos parceiros, acessar também quem somos e entrar em contato.  

<p align="center">
<img src="./src/main/webapp/images/pagina inicial.png" width="80%" height="50%"/>
</p>

### **Contato**
Através da página Contato o usuário obtém atendimento. É necessário fornecer alguns dados como: nome, telefone, assunto, e-mail e a mensagem.

<p align="center">
<img src="./src/main/webapp/images/pagina contato.png" width="80%" height="50%"/>
</p>

### **Quem Somos**
Demonstra sobre nosso projeto e sobre a acessibilidade que nele é fornecido. 

<p align="center">
<img src="./src/main/webapp/images/pagina quem somos.png" width="80%" height="50%"/>
</p>

### **Parceiros**
Exibe todos os parceiros que apoiam o projeto. 

<p align="center">
<img src="./src/main/webapp/images/pagina parceiros.png" width="80%" height="50%"/>
</p>

### **Lugares**
Onde consta todas as informações do destino, como: acessibilidades, rotas e história do local.

<p align="center">
<img src="./src/main/webapp/images/pagina lugares.png" width="80%" height="50%"/>
</p>

### **Adminstrador Login**
Aba de login e senha, dos administradores; 

<p align="center">
<img src="./src/main/webapp/images/pagina adm.png" width="80%" height="50%"/>
</p>

### **Adminstrador**
Área de cadastro e listagem de lugares e parceiros.
Para processamento dos dados do projeto, onde temos nossas CRUDS: Create, Read, Update and Delete

<p align="center">
<img src="./src/main/webapp/images/pagina adm1.png" width="80%" height="50%"/>
</p>

### **Listagem de Lugares**
Funcão de listar, alterar e excluir lugares

<p align="center">
<img src="./src/main/webapp/images/pagina lugares listar.png" width="80%" height="50%"/>
</p>

### **Listagem de Parceiros**
Funcão de listar, alterar e excluir parceiros

<p align="center">
<img src="./src/main/webapp/images/pagina listar parceiros.png" width="80%" height="50%"/>
</p>

### **Cadastro de Lugares**
Cadastro de Lugares

<p align="center">
<img src="./src/main/webapp/images/pagina lugares cadastro.png" width="80%" height="50%"/>
</p>


### **Cadastro de Parceiros**
Funcão de cadastrar os parceiros.

<p align="center">
<img src="./src/main/webapp/images/pagina parceiros cadastro.png" width="80%" height="50%"/>
</p>


Equipe:
- *Anderson Oliveira Amorim*
- *Aline Pereira da Silva Vieira*
- *Ana Inês Ferreira Alves* 
- *Davi Guabiraba Tavares Santos* 
- *Eduardo Barbosa da Silva*
- *Ewerson Alves Correia*
- *Jefferson de Castro Monteiro Silva*
