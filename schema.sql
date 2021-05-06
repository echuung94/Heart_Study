-- Creating tables for heart_study db
CREATE TABLE Heart_Disease (
    male INT,
    age	INT,
    education INT,
    currentSmoker INT,
    cigsPerDay INT,
    BPMeds INT,
    prevalentStroke	INT,
    prevalentHyp INT,
    diabetes INT,
    totChol INT,
    sysBP INT,
    diaBP INT,
    BMI INT,
    heartRate INT,
    glucose INT,
    TenYearCHD INT
);

CREATE TABLE Heart_Attack (
    age	INT,
    sex	INT,
    cp INT,
    trtbps INT,
    chol INT,
    fbs	INT,
    restecg	INT,
    thalachh INT,
    exng INT,
    oldpeak	INT,
    slp	INT,
    caa	INT,
    thall INT,
    output INT
);

SELECT * FROM Heart_Disease;
SELECT * FROM Heart_Attack;