SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE candidat (
  id int(11) NOT NULL,
  CODCURSO varchar(3) DEFAULT NULL,
  NOME_ALUN varchar(45) NOT NULL,
  NASCIMENTO date DEFAULT NULL,
  CODLOCAL varchar(2) NOT NULL,
  SALA int(2) NOT NULL,
  FALTA varchar(1) NOT NULL DEFAULT '',
  CLAS int(11) DEFAULT NULL,
  TURNO varchar(1) NOT NULL,
  CODESC varchar(3) NOT NULL,
  COD_ALUN varchar(5) NOT NULL,
  CODINTER varchar(8) DEFAULT NULL,
  ELIMINADO varchar(1) DEFAULT '',
  IDENTIDADE varchar(18) NOT NULL,
  DEFICI varchar(1) NOT NULL,
  PONTOSCONT varchar(1) NOT NULL,
  COR varchar(1) NOT NULL,
  CLASDEFICI int(11) DEFAULT NULL,
  CLASNEGRO int(11) DEFAULT NULL
) ;

CREATE TABLE concurso (
  id int(11) NOT NULL,
  NOME varchar(999) DEFAULT NULL,
  CLASSIF varchar(100) DEFAULT NULL,
  ELIMINADO varchar(100) DEFAULT NULL,
  PASTA varchar(100) DEFAULT NULL,
  RODAPE varchar(150) DEFAULT NULL,
  TITULO varchar(150) DEFAULT NULL,
  DATAHORARIO varchar(255) DEFAULT NULL,
  ENTIDADE varchar(100) DEFAULT NULL,
  CARGO varchar(100) DEFAULT NULL,
  NUMQUESTOES int(11) DEFAULT NULL,
  DATARELATORIOS datetime DEFAULT NULL,
  TABELA varchar(50) DEFAULT NULL,
  TABELACARGOS varchar(50) DEFAULT NULL
) ;

CREATE TABLE criterios (
  id int(11) NOT NULL,
  CODCURSO varchar(3) NOT NULL,
  CRITERIO varchar(400) NOT NULL,
  TIPO varchar(4) NOT NULL
) ;

CREATE TABLE cursos (
  id int(11) NOT NULL,
  CODCURSO int(3) NOT NULL,
  NOME varchar(255) NOT NULL,
  VAGAS smallint(6) DEFAULT NULL
) ;

CREATE TABLE digita (
  id int(11) NOT NULL,
  CODCURSO varchar(3) DEFAULT NULL,
  COD_ALUN varchar(5) NOT NULL,
  PROBLEMA int(1) NOT NULL,
  OP1 varchar(1) DEFAULT NULL,
  OP2 varchar(1) DEFAULT NULL,
  OP3 varchar(1) DEFAULT NULL,
  OP4 varchar(1) DEFAULT NULL,
  OP5 varchar(1) DEFAULT NULL,
  OP6 varchar(1) DEFAULT NULL,
  OP7 varchar(1) DEFAULT NULL,
  OP8 varchar(1) DEFAULT NULL,
  OP9 varchar(1) DEFAULT NULL,
  OP10 varchar(1) DEFAULT NULL,
  OP11 varchar(1) DEFAULT NULL,
  OP12 varchar(1) DEFAULT NULL,
  OP13 varchar(1) DEFAULT NULL,
  OP14 varchar(1) DEFAULT NULL,
  OP15 varchar(1) DEFAULT NULL,
  OP16 varchar(1) DEFAULT NULL,
  OP17 varchar(1) DEFAULT NULL,
  OP18 varchar(1) DEFAULT NULL,
  OP19 varchar(1) DEFAULT NULL,
  OP20 varchar(1) DEFAULT NULL,
  OP21 varchar(1) DEFAULT NULL,
  OP22 varchar(1) DEFAULT NULL,
  OP23 varchar(1) DEFAULT NULL,
  OP24 varchar(1) DEFAULT NULL,
  OP25 varchar(1) DEFAULT NULL,
  OP26 varchar(1) DEFAULT NULL,
  OP27 varchar(1) DEFAULT NULL,
  OP28 varchar(1) DEFAULT NULL,
  OP29 varchar(1) DEFAULT NULL,
  OP30 varchar(1) DEFAULT NULL,
  OP31 varchar(1) DEFAULT NULL,
  OP32 varchar(1) DEFAULT NULL,
  OP33 varchar(1) DEFAULT NULL,
  OP34 varchar(1) DEFAULT NULL,
  OP35 varchar(1) DEFAULT NULL,
  OP36 varchar(1) DEFAULT NULL,
  OP37 varchar(1) DEFAULT NULL,
  OP38 varchar(1) DEFAULT NULL,
  OP39 varchar(1) DEFAULT NULL,
  OP40 varchar(1) DEFAULT NULL,
  OP41 varchar(1) DEFAULT NULL,
  OP42 varchar(1) DEFAULT NULL,
  OP43 varchar(1) DEFAULT NULL,
  OP44 varchar(1) DEFAULT NULL,
  OP45 varchar(1) DEFAULT NULL
) ;

