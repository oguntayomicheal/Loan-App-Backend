# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Create two staff records
Staff.create([
  { name: "Alice Johnson", staff_id: "STAFF001" },
  { name: "Bob Smith", staff_id: "STAFF002" }
])
