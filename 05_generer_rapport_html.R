##%######################################################%##
#                                                          #
####    Generer le fichier Rmarkdown au format html     ####
#                                                          #
##%######################################################%##

## version: 23-11-2022

print("Creation du fichier html !")

source("_config.R")

rmarkdown::render("assets/template.Rmd", 
                  output_file = "../index.html",
                  params = list(
                    set_author = conf_auteur,
                    set_title = conf_titre
                  ),
                  quiet = TRUE)

readLines("index.html") %>%
  stringr::str_replace(
    pattern = "</title>",
    replacement = '</title>
    
<script data-goatcounter="https://ofb-idf.goatcounter.com/count" async src="//gc.zgo.at/count.js"></script>'
  ) %>%
  writeLines("index.html")
