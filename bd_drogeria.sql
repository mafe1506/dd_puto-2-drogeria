
create table Sucursal(
nit_suc int(12) primary key,
nom_suc varchar(50),
dir_suc varchar(15),
tel_suc int(15),
nit_prov int(12),
foreign key(nit_prov) references Proveedor(nit_prov)
);
create table Medicamento(
id_med int(15) primary key,
nom_med varchar(50),
tipo_med varchar(20),
lab_med varchar(20),
fec_med date,
cant_med int(10),
mg_med varchar(10),
nit_suc int(12),
foreign key(nit_suc)references Sucursal(nit_suc)
);
CREATE TABLE Trabajador (
    id_trab INT(12) PRIMARY KEY,
    nom_trab VARCHAR(25),
    ape_trab VARCHAR(25),
    tel_trab INT(15),
    dir_trab VARCHAR(50),
    correo_trab VARCHAR(50),
    nit_suc INT(12),
    FOREIGN KEY (nit_suc)
        REFERENCES Sucursal (nit_suc)
)
show tables;