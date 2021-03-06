# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Employee.destroy_all

User.create(name: "Admin", password: "admin", role: "Admin")
User.create(name: "Tudor", password: "tudor", role: "L2")
User.create(name: "Rich", password: "rich", role: "L2")
User.create(name: "Grace", password: "grace", role: "L2")
User.create(name: "Roland", password: "roland", role: "L2")
User.create(name: "Lito", password: "lito", role: "L1")
User.create(name: "Jun", password: "jun", role: "Guest")

Employee.create(name: "Gilbert", department: "Manufacturing")
Employee.create(name: "Mae", department: "Planning")
Employee.create(name: "Dee", department: "Planning")
Employee.create(name: "Operator 1", department: "Manufacturing")
Employee.create(name: "Operator 2", department: "Manufacturing")
