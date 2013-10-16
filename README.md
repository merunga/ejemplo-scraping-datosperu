Ejemplo de como scrapear [datosperu.org](datosperu.org)
========================================

Para ejecutar este ejemplo, necesitarás una instalación de ruby con
[harvestman](https://github.com/mion/harvestman) instalado y
una conexión a internet.

Para ejecutar el crawler sólo tienes que ejecutar
```
ruby  crawl.rb
```

Este script visitará las primeras 3 páginas del rubro
[Otras Asociaciones](datosperu.org/ep-otras-asociaciones-ncp-91993-pagina-1.php)
en [datosperu.org](datosperu.org) y extraerá el nombre de la organización y su RUC.

Para entender mejor cómo se hace el scrapero, chequea el script `crawl.rb`, que tiene varios comentarios
Algunos resultados podrás encontrarlos en el archivo `resultados_crawler.txt`

Y por último para poder adaptar este script a tus necesidades, es recomendado que le eches
un vistazo a la tecnología [XPATH](http://www.w3schools.com/xpath/)
