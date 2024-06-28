describe voluntario_status;
select * from voluntario_status;

insert into voluntario_status (id_status_voluntario, id_voluntario, status_voluntario) values
(26,'26', '0'),
(27,'27', '1'),
(28,'28', '1'),
(29,'29', '1'),
(30,'30', '0');

ALTER TABLE voluntario_status MODIFY COLUMN status_voluntario VARCHAR(10);

UPDATE voluntario_status
SET status_voluntario = CASE status_voluntario
    WHEN '0' THEN 'Inativo'
    WHEN '1' THEN 'Ativo'
    ELSE 'Desconhecido'
END;