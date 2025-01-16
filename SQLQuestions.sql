--Alla metoder i samma fil för att underlätta för dig nemo.

SELECT * FROM Kunder WHERE KundID = 1;

SELECT SUM(Saldo) AS TotaltSaldo FROM Konton WHERE KundID = 1;

SELECT * FROM Transaktioner WHERE KontoID = 1;

SELECT TOP 3 *
FROM Konton
ORDER BY Saldo DESC;


SELECT 
    SUM(CASE WHEN tt.Beskrivning = 'Insättning' THEN t.Belopp ELSE 0 END) AS TotalaInsättningar,
    SUM(CASE WHEN tt.Beskrivning = 'Uttag' THEN t.Belopp ELSE 0 END) AS TotalaUttag
FROM Transaktioner t
JOIN Transaktionstyper tt ON t.TypID = tt.TypID
WHERE t.KontoID = 1;


SELECT *
FROM Transaktioner
WHERE Datum >= DATEADD(DAY, -30, GETDATE());

