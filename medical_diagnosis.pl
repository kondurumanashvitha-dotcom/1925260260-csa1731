% Facts: Symptoms of patients

symptom(ravi, fever).
symptom(ravi, cough).
symptom(ravi, headache).

symptom(raju, fever).
symptom(raju, body_pain).

symptom(sita, sneezing).
symptom(sita, runny_nose).

% Rules: Disease identification

disease(Person, flu) :-
    symptom(Person, fever),
    symptom(Person, cough),
    symptom(Person, headache).

disease(Person, common_cold) :-
    symptom(Person, sneezing),
    symptom(Person, runny_nose).

disease(Person, viral_fever) :-
    symptom(Person, fever),
    symptom(Person, body_pain).

% Diagnosis

diagnose(Person) :-
    disease(Person, Disease),
    write(Person),
    write(' may have '),
    write(Disease),
    nl.