def nyc_pigeon_organizer(data)
pigeon = {}
data.each do |first_level, second_level|
  second_level.each do |third_level, forth_level|
    forth_level.each do |name|
     if !(pigeon[name])
       pigeon[name] = {}
     end
     if !(pigeon[name][first_level])
       pigeon[name][first_level] = []
     end
    pigeon[name][third_level] << third_level.to_s
end
