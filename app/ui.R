library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("Ad Clicks Visualizer"),

    sidebarLayout(
        sidebarPanel(
            radioButtons(
                inputId = "plot_type",
                label = "Plot Type",
                choices = c("line", "scatter", "both"),
                selected = "both",
                inline = TRUE
            ),
            
            dateRangeInput("date_range", label = h3("Date range"),
                           min = "2019-05-01",
                           max = "2020-06-10")
        ),

        mainPanel(
            plotOutput("plot")
        )
    )
))
