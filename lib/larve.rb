class Larve
  def initialize
  	@larves = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves').parsed_response #Ceci demande toutes les monstres de type 'Larves'
  end
  def larve_json #Ici on enregistre les données dans un fichier JSON
  	File.open("./db/monstre_larve.json", "w") do |f|
  		f.write(@larves)
  	end
  	puts "larve_json is done"
  end
end
