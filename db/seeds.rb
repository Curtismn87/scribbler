# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.destroy_all
Comment.destroy_all
Post.create(author: "Kanye West", post_body: "This website is so crazy!")
Comment.create(name: "Taylor Swift", comment_body: "You're crazy", post_id: "1")
