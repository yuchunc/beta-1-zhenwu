# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Member.delete_all
Member.create!(email: "test@test.com", password: "123456")
Member.create!(email: "admin@admin.com", password: "123456", is_admin: true)

Video.delete_all
Video.create!(title: "test_public", description: "This is a public video.", yt_video_id: "z63fX6nYrrI")
Video.create!(title: "test_private", description: "This is a private video.", yt_video_id: "Z-5JYBNFkUw")
