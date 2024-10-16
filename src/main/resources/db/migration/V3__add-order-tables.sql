create table beer_order
(
    id                 varchar(36) not null,
    created_date       datetime(6),
    customer_ref       varchar(255),
    last_modified_date datetime(6),
    version            bigint,
    customer_id        varchar(36) not null,
    primary key (id),
    constraint foreign key (customer_id) references customer (id)
) engine = InnoDB;

create table beer_order_line
(
    id                 varchar(36) not null,
    beer_id            varchar(36) not null,
    created_date       datetime(6),
    last_modified_date datetime(6),
    order_quantity     integer,
    quantity_allocated integer,
    version            bigint,
    beer_order_id      varchar(36) not null,
    primary key (id),
    constraint foreign key (beer_id) references beer (id),
    constraint foreign key (beer_order_id) references beer_order (id)

) engine = InnoDB;