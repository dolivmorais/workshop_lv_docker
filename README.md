# workshop_lv_docker

Este repositório contém o projeto Workshop LV Docker, um ambiente configurado para desenvolvimento utilizando Python 3.12, Streamlit e gerenciado com Poetry. O projeto também conta com suporte para Docker, facilitando a execução em diferentes ambientes.

Requisitos

Certifique-se de ter instalado:

Python 3.12

Poetry

Docker

nstalação e Configuração

Clone o repositório e acesse o diretório do projeto:

git clone https://github.com/seu-usuario/workshop-lv-docker.git
cd workshop-lv-docker

Instale as dependências do projeto utilizando Poetry:

poetry install

Executando o Projeto

Para rodar o projeto localmente:

poetry run streamlit run app.py

Se preferir utilizar Docker, siga os passos abaixo:

Construindo a imagem Docker

docker build -t workshop-lv-docker .

Executando o container

docker run -p 8501:8501 workshop-lv-docker

O aplicativo estará acessível em http://localhost:8501.

Estrutura do Projeto

workshop-lv-docker/
├── Dockerfile
├── pyproject.toml
├── README.md
├── app.py
├── .gitignore

Autor

Desenvolvido por Diego Morais (dolivmorais@gmail.com).