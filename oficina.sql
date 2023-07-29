-- criando base oficina

create database oficina;

use oficina;

-- criando tabela cliente

create table cliente (
	idCliente int auto_increment,
    nome varchar(15) not null,
    sobrenome varchar(45),
    cpf char(11) not null,
    data_nascimento date not null,
    telefone char(12) not null,
	constraint pk_cliente primary key (idCliente), 
    constraint unique_cpf_cliente unique (cpf)
);

-- criando a tabela endereço

create table endereço(
	idEndereço int auto_increment,
	idCliente int,
    cep char(9) not null,
    rua varchar (30) not null,
    bairro varchar (30)not null,
    cidade varchar (30) not null,
    constraint pk_endereço primary key (idEndereço),
    constraint fk_endereço_cliente foreign key (idCliente) references cliente (idCliente)
 ); 
 
 -- criando tabela veiculo
 
create table veiculo(
	idVeiculo int auto_increment,
    idCliente int,
    marca varchar(15) not null,
    modelo varchar(15) not null,
    ano date not null,
    placa varchar(10),
    constraint pk_veiculo primary key (idVeiculo),
    constraint fk_veiculo_cliente foreign key (idCliente) references cliente (idCliente)
);
 
 -- criando tabela serviço
 
 create table serviço(
	idServiço int auto_increment,
    idVeiculo int,
    idCliente int,
    mao_de_obra varchar(45),
    autorizaçao enum('reprovado', 'aprovado'),
    status_serviço enum('avaliação', 'autorização', 'pagamento', 'execução', 'entrega'),
	constraint pk_serviço primary key (idServiço),
    constraint fk_serviço_veiculo foreign key (idVeiculo) references veiculo (idVeiculo),
    constraint fk_serviço_veiculo_cliente foreign key (idCliente) references cliente (idCliente)
 );
 
 -- adicionando preço de srviço na tabela serviços
 
 alter table serviço add preço_serviço decimal(10,2) default 0.00;
 
 -- criando tabela funcionario
 
create table funcionario(
	idFuncionario int auto_increment ,
    matricula varchar(4),
    nome varchar(15),
    sobrenome varchar(15),
    constraint pk_funcionario primary key(idFuncionario),
    constraint unique_maticula_funcioanrio unique (matricula) 
);

-- criando tabela  relacionamento funcionario serviço

create table funcionario_serviço(
	idFuncionario int,
    idServiço int,
    constraint pk_funcionario_serviço_funcionario foreign key (idFuncionario) references funcionario (idFuncionario),
    constraint pk_funcionario_serviço_serviço foreign key (idServiço) references serviço (idServiço)
);

-- criando tabela peças

create table peça(
	idPeça int auto_increment,
    codigo_peça varchar(9),
    nome_peça varchar(45),
    quantidade varchar(6),
    preço varchar(6),
    constraint pk_peça primary key(idPeça),
    constraint unique_codigo_peça unique(codigo_peça)
);

-- corrigindo tabela preço da tabela peça
 alter table peça  modify  column preço decimal(10,2) default 0.00 ;
 
-- criando relacionamento de serviço peças
create table serviço_peças(
	idServiço int,
    idPeça int,
    constraint pk_serviço_peças_serviço foreign key (idServiço) references serviço (idServiço),
    constraint pk_seviço_peça_peça foreign key (idPeça) references peça (idPeça)
);





 
 
 
	