CREATE TABLE endereco (
  CODINTER varchar(8) NOT NULL,
  IDENTALUNO varchar(11) DEFAULT NULL,
  NOMELOGR varchar(300) DEFAULT NULL,
  NUMIMOVEL varchar(5) DEFAULT NULL,
  COMPL varchar(15) DEFAULT NULL,
  NOMECIDADE varchar(30) DEFAULT NULL,
  NOMEBAIRRO varchar(25) DEFAULT NULL,
  CEP varchar(8) DEFAULT NULL,
  SIGUF varchar(2) DEFAULT NULL,
  NUMTEL1 varchar(11) DEFAULT NULL,
  NUMCELULAR varchar(13) DEFAULT NULL,
  EMAIL varchar(40) DEFAULT NULL,
  LOGRADOURO varchar(100) DEFAULT NULL,
  TRECHO varchar(100) DEFAULT NULL,
  BAIRRO2 varchar(50) DEFAULT NULL
) ;

CREATE TABLE escola (
  id int(11) NOT NULL,
  escola varchar(255) NOT NULL,
  especial int(1) NOT NULL DEFAULT '0',
  endereco varchar(255) NOT NULL,
  salas int(11) NOT NULL,
  salas1 int(11) NOT NULL,
  salas2 int(11) NOT NULL,
  carteiras3 int(11) NOT NULL,
  carteiras2 int(11) NOT NULL,
  carteiras int(11) NOT NULL,
  total int(11) NOT NULL,
  codigo int(2) UNSIGNED ZEROFILL NOT NULL,
  concurso int(11) NOT NULL
) ;

CREATE TABLE gaboficial (
  CODCURSO varchar(3) NOT NULL,
  OP1 varchar(1) DEFAULT NULL,
  OP2 varchar(1) DEFAULT NULL,
  OP3 varchar(1) DEFAULT NULL,
  OP4 varchar(1) DEFAULT NULL,
  OP5 varchar(1) DEFAULT NULL,
  OP6 varchar(1) DEFAULT NULL,
  OP7 varchar(1) DEFAULT NULL,
  OP8 varchar(1) DEFAULT NULL,
  OP9 varchar(1) DEFAULT NULL,
  OP10 varchar(1) DEFAULT NULL,
  OP11 varchar(1) DEFAULT NULL,
  OP12 varchar(1) DEFAULT NULL,
  OP13 varchar(1) DEFAULT NULL,
  OP14 varchar(1) DEFAULT NULL,
  OP15 varchar(1) DEFAULT NULL,
  OP16 varchar(1) DEFAULT NULL,
  OP17 varchar(1) DEFAULT NULL,
  OP18 varchar(1) DEFAULT NULL,
  OP19 varchar(1) DEFAULT NULL,
  OP20 varchar(1) DEFAULT NULL,
  OP21 varchar(1) DEFAULT NULL,
  OP22 varchar(1) DEFAULT NULL,
  OP23 varchar(1) DEFAULT NULL,
  OP24 varchar(1) DEFAULT NULL,
  OP25 varchar(1) DEFAULT NULL,
  OP26 varchar(1) DEFAULT NULL,
  OP27 varchar(1) DEFAULT NULL,
  OP28 varchar(1) DEFAULT NULL,
  OP29 varchar(1) DEFAULT NULL,
  OP30 varchar(1) DEFAULT NULL,
  OP31 varchar(1) DEFAULT NULL,
  OP32 varchar(1) DEFAULT NULL,
  OP33 varchar(1) DEFAULT NULL,
  OP34 varchar(1) DEFAULT NULL,
  OP35 varchar(1) DEFAULT NULL,
  OP36 varchar(1) DEFAULT NULL,
  OP37 varchar(1) DEFAULT NULL,
  OP38 varchar(1) DEFAULT NULL,
  OP39 varchar(1) DEFAULT NULL,
  OP40 varchar(1) DEFAULT NULL,
  OP41 varchar(1) DEFAULT NULL,
  OP42 varchar(1) DEFAULT NULL,
  OP43 varchar(1) DEFAULT NULL,
  OP44 varchar(1) DEFAULT NULL,
  OP45 varchar(1) DEFAULT NULL,
  OP46 varchar(1) DEFAULT NULL,
  OP47 varchar(1) DEFAULT NULL,
  OP48 varchar(1) DEFAULT NULL,
  OP49 varchar(1) DEFAULT NULL,
  OP50 varchar(1) DEFAULT NULL,
  OP51 varchar(1) DEFAULT NULL,
  OP52 varchar(1) DEFAULT NULL,
  OP53 varchar(1) DEFAULT NULL,
  OP54 varchar(1) DEFAULT NULL,
  OP55 varchar(1) DEFAULT NULL,
  OP56 varchar(1) DEFAULT NULL,
  OP57 varchar(1) DEFAULT NULL,
  OP58 varchar(1) DEFAULT NULL,
  OP59 varchar(1) DEFAULT NULL,
  OP60 varchar(1) DEFAULT NULL
) ;

