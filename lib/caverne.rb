class Caverne
  def initialize
  	@cavernes = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes').parsed_response
  end
  def caverne_json
  	File.open("./db/monstre_caverne.json", "w") do |f|
  		f.write(@cavernes)
  	end
  	puts "caverne_json is done"
  end
end