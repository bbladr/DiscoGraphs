# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_09_173039) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "album_leader_players", force: :cascade do |t|
    t.integer "album_id", null: false
    t.integer "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_album_leader_players_on_album_id"
    t.index ["player_id"], name: "index_album_leader_players_on_player_id"
  end

  create_table "album_musics", force: :cascade do |t|
    t.integer "music_id", null: false
    t.integer "album_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_album_musics_on_album_id"
    t.index ["music_id"], name: "index_album_musics_on_music_id"
  end

  create_table "album_players", force: :cascade do |t|
    t.integer "album_id", null: false
    t.integer "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_album_players_on_album_id"
    t.index ["player_id"], name: "index_album_players_on_player_id"
  end

  create_table "album_request_reviews", force: :cascade do |t|
    t.integer "album_request_id", null: false
    t.integer "review_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_request_id"], name: "index_album_request_reviews_on_album_request_id"
    t.index ["review_id"], name: "index_album_request_reviews_on_review_id"
  end

  create_table "album_requests", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "status"
    t.integer "album_id"
    t.integer "request_user_id"
  end

  create_table "album_reviews", force: :cascade do |t|
    t.integer "album_id", null: false
    t.integer "review_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_album_reviews_on_album_id"
    t.index ["review_id"], name: "index_album_reviews_on_review_id"
  end

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.string "nameForView"
    t.string "nameInJapanese"
    t.text "description"
    t.date "releasedIn"
    t.date "recordedIn"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "department", default: "", null: false
    t.integer "gender", default: 0, null: false
    t.date "birth"
    t.date "joined_date"
    t.bigint "payment", default: 0, null: false
    t.text "note", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "player_id"
  end

  create_table "music_genres", force: :cascade do |t|
    t.integer "music_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_music_genres_on_genre_id"
    t.index ["music_id"], name: "index_music_genres_on_music_id"
  end

  create_table "music_reviews", force: :cascade do |t|
    t.integer "music_id", null: false
    t.integer "review_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["music_id"], name: "index_music_reviews_on_music_id"
    t.index ["review_id"], name: "index_music_reviews_on_review_id"
  end

  create_table "musics", force: :cascade do |t|
    t.string "name"
    t.string "nameForView"
    t.string "nameInJapanese"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "composer"
  end

  create_table "parts", force: :cascade do |t|
    t.string "name"
    t.string "nameForView"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_cities", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_player_cities_on_city_id"
    t.index ["player_id"], name: "index_player_cities_on_player_id"
  end

  create_table "player_countries", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_player_countries_on_country_id"
    t.index ["player_id"], name: "index_player_countries_on_player_id"
  end

  create_table "player_genres", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_player_genres_on_genre_id"
    t.index ["player_id"], name: "index_player_genres_on_player_id"
  end

  create_table "player_parts", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "part_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["part_id"], name: "index_player_parts_on_part_id"
    t.index ["player_id"], name: "index_player_parts_on_player_id"
  end

  create_table "player_request_reviews", force: :cascade do |t|
    t.integer "player_request_id", null: false
    t.integer "review_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_request_id"], name: "index_player_request_reviews_on_player_request_id"
    t.index ["review_id"], name: "index_player_request_reviews_on_review_id"
  end

  create_table "player_requests", force: :cascade do |t|
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "request_user_id"
    t.integer "player_id"
  end

  create_table "player_reviews", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "review_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_player_reviews_on_player_id"
    t.index ["review_id"], name: "index_player_reviews_on_review_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "nameForView"
    t.string "nameInJapanese"
    t.text "description"
    t.date "born"
    t.date "died"
    t.integer "sex"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "city_id"
    t.integer "country_id"
    t.integer "creator_id"
    t.integer "last_updater_id"
    t.integer "level"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "star"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "nameForView"
    t.text "description"
    t.string "password"
    t.string "email"
    t.integer "role"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "album_leader_players", "albums"
  add_foreign_key "album_leader_players", "players"
  add_foreign_key "album_musics", "albums"
  add_foreign_key "album_musics", "musics"
  add_foreign_key "album_players", "albums"
  add_foreign_key "album_players", "players"
  add_foreign_key "album_request_reviews", "album_requests"
  add_foreign_key "album_request_reviews", "reviews"
  add_foreign_key "album_reviews", "albums"
  add_foreign_key "album_reviews", "reviews"
  add_foreign_key "music_genres", "genres"
  add_foreign_key "music_genres", "musics"
  add_foreign_key "music_reviews", "musics"
  add_foreign_key "music_reviews", "reviews"
  add_foreign_key "player_cities", "cities"
  add_foreign_key "player_cities", "players"
  add_foreign_key "player_countries", "countries"
  add_foreign_key "player_countries", "players"
  add_foreign_key "player_genres", "genres"
  add_foreign_key "player_genres", "players"
  add_foreign_key "player_parts", "parts"
  add_foreign_key "player_parts", "players"
  add_foreign_key "player_request_reviews", "player_requests"
  add_foreign_key "player_request_reviews", "reviews"
  add_foreign_key "player_reviews", "players"
  add_foreign_key "player_reviews", "reviews"
end
