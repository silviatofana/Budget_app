
![](https://img.shields.io/badge/Microverse-blueviolet)
# Rails Banking App
image.png

>Rails Capstone App app is a Ruby on Rails application that keeps track of all your entity and group.

## Link 
https://www.loom.com/share/88fab7327a264e2a8525db1e0871020e

https://user-images.githubusercontent.com/9010615/189194693-77468f8c-1a80-44fe-a74a-e301808b1f2d.png

https://dashboard.heroku.com/apps/bankcapstone/deploy/github


### Cloning the project

git clone https://github.com/silviatofana/budget_app.git <Your-Build-Directory>
``` 
- cd rails-capstone
- rails s
```


## Built with
- Ruby 3.1.2 on Rails 7.0.3.1
- PostgreSQL

## Prerequisites

Vscode or RubyMine
Setup

## Install
    Ruby
    Rails
    PostgreSql

### Development Database

```
# Sign into posgresql
su - postgres

# Create user
create user 'user_name' with encrypted password 'mypassword'

# Load the schema
rails db:schema:load

#----- If you want prefer this approach
# Create the database
rake db:create

# Create database Migration
rails db:migrate
```

### Run

```
bundle install

rails s
```

## Run tests
```
bundle install
rspec
```

## Authors

👤 **Silvia Tofana**

- GitHub: [silviatofana](https://github.com/silviatofana)
- Twitter: [silviatofana](https://twitter.com/silviatofana)
- LinkedIn: [silviatofana](https://linkedin.com/in/silviatofana)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/silviatofana/budget_app/issues).

## Design

Original design idea by [Gregoire Vella](https://www.behance.net/gregoirevella) on Behance.
The Creative Commons license of the design requires that you give appropriate credit to the author. 
## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./MIT.md) licensed.
