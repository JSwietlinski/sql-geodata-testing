-- 1. Szukanie działek o powierzchni ujemnej lub zerowej.
-- Cel: Wykrycie błędów topologicznych/wprowadzania danych.
SELECT id_dzialki, powierzchnia, obreb 
FROM ewidencja_dzialek 
WHERE powierzchnia <= 0;

-- 2. Znalezienie budynków, które nie są przypisane do żadnej działki.
-- Cel: Wykrycie rekordów bez relacji.
SELECT b.id_budynku, b.funkcja 
FROM budynki AS b
LEFT JOIN dzialki AS d ON b.id_dzialki = d.id_dzialki
WHERE d.id_dzialki IS NULL;

-- 3. Zliczenie klasoużytków w konkretnym obrębie.
SELECT klasouzytek, COUNT(*) AS liczba_uzytkow, SUM(pole_pow) AS suma_powierzchni
FROM kontury_klasyfikacyjne
WHERE id_obreb = '302903_5'
GROUP BY klasouzytek
ORDER BY suma_powierzchni DESC;

-- 4. Znalezienie punktów granicznych o niskiej dokładności (ISD = 0)
-- Cel: Wyselekcjonowanie punktów wymagających ponownego pomiaru zgodnie z załącznikiem nr 5 do rozp. EGIB.
SELECT id_punktu, ISD, bląd_polozenia
FROM punkty_graniczne
WHERE ISD = 0 AND bląd_polozenia > 0.10;
