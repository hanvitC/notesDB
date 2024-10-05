DROP SCHEMA IF EXISTS db_notes;
CREATE SCHEMA db_notebook;
USE db_notebook;

create table Notes (
            id int not null,
            user_id int not null,
            title VARCHAR(255),
            created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
            primary key (id),
            foreign key (user_id) REFERENCES User(id) ON DELETE CASCADE
);

