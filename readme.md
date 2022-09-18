# Sobre o projecto
O principal objectivo deste projeto e explicar sobre a conexão ao banco de dados com Robot e realizar algumas manipulações de dados de uma forma simples

# Isenção de responsabilidade
A solução foi testada com o sistema operativo Windows 10 e a base de dados Microsoft SQL. Além disso, um teste com MySQL funcionou bem, basta utilizar o driver pymysql em vez do pyodbc (substitui-lo em ficheiro requirements.txt e em Config\config.robot). Para outros motores de SO e base de dados, poderão ser necessários alguns ajustes no código. No caso de decidir tentar, ficarei satisfeito se me der algum feedback :)

# Como configurar a sua máquina Windows 10 para executar os testes:

## 1. Instalar o Python 3 e o virtualenv
- https://www.python.org/downloads
- verificar a opção para **add Python a PATH*** durante a instalação
- em terminal de linha de comando, verificar se a Python está correctamente instalada: "python --versão" - a saída deve fornecer-lhe a versão instalada
- verificar se o pip também foi instalado: `pip --versão`
- finalmente, **instalar ambiente virtual** executando `pip install --user virtualenv` num terminal de linha de comando

## 2. Instalar bibliotecas de estruturas de robôs
- em terminal de linha de comando, navegue até ao directório raiz do seu projecto e crie um novo ambiente virtual executando `virtualenv venv`.
- activar o ambiente virtual recém-criado: `.|venv}Scripts`activate''.
- depois executar `pip install -r requirements.txt` para instalar todas as bibliotecas necessárias para este projecto

```
```

## 3. Criar variáveis de Ambiente de Utilizador
Configure as suas **Variáveis de Ambiente de Utilizador** com os nomes mencionados abaixo (pelo menos aqueles para os quais pretende realizar os seus testes) e preencha-os com as suas credenciais de BD:

${DB_HOST}         XXX.XXX.X.X\\SQLEXPRESS
${DB_NAME}         QA
${DB_USER}         sa
${DB_PASSWORD}     sa@XXXXX
${DB_API_MODULE}   pyodbc
${DB_PORT}         XXXXXX
```
```


Para executar ambos os testes com argumentos por defeito, utilizar:

``robot -d ./log .\tests.robot``


```