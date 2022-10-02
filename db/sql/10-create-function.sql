CREATE FUNCTION fn_breed_count(target int) RETURNS type_int_int AS $$
  SELECT "breedId", COUNT(*)
  FROM dog
  WHERE "breedId" = target
  GROUP BY "breedId";
$$ LANGUAGE SQL;
