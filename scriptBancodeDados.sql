
create database quiz;

use quiz;

create table questao (
	idQuestao int primary key auto_increment,
	nomeQuestao varchar(100) not null,
	A varchar(30) not null,
	B varchar(30) not null,
	C varchar(30) not null,
	D varchar(30) not null,
	E varchar(30) not null,
	Resposta char(1) not null
);

create table quiz (
	idQuiz int primary key auto_increment,
	nomeJogador varchar(30) ,
	pontuacao int not null
	

);

use quiz;
insert into questao (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values ("Qual esporte mais praticado no Brasil?","T�nis" ,"Pole dance","Rugby","Futebol","Levantamento de garfo","D");

insert into questao (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values ("Em que ano Ayrton Senna conversou com Jesus?", "1992" ,"1993","1994","1995" ,"Jesus n�o existe","C");

insert into questao  (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values ("Qual dos times abaixo n�o tem mundial?", "S�o Paulo" ,"Santos " ,"Corinthians", "Palmeiras","51 � pinga","D");

insert into questao  (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values ("Quem � o melhor jogador de basquete na hist�ria? ", "Le Bron James","Stephen Curry","Michael Jordan","Oscar Schimidt","Diego Maradona","C");

insert into questao  (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values ("Segundo pesquisas, qual dos esportes abaixo causa maiores sequelas cerebrais?","Boxe "  ,  "Muay Thai"  ,  "Bal�" , "Rugby ", "Futebol Americano","E");

insert into questao  (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values (" Atualmente o cen�rio e-sports est� crescendo em grande escala, e atraindo altos investimentos, quais dos jogos abaixo teve maior crescimento nos �ltimos tempos?",  "League of Legends"
       , "Fortnite ",        "DOTA",        "CS GO",        "Flappy Bird","B");
       
insert into questao (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values ( " Qual dos lutadores abaixo foi conhecido como 'Spider'?",
       "Vitor Belfort",
        "Anderson Silva",
        "Jos� Aldo",
        "John Cena",
        "Peter Parker","B");
insert into questao (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values ("Em qual prova do atletismo o Usain Bolt � recordista?",
        "50 metros rasos",
        "100 metros rasos",
        "50 metros fundos",
        "100 metros fundos",
        "1 quilometro raso e fundo","B");
insert into questao (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values (" Qual a maior onda j� surfada em todos os tempos aproximadamente?","22m", "23m", "24m","26m", "28m","C");

insert into questao (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values (" Qual dos esportes abaixo ganhou mais foco de pessoas acima do peso?",
        "Sum�",
        "T�nis",
        "Salto com vara",
        "Muscula��o",
        "Levatamento de garfo","A");