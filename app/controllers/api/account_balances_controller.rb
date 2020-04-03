class Api::AccountBalancesController < ApplicationController
  def index
    response = 
      HTTP[
        "X-GEMINI-APIKEY" => ENV["GEMINI_SANDBOX_KEY"],
        "X-GEMINI-PAYLOAD" => "",
        "X-GEMINI-SIGNATURE" => "",
      ]
      .post("https://api.sandbox.gemini.com/v1/balances")
    balances = response.parse["data"]
    binding.pry
    render 'index.json.jb'
  end
end
