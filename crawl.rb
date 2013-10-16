require 'harvestman'

base_url = "http://www.datosperu.org/" # papina principal
crawl_url = base_url+"ep-otras-asociaciones-ncp-91993-pagina-*.php" #plantilla se paginas a visitas

Harvestman.crawl crawl_url, (1..2) do # vamos a visitar solo las paginas 1 y 2:
# http://datosperu.org/ep-otras-asociaciones-ncp-91993-pagina-1.php
# http://datosperu.org/ep-otras-asociaciones-ncp-91993-pagina-2.php
  xpath "//nav/ol/li/a"  do |it|
# para cada link de una empresa (estos links estan en el atributo href de los
# tags a dentro de nav > ol > li)
    inner_crawl_url = base_url + (it.xpath '@href')
    Harvestman.crawl inner_crawl_url do # un nuevo crawl al link encontrado
      begin
      	puts "Nombre:" +( xpath "//header/h1" ) # el Nombre de la empresa está en el tag H1
      	puts "RUC:" +( xpath "//dl[3]/dd" ) # el RUC está en el cuarto DL dentro del tag DD
      rescue
        puts "***** Error con url: "+ inner_crawl_url # Ooops! o la data no está u otra cosa paso
      ensure
        puts '-------------'
      end
    end
  end
end

