class Caverne
  def initialize
  	@cavernes = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes').parsed_response #Ceci demande toutes les monstres de type 'Monstres des cavernes'
  end
  def caverne_json #ici on enregistre les données en fichier JSON
  	File.open("./db/monstre_caverne.json", "w") do |f|
  		f.write(@cavernes)
  	end
  	puts "caverne_json is done"
  end
end
