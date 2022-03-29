USE SuperStore


SELECT * FROM OPENROWSET(
    BULK 'C:\Users\PLLUKOR1\OneDrive - ABB\LukaszKordas\Trainings\Spark-Training\SuperStoreAnalysis',
    SINGLE_CLOB
) AS DATA