/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     12/2/2017 4:40:56 AM                         */
/*==============================================================*/


/*==============================================================*/
/* Table: harga_mobil                                           */
/*==============================================================*/
create table harga_mobil
(
   id_harga             varchar(50) not null,
   id_mobil             int,
   jumlah_peminjaman    int not null,
   tanggal_peminjaman   varchar(50) not null,
   primary key (id_harga)
);

/*==============================================================*/
/* Table: jenis_mobil                                           */
/*==============================================================*/
create table jenis_mobil
(
   id_jenis_mobil       char(50) not null,
   id_user              int,
   merek_mobil          varchar(50) not null,
   primary key (id_jenis_mobil)
);

/*==============================================================*/
/* Table: melakukan                                             */
/*==============================================================*/
create table melakukan
(
   id_harga             varchar(50) not null,
   no_rex               int not null,
   primary key (id_harga, no_rex)
);

/*==============================================================*/
/* Table: mobil                                                 */
/*==============================================================*/
create table mobil
(
   id_mobil             int not null,
   id_jenis_mobil       char(50) not null,
   id_harga             varchar(50) not null,
   nama_mobil           varchar(50) not null,
   jumlah_mobil         int not null,
   be_mobil             varchar(50) not null,
   primary key (id_mobil)
);

/*==============================================================*/
/* Table: pembayaran                                            */
/*==============================================================*/
create table pembayaran
(
   no_rex               int not null,
   tunai                varchar(50) not null,
   kredit               int,
   primary key (no_rex)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   id_user              int not null,
   username             varchar(1024) not null,
   primary key (id_user)
);

alter table harga_mobil add constraint FK_mempunyai2 foreign key (id_mobil)
      references mobil (id_mobil) on delete restrict on update restrict;

alter table jenis_mobil add constraint FK_melihat foreign key (id_user)
      references user (id_user) on delete restrict on update restrict;

alter table melakukan add constraint FK_melakukan foreign key (id_harga)
      references harga_mobil (id_harga) on delete restrict on update restrict;

alter table melakukan add constraint FK_melakukan2 foreign key (no_rex)
      references pembayaran (no_rex) on delete restrict on update restrict;

alter table mobil add constraint FK_memiliki foreign key (id_jenis_mobil)
      references jenis_mobil (id_jenis_mobil) on delete restrict on update restrict;

alter table mobil add constraint FK_mempunyai foreign key (id_harga)
      references harga_mobil (id_harga) on delete restrict on update restrict;

