# README

Recipes In A Gif is a web application devoted to those awesome little cooking videos you see on Facebook. In an instagram-like fashion, users can see a grid of recipe gifs, search for a desired gif, make a profile, or upload their own gifs.

If you wish to join our project, here are some steps to get started on your local machine:

** Requirements: **
*   Ruby 2.3.1
*   Rails
*   Bundle

Clone project from GitHub
```
git clone https://github.com/OliverTwizt/GIFRecipes.git
```

Cd into project directory
```
cd GIFRecipes
```

Install required gems
```
bundle install --without production
```

Seed database with GIFS
```
rake db:seed
```

Apply DB Migration
```
rake db:migrate
```
Start server (on cloud 9)
```
rails s -b $IP -p $PORT
```

