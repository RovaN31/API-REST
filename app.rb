require 'bundler'
 Bundler.require 

$:.unshift File.expand_path("./../lib", __FILE__)

require 'larve'
require 'caverne'
require 'plaine_herbeuse'

Larve.new.larve_json
Caverne.new.caverne_json
PlaineHerbeuse.new.plaine_json