class MessageController < ApplicationController
  def chat_post
    if params[:message]
      @message = params[:message]
      # client = OpenAI::Client.new
      # chaptgpt_response = client.chat(parameters: {
      #   model: "gpt-3.5-turbo",
      #   messages: [{ role: "user", content: @message }]
      # })
      # @response = chaptgpt_response
      # redirect_to chat_path(@response)

      client = OpenAI::Client.new
      dalle_response = client.images.generate(parameters: {
        model: "dall-e-3",
        prompt: @message,
        n: 1,
        size: "1024x1024"
      })

      # Access the URL of the generated image
      @response = dalle_response
      redirect_to chat_path(@response)
    end
  end

  def chat
    @content = params

  end
end
