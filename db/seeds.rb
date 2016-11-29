# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@gifs = Gif.create!([{:title => "Obama", :link => "http://gifrific.com/wp-content/uploads/2012/04/obama-skateboard.gif", :recipe => "Blend 2 minutes", :all_tags => "Mexican"},
                    {:title => "Jalapeno Poppers", :link => "http://i.imgur.com/0YdDh9J.gif"},
                    {:title => "Vegan Quesadillas", :link => "http://i.imgur.com/uoojePh.gif"},
                    {:title => "Ramen", :link => "http://i.imgur.com/kqLu1y1.gif"},
                    {:title => "Peck Dance", :link => "https://m.popkey.co/501456/y6za0.gif"}
    ])