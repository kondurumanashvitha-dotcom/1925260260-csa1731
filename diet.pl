diet(diabetes, 'Low sugar and high fiber food').
diet(blood_pressure, 'Low salt and low fat food').
diet(obesity, 'Low calorie and high protein food').
diet(anemia, 'Iron rich food').
diet(heart_disease, 'Low fat and low cholesterol food').

suggest_diet(Disease) :-
    diet(Disease, Food),
    write('Disease: '),
    write(Disease),
    nl,
    write('Suggested Diet: '),
    write(Food),
    nl.

suggest_diet(Disease) :-
    \+ diet(Disease, _),
    write('No diet information available for this disease.').