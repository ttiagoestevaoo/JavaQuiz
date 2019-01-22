
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
insert into questao (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values ("Qual esporte mais praticado no Brasil?","Tênis" ,"Pole dance","Rugby","Futebol","Levantamento de garfo","D");

insert into questao (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values ("Em que ano Ayrton Senna conversou com Jesus?", "1992" ,"1993","1994","1995" ,"Jesus não existe","C");

insert into questao  (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values ("Qual dos times abaixo não tem mundial?", "São Paulo" ,"Santos " ,"Corinthians", "Palmeiras","51 é pinga","D");

insert into questao  (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values ("Quem é o melhor jogador de basquete na história? ", "Le Bron James","Stephen Curry","Michael Jordan","Oscar Schimidt","Diego Maradona","C");

insert into questao  (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values ("Segundo pesquisas, qual dos esportes abaixo causa maiores sequelas cerebrais?","Boxe "  ,  "Muay Thai"  ,  "Balé" , "Rugby ", "Futebol Americano","E");

insert into questao  (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values (" Atualmente o cenário e-sports está crescendo em grande escala, e atraindo altos investimentos, quais dos jogos abaixo teve maior crescimento nos últimos tempos?",  "League of Legends"
       , "Fortnite ",        "DOTA",        "CS GO",        "Flappy Bird","B");
       
insert into questao (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values ( " Qual dos lutadores abaixo foi conhecido como 'Spider'?",
       "Vitor Belfort",
        "Anderson Silva",
        "José Aldo",
        "John Cena",
        "Peter Parker","B");
insert into questao (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values ("Em qual prova do atletismo o Usain Bolt é recordista?",
        "50 metros rasos",
        "100 metros rasos",
        "50 metros fundos",
        "100 metros fundos",
        "1 quilometro raso e fundo","B");
insert into questao (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values (" Qual a maior onda já surfada em todos os tempos aproximadamente?","22m", "23m", "24m","26m", "28m","C");

insert into questao (nomeQuestao,A ,B ,C ,D ,E ,Resposta) values (" Qual dos esportes abaixo ganhou mais foco de pessoas acima do peso?",
        "Sumô",
        "Tênis",
        "Salto com vara",
        "Musculação",
        "Levatamento de garfo","A");