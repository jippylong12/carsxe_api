Dir[File.join(__dir__, 'client/*.rb')].sort.each do |file|
  require file
end