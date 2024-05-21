class DashboardController < ApplicationController

  def show
  # here im going to set up the ChatGPT API call. Why are we doing it here? because this is the controller for the show page. the show page is where we're going to get our input, run our AI API call and display the results.

  # defining a variable for a new OPENAI API call. here we're calling it 'client'
  # we create a new API call by doing OpenAI::Client.new
  # How does rails know what all this is? because we installed the gem - gem "ruby-openai" which came with a lot of pre-defined variables we can use.
    client = OpenAI::Client.new

  # Defining a variable to hold the response from chatgpt/openai. we're going to call it chaptgpt_response
  # what is client.chat? you can refer to the API: https://platform.openai.com/docs/api-reference/making-requests
  # its a bit complicated but to be honest, you could even ask Chatgpt itself to craft you a template for this. But I highly suggest reading the documentation so you understand how the API works
  # if you're confused about what its saying you could have GPT explain it to you in more simple terms

  chaptgpt_response = client.chat(parameters: {

    # here you can define the model of chat gpt you want, im using gpt 3.5 turbo because its the fastest text model
    model: "gpt-3.5-turbo",

    # crafting the message that we'll send. our role is a user, our content is the actual message we'd send through to chatgpt
    messages: [{ role: "user", content: "My name is Solo, tell me that this is a successful API call!"}]
  })
    # create an instance variable @content for hold that response and send it to the show page.
  @content = chaptgpt_response
  end
end
