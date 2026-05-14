create database viagens;
use viagens;

create table usuario(
	id int,
    nome varchar(100) not null,
    email varchar(100) not null unique,
    endereco varchar(100) not null,
    dt_nasc date not null
);

create table destinos(
	id int,
    nome varchar(100) not null unique,
    descricao varchar(300) not null
);

create table reservas(
	id int,
    id_usuario int,
    id_destino int,
    data_reserva date,
    status_reserva varchar(30) default 'pendente'
);

create table usuario_nova(
	id int,
    nome varchar(100) not null,
    email varchar(100) not null unique,
    dt_nasc date not null,
    endereco varchar(500) not null
);

insert into usuario values
(1, "joel", "joel@gmail.com", "Residencial floresta", "2000-09-20");

insert into destinos values
(1, "Pará", "Melhor cidade do mundo");

insert into reservas values
(1, 1, 1, "2026-05-13", "pendente" );

insert into usuario values
(2, "nicole", "nicole@gmail.com", "icoaraci", "2000-09-21" ),
(3, "marcia", "marcia@gmail.com", "Ananindeua", "2000-09-22" ),
(4, "joao", "joao@gmail.com", "Abaetetuba", "2000-09-23" ),
(5, "Nicolas", "nicolas@gmail.com", "Belem", "2000-09-24" ),
(6, "maria", "maria@gmail.com", "Macapa", "2000-09-25" );

insert into destinos values
(2, "Belem", "Melhor cidade do mundo"),
(3, "Ananindeua", "Melhor cidade do mundo"),
(4, "Jurunas", "Melhor cidade do mundo"),
(5, "Floripa", "Melhor cidade do mundo");

insert into reservas values
(1, 2, 2, "2026-05-13", "pendente"),
(2, 1, 3, "2026-05-13", "confirmada"),
(2, 1, 1, "2026-05-13", "cancelada"),
(3, 4, 1, "2026-05-13", "pendente");

insert into usuario_nova
select * from usuario;

select * from usuario;
select * from usuario_nova;


select * from destinos;
select * from reservas;

select * from usuario
where id = 1;

update usuario set nome = "Joelzinho" where id = 1;
delete from destinos where id = 2; 

drop table usuario;

alter table usuario_nova rename usuario;

alter table usuario
modify column id int auto_increment,
add primary key(id);

alter table destinos 
modify column id int auto_increment,
add primary key(id);

alter table destinos 
modify column id int auto_increment,
add primary key(id);

delete from reservas 
where id = 2;

alter table reservas 
modify column id int auto_increment,
add primary key(id);

alter table reservas 
add constraint fk_reservas_usuarios
foreign key(id_usuario) references usuario(id);

alter table reservas 
add constraint fk_reservas_destino
foreign key(id_destino) references destinos(id);

alter table reservas
add constraint fk_usuarios
foreign key (id_usuario) references usuario(id)
on delete cascade;

delete from usuario where id = 1;


