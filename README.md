<h1 align="center">Kafka Connect</h1>

Descrição
=================
<p align="center">Exemplo de disponibilização da infra estrutura e criação de um componente utilizando Kafka Connect</p>

<p align="center">
  <img alt="GitHub branch checks state" src="https://img.shields.io/github/checks-status/deyviddfs/kafka-connect/main">
  <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/deyviddfs/kafka-connect">
  <img alt="GitHub contributors" src="https://img.shields.io/github/contributors/deyviddfs/kafka-connect">
  <img alt="Twitter URL" src="https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Ftwitter.com%2Fdeyviddfs">
</p>

Índice
=================
<!--ts-->
- [Descrição](#descrição)
- [Índice](#índice)
- [Como Usar](#como-usar)
- [Testes](#testes)
- [Status](#status)
<!--te-->


Como Usar
=================

#Pré Requesitos
* Docker instalado

#Subindo Aplicação
* Clonar repositório
* Navegar até a pasta do arquivo docker-compose.yml
* Rodar comando <b>docker-compose up -d</b>
* Validar se foi tudo criado e está UP com o comando <b>docker-compose ps</b>
* Acessar a url http://localhost:19000/ para abrir o Kafka Drop e listar os tópicos criados no Kafka
* Acessar a url http://localhost:8001/ para abrir o Kafka Connect UI e listar ou configurar um connector
* Ambiente pronto para os testes



Testes
=================
* Criar um novo connector para processar um arquivo, tranformar em Json e produzir mensagem no Kafka utilizando a aplicação http://localhost:8001/
	<p>
		Clicar no botão "new" e escolher o connector<br/>
    	<img src="docs/01-connector.PNG"/><br/>
    	Copiar o conteúdo do arquivo <b>file-pulse-source-connector.txt</b> e criar o connector<br/>
    	<img src="docs/02-connector-create.PNG"/><br/>
    	Aguardar até ficar running<br/>
    	<img src="docs/01-connector.PNG"/>
    </p>


* Copiar o arquivo FilePulseExample.txt para dentro do container do Connect com o comando
    <p>
        docker cp FilePulseExample.txt connect://home/appuser/tmp/files/directory/FilePulseExample1.txt
    </p>

* Resultado esperado
    <p>
		Acessar a aplicação http://localhost:19000/, navegar até o tópico onde as mensagens foram produzidas<br/>
    	<img src="docs/04-KafkaDrop.PNG"/><br/>
    	Verificar se o connect produziu uma mensagem para cada linha do arquivo<br/>
    	<img src="docs/05-ConnectOutput.PNG"/><br/>
    </p>

Status
=================
<h4 align="center"> 
	🚧  kafka - Em construção...  🚧
</h4>
