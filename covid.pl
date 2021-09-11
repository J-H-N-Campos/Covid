% Idade das pessoas.
idade(andre, 30).
idade(joao, 22).
idade(evandro, 65).
idade(lucas, 18).
idade(antonio, 80).
idade(laura, 45).
idade(ana, 50).
idade(camila, 60).
idade(eduardo, 35).
idade(eduarda, 68).
idade(rafael, 71).
idade(jean, 40).
idade(rafaela, 66).
idade(dana, 81).

% Pessoas que possuem ou não doenças.
doenca_pessoa(andre, sem_doenca).
doenca_pessoa(joao, sem_doenca).
doenca_pessoa(evandro, sem_doenca).
doenca_pessoa(lucas, aids) .
doenca_pessoa(antonio, cancer_pulmao).
doenca_pessoa(laura, diabete).
doenca_pessoa(ana, asma).
doenca_pessoa(camila, hepatite_ab).
doenca_pessoa(eduardo, sem_doenca).
doenca_pessoa(eduarda, sem_doenca).
doenca_pessoa(rafael, sem_doenca).
doenca_pessoa(jean, sem_doenca).
doenca_pessoa(rafaela, sem_doenca).
doenca_pessoa(dana, sem_doenca).

% Pessoas que foram ou não vacinadas com a primeira e segunda dose, ou
% apenas com a primeira dose.
vacinados(andre, primeira_dose) .
vacinados(joao, nao_vacinado) .
vacinados(evandro, primeira_segunda_dose) .
vacinados(lucas, nao_vacinado) .
vacinados(antonio, primeira_segunda_dose).
vacinados(laura, primeira_segunda_dose).
vacinados(ana, primeira_segunda_dose).
vacinados(camila, primeira_segunda_dose).
vacinados(eduardo, primeira_dose) .
vacinados(eduarda, primeira_segunda_dose) .
vacinados(rafael, primeira_segunda_dose) .
vacinados(jean, primeira_dose) .
vacinados(rafaela, primeira_segunda_dose) .
vacinados(dana, primeira_segunda_dose) .

% Sintomas das pessoas
sintomas(andre, febre).
sintomas(joao, diarreia).
sintomas(evandro, tosse_seca).
sintomas(lucas, visao_turva).
sintomas(antonio, fraqueza).
sintomas(laura, cansaco).
sintomas(ana, conjuntivite).
sintomas(camila, perda_paladar).
sintomas(eduardo, perda_olfato).
sintomas(eduarda, erupcao_cutanea_pele).
sintomas(rafael, dor_peito).
sintomas(jean, dor_corpo).
sintomas(rafaela, tonturas).
sintomas(dana, falta_ar).

% Grau de porcentagem para covid
grau_porcentagem(andre, 15).
grau_porcentagem(joao, 5).
grau_porcentagem(evandro, 30).
grau_porcentagem(lucas, 100).
grau_porcentagem(antonio, 100).
grau_porcentagem(laura, 35).
grau_porcentagem(ana, 45).
grau_porcentagem(camila, 100).
grau_porcentagem(eduardo, 100).
grau_porcentagem(eduarda, 100).
grau_porcentagem(rafael, 100).
grau_porcentagem(jean, 50).
grau_porcentagem(rafaela, 100).
grau_porcentagem(dana, 100).

% Pessoas que estão e que não estão contaminadas.
pessoas_covid(andre, nao_contaminado) .
pessoas_covid(joao, nao_contaminado) .
pessoas_covid(evandro , nao_contaminado) .
pessoas_covid(lucas, contaminado) .
pessoas_covid(antonio, contaminado) .
pessoas_covid(laura, nao_contaminada) .
pessoas_covid(ana, nao_contaminada) .
pessoas_covid(camila, contaminada) .
pessoas_covid(eduardo, contaminado) .
pessoas_covid(eduarda, contaminada) .
pessoas_covid(rafael, contaminado) .
pessoas_covid(jean, nao_contaminado) .
pessoas_covid(rafaela, contaminada) .
pessoas_covid(dana, contaminada) .

% Pessoas que precisam de internação urgente, de apenas internação e sem internação.
internacao(andre, sem_internacao) .
internacao(joao, sem_internacao) .
internacao(evandro, sem_internacao) .
internacao(lucas, internacao_urgente) .
internacao(antonio, sem_internacao) .
internacao(laura, sem_internacao) .
internacao(ana, sem_internacao) .
internacao(camila, internacao) .
internacao(eduardo, internacao) .
internacao(eduarda, sem_internacao) .
internacao(rafael, internacao) .
internacao(jean, sem_internacao) .
internacao(rafaela, internacao) .
internacao(dana, internacao_urgente) .

%Quem possui alto risco de poder ter Covid?
risco_alto_covid(X) :- not(vacinados(X,primeira_dose)), not(vacinados(X,primeira_segunda_dose)) .

% quem fez a primeira e segunda dose, ou quem fez só a primeira dose e
% quem não fez as vacinas?
pessoas_vacinadas(X,Y) :- vacinados(X,Y).

%Quais as pessoas que possuem alto risco de covid?
alto_nivel_covid(X) :- grau_porcentagem(X,100) .

%Doenças que as pessoas possuem?
doenca(X,Y) :- doenca_pessoa(X,Y) .

%Quais são as idades das pessoas?
idade_pessoas(X,Y) :- idade(X,Y) .

%Quem tem alto nível de poder ir para a internação?
alto_nivel_internacao(X,Y) :- internacao(X,Y).

%Quais pessoas estão e quais não estão com covid?
pessoas_com_covid(X,Y) :- pessoas_covid(X,Y) .
