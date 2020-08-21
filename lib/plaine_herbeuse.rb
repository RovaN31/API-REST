class PlaineHerbeuse
  def initialize
  	@herbeuse = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des Plaines herbeuses').parsed_response #Ceci demande toutes les monstres de type 'Monstres des Plaines herbeuses'
  end
  def plaine_json #Ici on enregistre les données dans un fichier JSON
  	File.open("./db/monstre_plaine_herbeuse.json", "w") do |f|
  		f.write(@herbeuse)
  	end
  	puts "plaine_json is done"
  end
end
