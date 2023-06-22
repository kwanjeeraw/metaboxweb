library(shiny)
ui <- fluidPage(theme = bs_theme(version = 3, bootswatch = "lumen", base_font = font_google("Nunito"),
                                 code_font = font_google("Space Mono")),
                # tags$head(
                #   tags$style(
                #     HTML(".shiny-notification {position:fixed;top: calc(90%);left: calc(1%);}")
                #   )
                # ),
                shinyjs::useShinyjs(),
                shinyjs::extendShinyjs(text = app_jscode, functions = c('disableTab','enableTab')),
                extendShinyjs(text = reset_all_evenData, functions = c("resetSelected")),
                navbarPage(windowTitle="Metabox 2.0",img(src="/www/metabox2.png",width=105), id="tabs",
                )## navbarPage ##

)
