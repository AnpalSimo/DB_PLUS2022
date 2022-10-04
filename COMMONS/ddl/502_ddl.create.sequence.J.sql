
\echo 'executing script 502_ddl.create.sequence.J.sql';

\c :dbName :userj

CREATE SEQUENCE seq_iscrizione_azienda
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_iscrizione_persona; Type: SEQUENCE; Schema: jpuoi; Owner: jpuoi
--

CREATE SEQUENCE seq_iscrizione_persona
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_soggetto; Type: SEQUENCE; Schema: jpuoi; Owner: jpuoi
--

CREATE SEQUENCE seq_soggetto
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_spc_regola; Type: SEQUENCE; Schema: jpuoi; Owner: jpuoi
--

CREATE SEQUENCE seq_spc_regola
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;
