#' Server
#'
#' Assembles Server
#'
#' @export
#'


r2sym.server <- function(input, output, session) {

  # clear environment
  rm(list = setdiff(ls(), c("input", "output", "session")))

  observeEvent(input$obi2,{
    print(r2symbols::sym(500))
  })

  observeEvent(input$closeapp,{
    print("Symbols dashboard v1.2")
    shiny::stopApp()

  })

  # Include all the libraries and clear the console
  cat("\014")


}