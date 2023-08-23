#ENV["HUMOR_API_KEY"]

class JokesController < ApplicationController
  def index
    #render json: ENV["HUMOR_API_KEY"]

    response = HTTP.headers({
      "x-rapidapi-host" => "humor-jokes-and-memes.p.rapidapi.com",
      "x-rapidapi-key" => ENV["HUMOR_API_KEY"],
    })
      .get("https://humor-jokes-and-memes.p.rapidapi.com/jokes/search?number=10&keywords=horse,man")
    data = JSON.parse(response.body)
    render json: data

    # render json: "Hello"

  end
end

#{ENV['HUMOR_API_KEY']}
# ("Bearer #{ENV['HUMOR_API_KEY']}")
#HTTP.auth(("Bearer #{ENV['HUMOR_API_KEY']}")
