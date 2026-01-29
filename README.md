# SQL Geodata Testing & QA
## Opis Projektu
Repozytorium zawiera zbiór skryptów SQL opracowanych w celu automatyzacji procesów kontroli jakości (Quality Control) oraz walidacji danych w bazach danych przestrzennych (GIS). Projekt symuluje realne scenariusze testowe, z którymi mierzy się Tester Oprogramowania w branży geoinformatycznej oraz administracji publicznej.

## Wykorzystane technologie

**Język:** SQL.

**Domena:** Systemy Informacji Przestrzennej (GIS), Ewidencja Gruntów i Budynków (EGiB).

## Scenariusze Testowe (Test Cases)
* Skrypty realizują następujące procesy weryfikacyjne:
  * **Walidacja integralności danych:** Sprawdzanie spójności między powierzchnią obliczeniową, a ewidencyjną działek (wykrywanie błędów topologicznych).

  * **Kontrola jakości atrybutów:** Weryfikacja precyzji pomiaru punktów granicznych zgodnie ze standardami technicznymi (analiza błędów położenia punktu granicznego).

  * **Testy kompletności:** Identyfikacja obiektów pozbawionych kluczowych relacji (np. działki bez przypisanych użytków lub klasoużytków).

  * **Analiza statystyczna zbiorów danych:** Zliczanie wystąpień i sumowanie powierzchni klasoużytków w obrębie w celu wykrycia anomalii obszarowych.
 
  *  **Test zgodności atrybutów SPD i ZRD:** Weryfikacja poprawności konwersji danych o sposobie pozyskania punktów.
    
## Dlaczego to repozytorium powstało?
Jako Junior QA Engineer z silnym zapleczem inżynierskim, wierzę, że automatyzacja weryfikacji danych za pomocą zapytań SQL jest kluczem do eliminacji błędów w złożonych systemach informatycznych.

Scenariusze testowe SQL zostały opracowane na podstawie:  Załącznik nr 5 do rozp. EGiB - Dopuszczalne wartości atrybutów punktów granicznych (PDF).
