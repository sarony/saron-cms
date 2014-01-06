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
- title, subtitle, cover_art

Blog_post:
- body
- preview

Illustration:
- image

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
#- Read posts
#- Edit blog_posts
#- Edit illustrations
#- Delete blog_posts
#- Delete illustrations
#- image uploader --> Paperclip
#- setup AWS shit
- include text-editor with Markdown
#- include Red Carpet to render Markdown
- syntax highlighting with Red Carpet or pygments

Text Editor: Summernote Text Editor
- bootstrap gem
- summernote 

Backup (10PM):
- redesign your SquareSpace
- change name to www.saronyitbarek.com


REFACTOR
- refactor private methods