CREATE TABLE isentos (
  id int(11) NOT NULL,
  nome varchar(255) NOT NULL,
  rg varchar(100) NOT NULL,
  situacao varchar(100) NOT NULL,
  inscricao int(6) NOT NULL
) ;

CREATE TABLE pontos (
  id int(11) NOT NULL,
  CODCURSO varchar(3) DEFAULT NULL,
  COD_ALUN int(5) UNSIGNED ZEROFILL NOT NULL,
  PONTOS float DEFAULT NULL,
  NASCIMENTO date DEFAULT NULL,
  TITULO float DEFAULT NULL,
  TOTAL float DEFAULT NULL,
  PROVA1 float DEFAULT NULL,
  PROVA2 float DEFAULT NULL,
  PROVA3 float DEFAULT NULL,
  PROVA4 float DEFAULT NULL,
  PROVA5 float DEFAULT NULL,
  PROVA6 float DEFAULT NULL,
  IDIDADE varchar(1) DEFAULT NULL,
  TITULO2 float DEFAULT NULL
) ;

CREATE TABLE provas (
  COD_PROVA int(2) NOT NULL,
  CODCURSO int(11) NOT NULL,
  COD_OP varchar(3) DEFAULT NULL,
  DENO_PROV varchar(99) DEFAULT NULL,
  NU_QUEST int(11) DEFAULT NULL,
  Q_INICIAL int(11) DEFAULT NULL,
  Q_FINAL int(11) DEFAULT NULL,
  VOLANTE int(11) DEFAULT NULL,
  P_M_ACERTO int(11) DEFAULT NULL,
  PESO_PROV float DEFAULT NULL
) ;


ALTER TABLE candidat
  ADD PRIMARY KEY (id);

ALTER TABLE concurso
  ADD PRIMARY KEY (id);

ALTER TABLE criterios
  ADD PRIMARY KEY (id);

ALTER TABLE cursos
  ADD PRIMARY KEY (id);

ALTER TABLE digita
  ADD PRIMARY KEY (id);

ALTER TABLE escola
  ADD PRIMARY KEY (id);

ALTER TABLE gaboficial
  ADD PRIMARY KEY (CODCURSO);

ALTER TABLE isentos
  ADD PRIMARY KEY (id);

ALTER TABLE pontos
  ADD PRIMARY KEY (id);

ALTER TABLE provas
  ADD PRIMARY KEY (COD_PROVA);


ALTER TABLE candidat
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE concurso
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE criterios
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE cursos
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE digita
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE escola
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE isentos
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE pontos
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE provas
  MODIFY COD_PROVA int(2) NOT NULL AUTO_INCREMENT;
USE phpmyadmin;

INSERT INTO pma__table_uiprefs (username, db_name, `table_name`, prefs, last_update) VALUES
('root', 'sisgra_pspsaude0218residencia', 'candidat', '{\"sorted_col\":\"`candidat`.`ELIMINADO` ASC\"}', '2019-02-11 13:25:50');

INSERT INTO pma__table_uiprefs (username, db_name, `table_name`, prefs, last_update) VALUES
('root', 'sisgra_pspsaude0218residencia', 'digita', '{\"sorted_col\":\"`digita`.`COD_ALUN` ASC\"}', '2019-02-04 12:22:44');

INSERT INTO pma__table_uiprefs (username, db_name, `table_name`, prefs, last_update) VALUES
('root', 'sisgra_pspsaude0218residencia', 'pontos', '{\"sorted_col\":\"`pontos`.`CODCURSO` ASC\"}', '2019-02-11 12:41:32');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
