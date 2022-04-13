#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  #89bd2f
  #002934
  options <-
    list(
      sectionsColor = c('#FFFFFF', '#FFFFFF', '#FFFFFF'),
      parallax = TRUE,
      responsiveSlides = TRUE,
      paddingTop = "4em",
      paddingBottom = "1em",
      resetSliders = TRUE,
      verticalCentered = TRUE,
      responsiveSlides = TRUE,
      slidesNavigation = TRUE,
      slidesNavPosition = "top"
    )

  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    fullPage::fullPage(
      menu = c("CORTIVIS" = "cortivis",
               "IODIM" = "iodim"),
      opts = options,
      fullPage::fullSection(
        center = TRUE,
        menu = "cortivis",
        fullPage::fullRow(fullPage::fullSlide(
          tags$img(
            src = "www/cortivis_page1.PNG",
            align = "center",
            style = "max-width: 100%; max-height: 100%; object-fit: contains;"
          )
        )),
        fullPage::fullRow(fullPage::fullSlide(
          tags$img(
            src = "www/cortivis_page2.PNG",
            align = "center",
            style = "max-width: 100%; max-height: 100%; object-fit: contains;"
          )
        )),
        fullPage::fullRow(fullPage::fullSlide(
          tags$img(
            src = "www/cortivis_page3.PNG",
            align = "center",
            style = "max-width: 100%; max-height: 100%; object-fit: contains;"
          )
        )),
        fullPage::fullRow(fullPage::fullSlide(
          tags$img(
            src = "www/cortivis_page4.PNG",
            align = "center",
            style = "max-width: 100%; max-height: 100%; object-fit: contains;"
          )
        ))
      ),
      fullPage::fullSection(
        center = TRUE,
        menu = "iodim",
        fullPage::fullRow(fullPage::fullSlide(
          tags$img(
            src = "www/iodim_page1.PNG",
            align = "center",
            style = "max-width: 100%; max-height: 100%; object-fit: contains;"
          )
        )),
        fullPage::fullRow(fullPage::fullSlide(
          tags$img(
            src = "www/iodim_page2.PNG",
            align = "center",
            style = "max-width: 100%; max-height: 100%; object-fit: contains;"
          )
        )),
        fullPage::fullRow(fullPage::fullSlide(
          tags$img(
            src = "www/Tognetto_IVT.jpeg",
            align = "center",
            style = "max-width: 100%; max-height: 100%; object-fit: contains;"
          )
        ))
      )
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path("www",
                    app_sys("app/www"))

  tags$head(favicon(),
            bundle_resources(path = app_sys("app/www"),
                             app_title = "Medivis"))
            # Add here other external resources
            # for example, you can add shinyalert::useShinyalert())
}
