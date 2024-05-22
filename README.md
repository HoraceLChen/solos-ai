#  :fire: SOLOS-AI PRACTICE  :fire:

This repo is only intended as an educational example of how to integrate AI in Rails

Some notes about this rails file:
* There is no DB set up
* I have set the root page (main page) to 'dashboard#show' or show.html.erb, this was done by running: <br />
1. `rails generate controller dashboard` <br />
2. Create new view called show.html.erb inside of 'app/views/dashboard' folder <br />
3. go into 'config/routes.rb' and adding:<br />
  `root "dashboard#show"`


# To get started you'll need to do the following:

* Head to https://platform.openai.com/ and sign up for an account.

* NOTE: By default, OpenAI can charge you up to 120$/month. That’s a lot 🙀 I doubt you'll get close to that BUT you should set up a usage limit for safety which you can find under billing.

* Open terminal and navigate to wherever you'd like to clone this repo

* run `gh repo clone HoraceLChen/solos-ai` to clone this repo

* create a .env file in the root directory of the rails file. (basically create a .env file outside of all the app, config, db... etc files)

* inside that .env file you'll need to add this: `OPENAI_ACCESS_TOKEN='YOUR_TOKEN_FROM_OPENAI'` replace 'YOUR_TOKEN_FROM_OPENAI' with your actual token from https://platform.openai.com/ you'll be able to find that token under API keys on the side menu

* Then make a new file called `openai.rb` inside of your config/initializers folder. The file path should look like this: config/initializers/openai.rb
* Add these lines to openai.rb file: <br />
<code>OpenAI.configure do |config|
config.access_token = ENV.fetch("OPENAI_ACCESS_TOKEN")
end </code>

* run `bundle install`
* run `rails s` or `rails server`
* have fun with your new AI buddy lmao


![](https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExODEwbDFxeTltYjA5aXI3anVvdm80cDRrOTU1c3FyamV4dDk1a25ybyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/YoB1eEFB6FZ1m/giphy.gif)
