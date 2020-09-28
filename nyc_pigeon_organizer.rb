def nyc_pigeon_organizer(data)
  # write your code here!
  final_results = data.with_each_object({}) do |(key, value), final_array|
    value.each do |inner_key, names| 
      names.each do |name|
        if !final_array[name]
          final_array[name] = {}
        end
        if !array[name][key]
          array[name][key] = []
        end
      array[name][key].push(inner_key)
      end
    end
  end
end
