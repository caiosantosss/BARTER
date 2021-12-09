# Barter

Barter allows users to post and trade their personal items with other users. 

![Screen Shot 2021-12-09 at 15 54 18](https://user-images.githubusercontent.com/76512208/145348944-42f2efee-a903-4c89-b164-229c9e0c9358.png)
<br>
App home: https://barter-exchange.herokuapp.com/
   

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 6](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Team Members
- Ryota Enoki
- Vivian Bao
- Caio Santos
- Karen Fujibayashi

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
