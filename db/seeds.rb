# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Tarea 1, crear 5 blog.
b = Blog.new
b.name = "Blog 1"
b.description = "Description 1"
b.save

b = Blog.new
b.name = "Blog 2"
b.description = "Description 2"
b.save

b = Blog.new
b.name = "Blog 3"
b.description = "Description 3"
b.save

b = Blog.new
b.name = "Blog 4"
b.description = "Description 4"
b.save

b = Blog.new
b.name = "Blog 5"
b.description = "Description 5"
b.save

puts "Blogs creados: #{Blog.all.count}"
puts "Tarea 1. Hecho"

# Tarea 2, crear publicaciones.

5.times do |nblog|
  2.times do |npost|
    p = Post.new
    #Post numero 1-1
    #Post numero 1-2
    #Post numero 2-1
    #Post numero 2-2
    p.title = "Post numero #{nblog+1}-#{npost + 1}"
    p.content = "Contenido de la publicacion #{npost + 1}"
    p.blog = Blog.where(name: "Blog #{nblog + 1}").first
    p.save
  end
end

puts "Publicaciones: #{Post.all.count}"
puts "Tarea 2. Hecho"

# Tarea 3, crear mensajes.
pp = Post.all.order("created_at asc").first

m = Message.new
m.post = pp
m.author = "Ray Rojas"
m.message = "Hola mundo marte x"
m.save()

m = Message.new
m.post = pp
m.author = "Leo Rojas"
m.message = "Hola mundo Venus x"
m.save()

puts "Mensaje: #{Message.all.count}"

puts "Tarea 3. Hecho"

# Tarea 4, .
puts Blog.where(name: "Blog 1").first.post.count

puts "Tarea 4. Hecho"

# Tarea 5, .
puts Blog.where(name: "Blog 5").first.post.order("title desc")
puts "Tarea 5. Hecho"

# Tarea 6, .
x = Post.all.first
x.title = "Nuevo título"
x.save
puts Post.all.first.title
puts "Tarea 6. Hecho"

# Tarea 7
f = Post.all.order("created_at asc")[2]
f.destroy

puts "¿Post existe? #{Post.where(id: f.id).count}"
puts "Tarea 7. Hecho"

# Tarea 8
puts Blog.all
puts "Tarea 8. Hecho"

# Tarea 9
puts Blog.where("id < 5")
# puts Blog.where("id <= 5")
# puts Blog.where("id > 5")
# puts Blog.where("id >= 5")
# puts Blog.where("id = 5")
# puts Blog.where("id != 5")
puts "Tarea 9. Hecho"
