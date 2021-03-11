class SamplesController < ApplicationController
  require "json"

  def change
    @datas = []
    @samples = File.open("#{Rails.public_path}/json/data.json") do |j|
      JSON.load(j)
    end
    @samples.each do |sample|
      user_name = sample["user_name"] + "さん"
      comment = sample["comment"].truncate(20, omission: '')
      @datas << {user_name: user_name, comment: comment} 
    end
    @str = JSON.generate(@datas)
    render xml: @str
  end
end
