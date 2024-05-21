#  :fire: SOLOS-AI PRACTICE  :fire:

This repo is only intended as an educational example of how to integrate AI in Rails

Some notes about this rails file:
* There is no DB set up
* I have set the root page (main page) to 'dashboard#show' or show.html.erb, this was done by running: <br />
```rails generate controller dashboard ``` <br />
create new view called show.html.erb inside of 'app/views/dashboard' folder <br />
  go into 'config/routes.rb' and adding: ```root "dashboard#show"```

# To get started you'll need to do the following:

* Head to https://platform.openai.com/ and sign up for an account.

* NOTE: By default, OpenAI can charge you up to 120$/month. That’s a lot 🙀 I doubt you'll get close to that BUT you should set up a usage limit for safety which you can find under billing.

* Open terminal and navigate to wherever you'd like to clone this repo

* run ```gh repo clone HoraceLChen/solos-ai``` to clone this repo

* create a .env file in the root directory of the rails file. (basically create a .env file outside of all the app, config, db... etc files)

* inside that .env file you'll need to add this: ```OPENAI_ACCESS_TOKEN='YOUR_TOKEN_FROM_OPENAI'``` replace 'YOUR_TOKEN_FROM_OPENAI' with your actual token from https://platform.openai.com/ you'll be able to find that token under API keys on the side menu

* Then make a new file: config/initializers/openai.rb and add these lines: <br />
<code>OpenAI.configure do |config| <br />
config.access_token = ENV.fetch("OPENAI_ACCESS_TOKEN") <br />
end <code>

* run ```bundle install```


* ...
# solos-ai
