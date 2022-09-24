*** Settings ***
Library     DatabaseLibrary
Library     String
Library     FakerLibrary
Library     Collections
Library     DiffLibrary
Library     OperatingSystem


*** Variables ***

${DB_HOST}         XXX.XXX.X.X\\SQLEXPRESS
${DB_NAME}         QA
${DB_USER}         sa
${DB_PASSWORD}     sa@XXXXX
${DB_API_MODULE}   pyodbc
${DB_PORT}         XXXXXX


#Execute o comando para saber a porta do SQL server: EXEC master.dbo.xp_readerrorlog 0, 1, N'Server is listening on', 'ipv', NULL, NULL, N'asc'

*** Test Cases ***
Validar conexão ao banco de dados SQL server e realizar consulta, insert, update e delete
    Dado que acesso ao banco de dados QA
    Quando realizo uma consula na tb "cidade"
    E realizo um insert de dados na tb "cidade"
    E realizo um update de dados na tb "cidade"
    E realizo um delete de dados na tb "cidade"
    Então esconectar do banco de dados

*** Keywords ***
Dado que acesso ao banco de dados QA

    Connect To Database    ${DB_API_MODULE}     ${DB_NAME}       ${DB_USER}       ${DB_PASSWORD}    ${DB_HOST}       ${DB_PORT}
            

Quando realizo uma consula na tb "cidade"

    ${result_consulta}    Query    select *from ${tabela}
    Log   ${result_consulta}
    Log To Console   :
    Log To Console   consulta:${result_consulta}


 E realizo um insert de dados na tb "cidade"

        ${cidade}    FakerLibrary.City
        ${State}    FakerLibrary.State
        ${id_cidade}    FakerLibrary.Random Number
        ${result_consulta}    Execute Sql String    INSERT INTO cidade (id_cidade, cidade, estado) VALUES (${id_cidade},'${cidade}', '${State}');

E realizo um update de dados na tb "cidade"  

            ${cidade}    FakerLibrary.City
            ${id}    FakerLibrary.Random Int    min=1  max=10
            
            Execute Sql String    UPDATE cidade SET cidade='${cidade}' WHERE id_cidade=${id};
        

E realizo um delete de dados na tb "cidade"

            ${result}    Execute Sql String    DELETE cidade


Então esconectar do banco de dados
    Disconnect From Database
