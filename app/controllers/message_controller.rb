class MessageController < ApplicationController
  def chat_post
    if params[:message]
      @message = params[:message]
      client = OpenAI::Client.new
      chaptgpt_response = client.chat(parameters: {
        model: "gpt-3.5-turbo",
        messages: [{ role: "user", content: @message }]
      })
      @response = chaptgpt_response
      redirect_to chat_path(@response)
    end
  end

  def chat
    @content = params
  end
end
