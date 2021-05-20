ALTER PROCEDURE "DBA"."get_villes"()
begin
    select codePostal, nom
    FROM villes
end