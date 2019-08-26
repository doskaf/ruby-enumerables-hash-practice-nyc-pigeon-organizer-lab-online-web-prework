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
data[:color]








end