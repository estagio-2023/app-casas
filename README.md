<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/silva096/app-casas">
    <img src="imagens/logo/casas-high-resolution-logo.png" alt="Logo" width="180" height="150">
  </a>

<h3 align="center">Aplicação Casas</h3>

  <p align="center">
    Uma aplicação que permite listar a sua casa no mercado imobiliário.
    <br />
    <br />
    ·
    <a href="https://github.com/silva096/app-casas/issues">Reportar um Bug</a>
    ·
  </p>
</div>



<!-- Índice -->
<details>
  <summary>Índice</summary>
  <ol>
    <li>
      <a href="#about-the-project">Sobre o Projeto</a>
      <ul>
        <li><a href="#built-with">Tecnologias</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Como começar</a>
      <ul>
        <li><a href="#prerequisites">Prerequisitos</a></li>
        <li><a href="#installation">Instalação</a></li>
      </ul>
    </li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contact">Contactos</a></li>
  </ol>
</details>



<!-- SOBRE O PROJETO -->
## Sobre o Projeto

[![Product Name Screen Shot][product-screenshot]](#)

### Definições
- **Imóvel**: propriedade que é inserida por forma a ser anunciada na aplicação.

- **Vendedor**: pessoa da agência imobiliária que trata da burocracia e de mostrar a casa.

- **Cliente**: aquele que se regista na aplicação para posteriormente anunciar o seu imóvel.

- **Pedido de Visita**: quando um potêncial comprador submete os seus dados por forma a agendar uma visita ao imóvel.

- **Tipo de Imóvel**: o tipo de propriedade a ser anunciada.
(Garagem, Quarto, Moradia, Apartamento, Estúdio)

- **Cidades**: Lista de cidades de Portugal

- **Comodidades**: o tipo de extras que a propriedade tem.
(Lavandaria, Varanda, Piscina, Terraço, Arrecadação)

- **Tipologia**: número de assoalhadas de uma propriedade (se aplicável)
(T0, T1, T2, T3, T4, T5)

### Regras de Negócio
Os vendedores estão associados a um imóvel, por forma a ficarem responsáveis pelas visitas e burocracias, no caso de uma proposta para aquisição da propriedade.
Cada imóvel anunciado possui um vendedor associado.

Sempre que um cliente pretenda fazer uso da plataforma para anunciar a sua propriedade, deve registar-se.
Este deve providenciar todas as informações necessárias (Nome, Email, Palavra Passe).

No momento em que regista a propriedade para ser anunciada, o cliente deve indicar quais as comodidades que tem, o tipo de imóvel, a cidade onde pertence e a tipologia da mesma.

Sempre que um potencial comprador, queira visitar a casa, devemos registar as suas informações (nome, email)

### Tecnologias

* [![Angular][Angular.io]][Angular-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Base de Dados

[![Product Name Screen Shot][database-diagram]](#)

<!-- GETTING STARTED -->
## Pre Requisitos
<ul>
  <li>PostgreSQL</li>
  <li>Git</li>
  <li>Visual Studio Code</li>
</ul>
Para esse projeto, será necessário seguir os passos abaixo:

### Download e Instalação do PostgreSQL

  <ol>
    <li>Faça o download do PostgreSQL através do link <a href="https://www.postgresql.org/download/">https://www.postgresql.org/download/</a> de acordo com seu sistema operacional</li>
    <li>Defina um password para o superuser da database. Podes usar "postgres", por exemplo, e deixar todas as opções como default. </br> <img src="imagens/instructions/password pgsql.jpg" alt="password screenshot"></li>
    <li>Para começar a utilizar o programa, procure por pgAdmin4 e execute.</li>
    
  </ol>

### Fazer download do Git 

<ol>
    <li>Acesse o link <a href="http://git-scm.com/download/win">http://git-scm.com/download/win </a> e faça o download do git para Windows. O download inciará automaticamente. </li>
    <li>Quando o git estiver instalado no seu pc, será possível realizar mudanças e controle de versões do projeto no repositório do GitHub, assim como fazer commits e criar branches. </li>  
  </ol>



<!-- ROADMAP -->
## Roadmap

- [ ] Base de Dados
    - [X] Desenho do Modelo de Dados | Diagrama
    - [ ] Desenvolvimento do Código para Criar a BD
    - [ ] Documentação
- [ ] Back-End
- [ ] Front-End

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACTOS -->
## Contactos

Your Name - email@email_client.com

Project Link: [https://github.com/silva096/app-casas](https://github.com/silva096/app-casas)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[database-diagram]: BaseDados/DB_Diagrama_03.png
[product-screenshot]: imagens/product_demo.png
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
