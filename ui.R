library(shiny)

shinyUI(fluidPage(
  titlePanel("Simple CGPA Calculator/accumulator"),
  sidebarLayout(
    sidebarPanel(
      numericInput("num_grade1",
                   label = h4("Enter subject(1) grade count"),
                  min = 0, max = 4, value = 1),
      br(),            
      numericInput("num_cred1",
                   label = h4("Enter subject(1) credit hours"),
                   min = 0, max = 5, value = 1),
      br(),
      numericInput("num_grade2",
                   label = h4("Enter subject(2) grade count"),
                   min = 0, max = 4, value = 1),
      br(),            
      numericInput("num_cred2",
                   label = h4("Enter subject(2) credit hours"),
                   min = 0, max = 5, value = 1),
      br(),
      numericInput("num_grade3",
                   label = h4("Enter subject(3) grade count"),
                   min = 0, max = 4, value = 1),
      br(),            
      numericInput("num_cred3",
                   label = h4("Enter subject(3) credit hours"),
                   min = 0, max = 5, value = 1),
      br(),
      numericInput("num_grade4",
                   label = h4("Enter subject(4) grade count"),
                   min = 0, max = 4, value = 1),
      br(),            
      numericInput("num_cred4",
                   label = h4("Enter subject(4) credit hours"),
                   min = 0, max = 5, value = 1),
      br(),
      br(),
      actionButton("action_total", label = "Total")        
      ),
    mainPanel(
      tabsetPanel(
        tabPanel("Total",
                 p(h5("CGPA:")),
                 textOutput("text_credhours"),
                 textOutput("text_cgpa")
                 
        )
      )
    )
  )
))
