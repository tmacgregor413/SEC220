create table class
(
    id            int auto_increment,
    class_name    varchar(10) null,
    class_subject varchar(10) null,
    constraint id
        unique (id)
);

create table class_roster
(
    id         int auto_increment,
    class_id   int not null,
    student_id int not null,
    constraint id
        unique (id)
);

create table grade
(
    id        int auto_increment,
    grade_num tinyint null,
    constraint id
        unique (id)
);

create table student_address
(
    id      int auto_increment
        primary key,
    address varchar(40) null,
    town    varchar(15) null,
    zip     smallint    null,
    constraint id
        unique (id)
);

create table student
(
    id         int auto_increment
        primary key,
    firstname  varchar(15) not null,
    lastname   varchar(15) not null,
    grade_id   int         null,
    address_id int         null,
    constraint id
        unique (id),
    constraint student_ibfk_1
        foreign key (address_id) references student_address (id),
    constraint student_ibfk_2
        foreign key (grade_id) references grade (id)
);

create index address_id
    on student (address_id);

create index grade_id
    on student (grade_id);


