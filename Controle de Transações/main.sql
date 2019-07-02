--Criar Tabela--
create table conta (
	numconta int,
	saldo int,
	primary key (numconta)
);

--Inserir Valores
Insert into conta values (100, 1000);
Insert into conta values (200, 2000);

-- Transação 1 --
Begin;
	Insert into conta values (300,3000);
Commit;

Select * from conta;

--Transação 2--
Begin;
  Insert into conta values (400, 4000);
Rollback;

Select * from conta;
--Mais de uma instrução--
Begin;
  Update conta set saldo = saldo - 50 where numconta = 100;
  Update conta set saldo = saldo - 50 where numconta = 200;
Commit;
