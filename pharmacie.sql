create database pharmacie;
	use pharmacie;
	create table nompharmacie(
		login varchar(30),
		nom varchar(40),
		password varchar(50),
		adresse varchar(50),
		telephone char(9),
		email varchar(35),
		constraint pk_log primary key(login))engine=innodb;
	insert into nompharmacie values
		('Lesdunes','Les Dunes','seconnecter','504 Espace residence mariste','338326129','lesdunes@gmail.com');
	create table medicaments(
		loginphar varchar(30),
		nom varchar(32),
		quantite int,
		prix decimal(10,3),
		Type varchar(40),
		constraint pk_namelog primary key(nom,loginphar),
		constraint fk_login foreign key(loginphar) references nompharmacie(login))engine=innodb;
	create table historique(
		nommed varchar(32),
		prixmed decimal(10,3),
		dat datetime,
		logphar varchar(30),
	    constraint fk_nom foreign key(nommed) references medicaments(nom),
		constraint fk_log foreign key(logphar) references nompharmacie(login))engine=innodb;
	    insert into medicaments values 
		('Lesdunes','Aciclovir',5,1324,'Antiviraux'),
		('Lesdunes','Acide acetylsalisique',10,3125,'ANALGESIQUES'),
		('Lesdunes','Paracetamol',20,150,'ANALGESIQUES'),
		('Lesdunes','Benzathine-benzyilpénicilline',3,4125,'ANTI-INFECTIEUX'),
		('Lesdunes','Benzylpénicilline',12,485,'ANTI-INFECTIEUX'),
		('Lesdunes','Céfazoline',2,4120,'ANTI-INFECTIEUX'),
		('Lesdunes','Céfixime',1,200,'ANTI-INFECTIEUX'),
		('Lesdunes','Chloramphénicol',10,1453,'ANTI-INFECTIEUX'),
		('Lesdunes','Ciprofloxacine',6,1245,'ANTI-INFECTIEUX'),
		('Lesdunes','Doxycycline',4,1453,'ANTI-INFECTIEUX'),
		('Lesdunes','Erythromycine',7,100,'ANTI-INFECTIEUX'),
		('Lesdunes','Vancomycine',3,141,'ANTI-INFECTIEUX'),
		('Lesdunes','Phénoxyméthylpénicilline',3,1420,'ANTI-INFECTIEUX'),
		('Lesdunes','Tétracycline',3,5324,'ANTI-INFECTIEUX'),
		('Lesdunes','Ibuprofène',15,625,'ANALGESIQUES'),
		('Lesdunes','Disulfirame',11,14250,'Antidotes Spécifiques'),
		('Lesdunes','N-Acétylcystéine',12,1230,'Antidotes Spécifiques'),
		('Lesdunes','Acide méfénamique',10,1489,'Antiviraux'),
		('Lesdunes','Aminophylline',5,4105,'Antiviraux'),
		('Lesdunes','Alvogyl',6,1254,'Antidotes Spécifiques'),
		('Lesdunes','Chlorure de sodium',4,1585,'Antidotes Spécifiques'),
		('Lesdunes','Acétazolamide',10,750,'Antidotes Spécifiques'),
		('Lesdunes','Acides aminés essentiels',10,1495,'Antidotes Spécifiques'),
		('Lesdunes','Bleomycine',5,12450,'Antidotes Spécifiques'),
		('Lesdunes','Préservatifs',20,150,'Contraceptifs mécaniques'),
		('Lesdunes','Carbimazole',15,1505,'Antiviraux'),
		('Lesdunes','Abacavir',4,15475,'Antiviraux'),
		('Lesdunes','Zalcitabine',2,1076,'Antiviraux'),
		('Lesdunes','Amphotéricine B',10,5125,'Antiviraux'),
		('Lesdunes','Métronizadole',3,545,'Antiviraux'),
		('Lesdunes','Amodiaquine',6,4795,'Antidotes Spécifiques'),
		('Lesdunes','Chloroquine base',15,1256,'Antidotes Spécifiques'),
		('Lesdunes','Quinine',6,6854,'ANTI-INFECTIEUX'),
		('Lesdunes','Dapsone',5,7585,'ANTI-INFECTIEUX'),
		('Lesdunes','Rifampicine',13,2545,'ANTI-INFECTIEUX'),
		('Lesdunes','Griséofulvine',12,1525,'ANTI-INFECTIEUX'),
		('Lesdunes','Nystatine',14,9250,'ANTI-INFECTIEUX'),
		('Lesdunes','Fluconazole 100 mg',10,1548,'ANTI-INFECTIEUX'),
		('Lesdunes','Fluconazole 50 mg cp',20,1500,'Contraceptifs mécaniques'),
		('Lesdunes','Didanosine',10,1256,'Contraceptifs mécaniques'),
		('Lesdunes','Chlortétracycline ou Tétracycline',12,252,'Contraceptifs mécaniques'),
		('Lesdunes','Fluorescéine',10,1125,'Contraceptifs mécaniques'),
		('Lesdunes','Implants sous-cutanés',10,2563,'Contraceptifs mécaniques');
		insert into historique values
		('Aciclovir',1324,now(),'Lesdunes');


      #select*from medicaments;
      #update medicaments set quantite=quantite+2 where nom='Aciclovir';
      #select nom from medicaments where nom like 'A%';