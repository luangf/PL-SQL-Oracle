CREATE TABLE customers (
    id_customer NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    email VARCHAR2(100),
    city VARCHAR2(50)
);

INSERT INTO customers VALUES (1, 'João Silva', 'joao@email.com', 'São Paulo');
SELECT * FROM customers;

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
