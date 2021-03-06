library(shiny)
library(here)
library(dplyr)

source(here("ggplot.R"))

shinyServer(function(input, output) {

    options(stringsAsFactors = FALSE)
    
    # Import data
    ad_clicks <- read.csv(here("ad_clicks.csv")) %>%
        mutate(day = as.Date(day))
    
    # Create plot output object
    output$plot <- renderPlot({
        
        plot_clicks(ad_clicks, plot_type = input$plot_type)
        
        #plot_clicks(ad_clicks$day > input$date_range[1] & ad_clicks$day < input$date_range[2] , plot_type = input$plot_type)
        # did not work and ran out of time to troubleshoot
    })

    
})
