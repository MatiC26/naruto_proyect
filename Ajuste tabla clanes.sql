# Agrego nombre de clanes

INSERT INTO clanes (nombre_clan) VALUES ('Uzumaki'), ('Uchiha'), ('Haruno'), ('Hatake'), ('Senju'), ('Namikaze'), ('Sarutobi'), ('Sin clan')

# Agrego otros clanes, corrijo la tabla y cambio de lugar el id sin clan 

INSERT INTO clanes (nombre_clan) VALUES ('Hyuga');

INSERT INTO clanes (nombre_clan) VALUES ('Nara'), ('Akimichi'), ('Yamanaka'), ('Aburame'), ('Inuzuka')

UPDATE clanes
SET nombre_clan = 'inuzuka'
WHERE id_clan = 8;

UPDATE clanes
SET nombre_clan = 'Sin clan'
WHERE id_clan = 14;