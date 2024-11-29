# PL-SQL-Oracle
Repository with the aim of studying and testing the PL/SQL language

Utilizei o software "Oracle Live SQL" que permite executar comandos SQL e PL/SQL diretamente no navegador, precisa apenas de uma conta na Oracle.

Objetivo da query: Verificar se o nome do cliente de id = 1 é igual a 'João Silva' 

1. Criei uma tabela de clientes
```SQL
CREATE TABLE customers (
    id_customer NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    email VARCHAR2(100),
    city VARCHAR2(50)
);
```
2. Adicionei um cliente na tabela e verifiquei os registros atuais da tabela
```SQL
INSERT INTO customers VALUES (1, 'João Silva', 'joao@email.com', 'São Paulo');
SELECT * FROM customers;
```
