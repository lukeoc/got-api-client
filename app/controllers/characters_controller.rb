class CharactersController < ApplicationController
  
  def index
    @characters = Unirest.get("http://localhost:3000/api/v1/characters").body
  end

  def show
    @character = Unirest.get("http://localhost:3000/api/v1/characters/#{params[:id]}").body
  end
end
