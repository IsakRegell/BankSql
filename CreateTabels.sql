-- Skapa tabeller
CREATE TABLE Kunder (
    KundID INT PRIMARY KEY,
    Förnamn VARCHAR(50),
    Efternamn VARCHAR(50),
);

CREATE TABLE Konton (
    KontoID INT PRIMARY KEY,
    Saldo DECIMAL(10, 2),
	KundID INT
    FOREIGN KEY (KundID) REFERENCES Kunder(KundID)
);

CREATE TABLE Transaktioner (
    TransaktionsID INT PRIMARY KEY,
    Belopp DECIMAL(10, 2),
    Datum DATE,
	TypID TINYINT, --DENNA VAR NY
	KontoID INT,
    FOREIGN KEY (KontoID) REFERENCES Konton(KontoID)
);

CREATE TABLE Transaktionstyper (
    TypID TINYINT PRIMARY KEY,
    Beskrivning VARCHAR(20)
);
