StudyXp-Coach - O RPG da Vida Real para Estudantes
Este repositório contém o código-fonte completo para o backend (Java/Spring Boot) e frontend (Flutter) do aplicativo StudyXp-Coach.

Visão Geral
StudyXp-Coach é um aplicativo multiplataforma que gamifica a rotina de estudos e tarefas, transformando o progresso acadêmico e pessoal em uma jornada de RPG.

Tecnologias Utilizadas
Backend: Java 17, Spring Boot, Spring Security, Spring Data JPA, Maven

Frontend: Flutter, Provider

Banco de Dados: MySQL 8.0

Containerização: Docker, Docker Compose

Pré-requisitos
Antes de começar, garanta que você tenha as seguintes ferramentas instaladas em sua máquina:

Java JDK 17+

Apache Maven

Docker e Docker Compose

Flutter SDK (versão estável mais recente)

Um editor de código de sua preferência (VS Code, IntelliJ IDEA, etc.)

Como Rodar o Projeto Completo
Siga estes passos para ter o ambiente completo (backend e frontend) rodando localmente.

1. Configurar e Rodar o Backend e o Banco de Dados
O backend e o banco de dados são orquestrados com Docker Compose, o que simplifica muito o processo.

Navegue até a raiz do projeto onde o arquivo docker-compose.yml está localizado.

Execute o Docker Compose:
Abra um terminal e execute o seguinte comando:

docker-compose up --build

O comando --build garante que a imagem Docker para a aplicação Spring Boot será construída a partir do Dockerfile na primeira vez que você rodar, ou caso haja alguma alteração no código do backend.

Este comando irá:

Baixar a imagem do MySQL.

Criar e iniciar um contêiner para o banco de dados.

Construir a imagem da sua aplicação Spring Boot.

Criar e iniciar um contêiner para o backend.

Verificação:
Após alguns instantes, você verá os logs de ambos os serviços no seu terminal. A API do backend estará disponível em http://localhost:8080.

2. Configurar e Rodar o Frontend (Flutter)
Navegue até a pasta do frontend:

cd frontend

Instale as dependências do Flutter:

flutter pub get

Ajuste a URL da API (se necessário):

Abra o arquivo frontend/lib/providers/auth_provider.dart.

A constante API_URL está definida como http://localhost:8080/api.

Esta URL funciona perfeitamente para Web, Windows, macOS e Linux.

Atenção: Se você for rodar no emulador do Android, troque a URL para http://10.0.2.2:8080/api, pois localhost dentro do emulador refere-se ao próprio dispositivo virtual.

Execute o aplicativo Flutter:
Selecione o dispositivo desejado (Chrome para Web, um emulador mobile, ou seu desktop) e execute:

flutter run

Pronto! Agora você tem o ambiente completo funcionando. O aplicativo Flutter se conectará à API Java que está rodando no contêiner Docker.
