# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150223225700) do
=======
ActiveRecord::Schema.define(version: 20150223001249) do
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
  create_table "movie_actors", force: true do |t|
    t.integer  "movie_id"
    t.integer  "actor_id"
=======
  create_table "actors_movies", force: true do |t|
    t.integer  "actor_id"
    t.integer  "movie_id"
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
=======
  add_index "actors_movies", ["actor_id"], name: "index_actors_movies_on_actor_id", using: :btree
  add_index "actors_movies", ["movie_id"], name: "index_actors_movies_on_movie_id", using: :btree

>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
  create_table "movies", force: true do |t|
    t.string   "title"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
