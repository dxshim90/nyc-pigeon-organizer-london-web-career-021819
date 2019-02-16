def nyc_pigeon_organizer(data)
data.each do |attribute, values|#color, gender, live and there corresponding values
    values.each do |value, pigeons|#individual values and there corresponding pigeons
      pigeons.each do |pigeon|#individual pigeons
        if !(by_name[pigeon])#if the new hash does not contain hash for a particular pigeon, create one
          by_name[pigeon] = {}
        end
        if !(by_name[pigeon][attribute]) #if the hash for each pigeon does contain an array for a particular attribute, create one
          by_name[pigeon][attribute] = []
        end
        by_name[pigeon][attribute] << value.to_s
      end
    end
  end
  by_name
        
        
    
end
