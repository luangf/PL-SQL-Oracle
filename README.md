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
3. Utilizei a linguagem PL/SQL para o objetivo do projeto:
```
DECLARE
    VAR_NAME_CUSTOMER	customers.name%Type;

BEGIN
	SELECT name
     INTO VAR_NAME_CUSTOMER
      FROM customers
	   WHERE id_customer=1;

	IF VAR_NAME_CUSTOMER = 'João Silva' THEN
    	DBMS_OUTPUT.PUT_LINE(VAR_NAME_CUSTOMER);
	ELSE
        DBMS_OUTPUT.PUT_LINE('Other name');
	END IF;
	-- >, <, =, <>, !=, <=, => others conditional operators
END;
```
* Foi utilizado como boa prática customers.name%Type na VAR_NAME_CUSTOME ao invés de declarar o tipo direto, pois pode mudar futuramente na tabela
* Imagem demonstrando o resultado:

<img src="https://github.com/user-attachments/assets/dbb2a6c2-9ce3-407b-ac68-f5b73dea5d1f" width="400"/>
