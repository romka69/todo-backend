# Simple API Todo App

Simple api for Todo App based on [Ruby on Rails](https://rubyonrails.org/) with sqlite database.

This is the back-end part of the project. [Front-end here](https://github.com/zakharoff/todo-backend)

![](https://i.imgur.com/TczZ25e.png)


## Usage
1. Run server in developer mode (for use fake data)
   ```
   $ cd todo-backend/
   $ bundle
   $ rails db:create
   $ rails db:seed
   $ rails s
   ```

2. Run [Front-end](https://github.com/zakharoff/todo-backend)

## Requirements
`ruby 2.7.1`

## Main commands

#### Install the dependencies
```bash
bundle
```

#### Create databases
```bash
rails db:create
```

#### Create fake data in developer database
```bash
rails db:seed
```

#### Start the server in developer mode
```bash
rails s
```
