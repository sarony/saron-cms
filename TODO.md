Features:
- CRUD post:
---> title, subtitle, cover_art, body, quote, markdown
- CRUD cartoons:
---> title, subtitle, cover_art, cartoon

HOMEPAGE:

NEED:
- text editor: with markdown renderings
- image uploader
- ability to upload images to bluehost

MODELS:

Posts:
- attributes: title, subtitle, body, cover_art, preview, image, type

User:
- attribute: email, password

Tasks:
#- set up Capybara stuff
#- start with the Posts model
- work on cover art uploader
- setup forms and all for basic posts
- then worry about uploader --> Paperclip

Features:
#- Create blogposts
#- Create illustrations
- Read posts
- Edit blog_posts
- Edit illustrations
- Delete blog_posts
- Delete illustrations



REFACTOR
- refactor private methods