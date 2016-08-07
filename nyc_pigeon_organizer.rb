def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  data.each do |attribute, info|
    info.each do |detail, names|
      names.each do |name|
        organized_pigeons[name] ||= {}
        organized_pigeons[name][attribute] ||= []
        organized_pigeons[name][attribute] << detail.to_s
      end
    end
  end
  organized_pigeons
end
