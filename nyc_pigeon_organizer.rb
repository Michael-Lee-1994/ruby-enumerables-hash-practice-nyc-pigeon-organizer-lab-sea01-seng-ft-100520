def nyc_pigeon_organizer(data)
  # write your code here!
  data.with_each_object({}) do |(key, value), array|
    value.each do |inner_key, names| 
      names.each do |name|
        if !array[name]
          array[name] = {}
        end
        if !array[name][key]
          array[name][key] = []
      end
      array[name][key].push
    end
    array
  end
end
