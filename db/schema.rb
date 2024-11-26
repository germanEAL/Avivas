# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2024_11_26_145926) do
  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.decimal "precio"
    t.integer "stock"
    t.string "categoria"
    t.string "talle"
    t.string "color"
    t.datetime "fecha_ingreso"
    t.datetime "fecha_modificacion"
    t.datetime "fecha_baja"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.decimal "telefono"
    t.date "fecha_ingreso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rol"
    t.string "contrasena"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["nombre"], name: "index_usuarios_on_nombre", unique: true
  end
end
