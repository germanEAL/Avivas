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

ActiveRecord::Schema[8.0].define(version: 2024_12_13_115243) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

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
    t.string "imagen"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.decimal "telefono"
    t.date "fecha_ingreso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rol"
    t.string "password_digest"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["nombre"], name: "index_usuarios_on_nombre", unique: true
  end

  create_table "venta", force: :cascade do |t|
    t.datetime "fecha"
    t.integer "usuario_id", null: false
    t.string "cliente"
    t.decimal "total"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_venta_on_usuario_id"
  end

  create_table "venta_productos", force: :cascade do |t|
    t.integer "venta_id", null: false
    t.integer "producto_id", null: false
    t.integer "cantidad"
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producto_id"], name: "index_venta_productos_on_producto_id"
    t.index ["venta_id"], name: "index_venta_productos_on_venta_id"
  end

  create_table "ventas", force: :cascade do |t|
    t.datetime "fecha"
    t.integer "usuario_id", null: false
    t.string "cliente"
    t.decimal "total"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_ventas_on_usuario_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "venta", "usuarios"
  add_foreign_key "venta_productos", "productos"
  add_foreign_key "venta_productos", "venta"
  add_foreign_key "ventas", "usuarios"
end
