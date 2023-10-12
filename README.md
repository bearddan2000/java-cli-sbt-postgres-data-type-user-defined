# java-cli-sbt-postgres-data-type-user-defined

## Description
Creates a small database table
called `dog`. This table, `dog`, has been normalized to 3NF.
Two new tables have been added, `breedLookup` and `colorLookup`.

Creates a new table `dog_expanded` that joins
`dog`, `breedLookup` and `colorLookup`. Added clustered indexes on
`dog`.breedId and `dog`.colorId.

Turned `dog_expanded` into a view with an implicit index on `dog_expanded`.id.

Defined a type `type_int_int` that acts as a return type.
Using table function with the aggregate function
COUNT, create a new view `breed_count`.

All output normally
seen in a terminal will be in `java-srv/log` which will dump to the screen. The project may seem to hang but the logs from the container must be written to the project this can take up to 3 min.

## Tech stack
- java
- sbt
  - log4j
  - postgres driver

## Docker stack
- hseeberger/scala-sbt:11.0.2-oraclelinux7_1.3.5_2.12.10
- postgres

## To run
`sudo ./install.sh -u`
Creates java-srv/log

## To stop
`sudo ./install.sh -d`
Removes java-srv/log

## For help
`sudo ./install.sh -h`

## Credit
- [Pretty sql print](https://github.com/htorun/dbtableprinter)
- [User defined type](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-user-defined-data-types/)
