#!/usr/bin/env sh

dropdb meowtime
createdb meowtime
psql meowtime < cat_db.sql
