create table MASTER_TABLE (
	id number(10),
	idx number(1),
	constraint master_table_pk primary key(id)
);

create table DICTIONARY_TABLE_1 (
	id number(10),
	master_table_id number(10),

	constraint dictionary_table_pk primary key(id),
	constraint master_table_fk foreign key(master_table_id) references MASTER_TABLE(id)
);

create table DICTIONARY_TABLE_2 as select * from DICTIONARY_TABLE_1;
	create table DICTIONARY_TABLE_3 as select * from DICTIONARY_TABLE_1;
		create table DICTIONARY_TABLE_4 as select * from DICTIONARY_TABLE_1;