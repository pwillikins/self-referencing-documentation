class DataParser


  def parser(json_data)
    data_hash = {}
    json_data.each do |k, v|
      data_hash << k["word"]["definition"]
    end
    p data_hash
  end

end