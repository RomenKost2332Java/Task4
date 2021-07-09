CREATE TABLE account (
    account_id    INTEGER        PRIMARY KEY,
    product_cd    VARCHAR (10)   REFERENCES product (product_cd),
    cust_id       INTEGER        REFERENCES customer (cust_id),
    status        VARCHAR (10),
    avail_balance DOUBLE (10, 2) 
);


CREATE TABLE customer (
    cust_id      INTEGER      PRIMARY KEY,
    fed_id       VARCHAR (12),
    cust_type_cd CHAR (2) 
);


CREATE TABLE product (
    product_cd VARCHAR (10) PRIMARY KEY,
    name       VARCHAR (50) 
);


INSERT INTO account 
VALUES 
   (0, "a0", 10, "ACTIVE", 900.00), 
   (1, "a1", 11, "INACTIVE", 4000.00), 
   (2, "a2", 12, "ACTIVE", 2000.00), 
   (3, "a3", 13, "ACTIVE", 150.00), 
   (4, "a4", 14, "ACTIVE", 4000.00), 
   
   (5, "a5", 15, "ACTIVE", -1000.00),  
   (6, "a6", 16, "INACTIVE", 500.00), 
   (7, "a7", 17, "ACTIVE", 1000.00), 
   (8, "a8", 18, "ACTIVE", 1500.00), 
   (9, "a9", 19, "ACTIVE", 2000.00); 

INSERT INTO customer 
VALUES 
    (10, "abc10", "I"), 
    (11, "abc11", "F"), 
    (12, "abc12", "I"), 
    (13, "abc13", "I"), 
    (14, "abc14", "I"), 
    
    (15, "abc15", "F"), 
    (16, "abc16", "I"), 
    (17, "abc17", "I"), 
    (18, "abc18", "F"), 
    (19, "abc19", "I");

INSERT INTO product 
VALUES 
    ("a0", "produc 0"), 
    ("a1", "produc 1"), 
    ("a2", "produc 2"), 
    ("a3", "produc 3"), 
    ("a4", "produc 4"), 
    
    ("a5", "produc 5"), 
    ("a6", "produc 6"), 
    ("a7", "produc 7"), 
    ("a8", "produc 8"), 
    ("a9", "produc 9");
