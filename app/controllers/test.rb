def change
  @samples = params[:JSON]
  @datas = []
  @samples.each do |sample|
    user_name = sample[:user_name] + "さん"
    comment = sample[:comment].truncate(23)

    @datas << {user_name: user_name, comment: comment} 
  end
  render json: @datas
end