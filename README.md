# Strapi application

A quick description of your strapi application

## Run dump
`psql -h 127.0.0.1 -U $USER -d $DATABASE -W < strapi.sql`

## Create dump
`pg_dump -c --if-exists --exclude-table=strapi-administrator -h 127.0.0.1 -U $USER -d $DATABASE -W > strapi.sql`
