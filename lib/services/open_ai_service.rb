require 'openai'
require 'dotenv'
Dotenv.load

class OpenAiService
  def initialize
    @openai_client = OpenAI::Client.new(access_token: ENV['OPEN_AI_KEY'])
  end

  def call
    response = @openai_client.chat(
      parameters: {
        model: "gpt-3.5-turbo",
        messages: [{ role: 'user', content: "Qual o nome do Pelé?"}],
      })

    response.dig('choices', 0, 'message', 'content')
  end
end