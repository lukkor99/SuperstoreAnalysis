IF NOT EXISTS
    (SELECT *
    FROM sys.databases
    WHERE name = 'SuperSotre') BEGIN CREATE DATABASE SuperStore END