class Larve
  def initialize
  	@larves = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves').parsed_response
  end
  def larve_json
  	File.open("./db/monstre_larve.json", "w") do |f|
  		f.write(@larves)
  	end
  	puts "larve_json is done"
  end
end