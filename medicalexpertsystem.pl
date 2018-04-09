% user shell
go :-

	write('****************** My Expert System for Medical Diagnosis*********************** '),nl,write('System menu'),nl,
     
    hypothesis(Patient,Organism).
   

go :-
    write('It can be said with 0.3 CF(Certainty Factor) that the bacteroides '),nl,
    write('have not entered the patient'),nl.

%knowledge base

hypothesis(Patient,majorbacteroides) :-
    symptom(Patient,majorinfection),
    symptom(Patient,bacterial),
    symptom(Patient,site),
    symptom(Patient,portal), write_list(['Patient probably has 0.7 CF(Certainty Factor) chance of majorbacteroides.']),nl,write('Medical Diagnosis:Patient is adviced to take Penicilin , Cephalophorins and Chloramphenicol'),nl.
hypothesis(Patient,minorbacteroides) :-
    symptom(Patient,minorinfection),
    symptom(Patient,bacterial),write_list(['Patient probably has 0.7 CF(Certainty Factor) chance of minorbacteroides.']),nl,write('Medical Diagnosis:Patient is adviced to urgently go to doctor for diagnosis'),nl.
    
    
%inference engine
symptom(Patient,majorinfection) :-
    write_list(['Does Patient have a major infection (y/n) ?']),
    response(Reply),
    Reply='y'.
symptom(Patient,minorinfection) :-
    write_list(['Does Patient have a minor infection (y/n) ?']),
    response(Reply),
    Reply='y'.

symptom(Patient,bacterial) :-
    write_list(['Does Patient have a bacterial infection (y/n) ?']),
    response(Reply),
    Reply='y'.

symptom(Patient,site) :-
    write_list(['Does Patient have the site of culture as sterilesite  (y/n) ?']),
    response(Reply),
    Reply='y'.

symptom(Patient,portal) :-
    write_list(['Does Patient have a portal of entry as gastrointestinal tract (y/n) ?']),
    response(Reply),
    Reply='y'.







write_list([]).
write_list([Term| Terms]) :-
    write(Term),
    write_list(Terms).

response(Reply) :-
    get_single_char(Code),
    put_code(Code), nl,
    char_code(Reply, Code).

































