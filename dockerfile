# Usa a imagem oficial do Python
FROM python:3.12

# Instala o Poetry corretamente no ambiente global
RUN pip install --no-cache-dir poetry

# Define o diretório de trabalho
WORKDIR /src

# Copia apenas os arquivos do Poetry primeiro para otimizar cache
COPY pyproject.toml poetry.lock ./

# Instala as dependências sem tentar instalar o próprio projeto
RUN poetry install --no-root

# Agora copia o restante do código
COPY . .

# Expõe a porta do Streamlit
EXPOSE 8501

# Define o comando de entrada para rodar a aplicação
CMD ["poetry", "run", "streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]

