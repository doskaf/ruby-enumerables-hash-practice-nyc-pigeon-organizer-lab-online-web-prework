def nyc_pigeon_organizer(data)
  final = {}
  data.each do |category, category_data|
    category_data.each do |type, listed_names|
      listed_names.each do |name|
        final[name] = {color: [], gender: [], lives: []}
      end
    end
  end
information = final.keys
data[:color].each do |bird_color, name|
  name.each do |bird_name|
    information.each do |item|
      if bird_name === item
        final[item][:color] << bird_color.to_s
      end
    end
  end
end
data[:gender].each do |bird_gender, type|
  type.each do |bird_name|
    information.each do |item|
      if bird_name === item
        final[item][:gender] << bird_gender.to_s
      end
    end
  end
end
data[:lives].each do |location, name|
  name.each do |bird_name|
    information.each do |item|
      if bird_name === item
        final[item][:gender] << location
      end
    end
  end
end
return final
end