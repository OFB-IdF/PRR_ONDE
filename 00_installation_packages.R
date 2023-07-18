## Dépendances 

# Liste des packages utilisés dans les scripts, à renseigner dans
# r-lib/actions/setup-r-dependencies@v2
# sort(
#        unique(
#            c(
#                unlist(
#                    purrr::map(
#                        list.files(pattern = ".R$"), 
#                        attachment::att_from_rscript
#                      )
#                  ),
#                attachment::att_from_rmd("assets/template.Rmd")
#              )
#          )
#        )