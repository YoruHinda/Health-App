DROP TABLE IF EXISTS patients;
DROP TABLE IF EXISTS doctors;

CREATE TABLE doctors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    specialty VARCHAR(100)
);

INSERT INTO doctors (name, specialty) VALUES
('Dr. Renato Farias', 'Cardiology'),
('Dra. Juliana Mendes', 'Dermatology'),
('Dr. Victor Nogueira', 'Orthopedics'),
('Dra. Camila Duarte', 'Pediatrics'),
('Dr. Felipe Azevedo', 'Neurology');

CREATE TABLE patients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100),
    cpf VARCHAR(14),
    doctor_id INT,
    FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);

INSERT INTO patients (name, email, password, cpf, doctor_id) VALUES
('Lucas Andrade','lucas01@health.com','1234','301.555.120-01',1),
('Mariana Teixeira','mariana02@health.com','1234','302.555.120-02',2),
('Gabriel Rocha','gabriel03@health.com','1234','303.555.120-03',3),
('Fernanda Lopes','fernanda04@health.com','1234','304.555.120-04',4),
('Rafael Cunha','rafael05@health.com','1234','305.555.120-05',5),
('Beatriz Nascimento','beatriz06@health.com','1234','306.555.120-06',1),
('Thiago Barros','thiago07@health.com','1234','307.555.120-07',2),
('Aline Batista','aline08@health.com','1234','308.555.120-08',3),
('Eduardo Freitas','eduardo09@health.com','1234','309.555.120-09',4),
('Carla Pacheco','carla10@health.com','1234','310.555.120-10',5),

('Bruno Tavares','bruno11@health.com','1234','311.555.120-11',1),
('Patricia Moura','patricia12@health.com','1234','312.555.120-12',2),
('Ricardo Figueiredo','ricardo13@health.com','1234','313.555.120-13',3),
('Amanda Rezende','amanda14@health.com','1234','314.555.120-14',4),
('Felipe Guimarães','felipe15@health.com','1234','315.555.120-15',5),
('Larissa Campos','larissa16@health.com','1234','316.555.120-16',1),
('Gustavo Nunes','gustavo17@health.com','1234','317.555.120-17',2),
('Renata Ribeiro','renata18@health.com','1234','318.555.120-18',3),
('Eduardo Borges','eduardo19@health.com','1234','319.555.120-19',4),
('Bianca Torres','bianca20@health.com','1234','320.555.120-20',5),

('Daniel Cardoso','daniel21@health.com','1234','321.555.120-21',1),
('Vanessa Duarte','vanessa22@health.com','1234','322.555.120-22',2),
('André Alves','andre23@health.com','1234','323.555.120-23',3),
('Clara Mendes','clara24@health.com','1234','324.555.120-24',4),
('Thiago Rocha','thiago25@health.com','1234','325.555.120-25',5),
('Aline Freire','aline26@health.com','1234','326.555.120-26',1),
('Rodrigo Pires','rodrigo27@health.com','1234','327.555.120-27',2),
('Beatriz Teles','beatriz28@health.com','1234','328.555.120-28',3),
('Marcelo Diniz','marcelo29@health.com','1234','329.555.120-29',4),
('Natália Castro','natalia30@health.com','1234','330.555.120-30',5),

('Igor Ramos','igor31@health.com','1234','331.555.120-31',1),
('Tatiane Coelho','tatiane32@health.com','1234','332.555.120-32',2),
('Leandro Peixoto','leandro33@health.com','1234','333.555.120-33',3),
('Priscila Andrade','priscila34@health.com','1234','334.555.120-34',4),
('Vinicius Tavares','vinicius35@health.com','1234','335.555.120-35',5),
('Débora Campos','debora36@health.com','1234','336.555.120-36',1),
('Hugo Fernandes','hugo37@health.com','1234','337.555.120-37',2),
('Elaine Guimarães','elaine38@health.com','1234','338.555.120-38',3),
('Fábio Azevedo','fabio39@health.com','1234','339.555.120-39',4),
('Simone Matos','simone40@health.com','1234','340.555.120-40',5),

('Paulo Cunha','paulo41@health.com','1234','341.555.120-41',1),
('Cristiane Braga','cristiane42@health.com','1234','342.555.120-42',2),
('Rafael Pacheco','rafael43@health.com','1234','343.555.120-43',3),
('Monica Veloso','monica44@health.com','1234','344.555.120-44',4),
('Sérgio Neves','sergio45@health.com','1234','345.555.120-45',5),
('Carla Dantas','carla46@health.com','1234','346.555.120-46',1),
('Diego Rezende','diego47@health.com','1234','347.555.120-47',2),
('Luciana Torres','luciana48@health.com','1234','348.555.120-48',3),
('Maurício Lira','mauricio49@health.com','1234','349.555.120-49',4),
('Denise Macedo','denise50@health.com','1234','350.555.120-50',5),

('Jorge Pinto','jorge51@health.com','1234','351.555.120-51',1),
('Sandra Cunha','sandra52@health.com','1234','352.555.120-52',2),
('Alberto Vieira','alberto53@health.com','1234','353.555.120-53',3),
('Raquel Bastos','raquel54@health.com','1234','354.555.120-54',4),
('Otávio Duarte','otavio55@health.com','1234','355.555.120-55',5),
('Helena Moraes','helena56@health.com','1234','356.555.120-56',1),
('César Figueira','cesar57@health.com','1234','357.555.120-57',2),
('Viviane Pacheco','viviane58@health.com','1234','358.555.120-58',3),
('Leonardo Braga','leo59@health.com','1234','359.555.120-59',4),
('Tainá Rocha','taina60@health.com','1234','360.555.120-60',5),

('Brenda Sales','brenda61@health.com','1234','361.555.120-61',1),
('Caio Freire','caio62@health.com','1234','362.555.120-62',2),
('Isabela Moraes','isabela63@health.com','1234','363.555.120-63',3),
('Roberto Paiva','roberto64@health.com','1234','364.555.120-64',4),
('Milena Castro','milena65@health.com','1234','365.555.120-65',5),
('Gabriel Lopes','gabriel66@health.com','1234','366.555.120-66',1),
('Larissa Rocha','larissa67@health.com','1234','367.555.120-67',2),
('Mateus Teles','mateus68@health.com','1234','368.555.120-68',3),
('Yasmin Duarte','yasmin69@health.com','1234','369.555.120-69',4),
('Rogério Sá','rogerio70@health.com','1234','370.555.120-70',5);