library(shiny)

shinyUI(fluidPage(
  titlePanel("Simple GPA Calculator/accumulator"),
  sidebarLayout(
    sidebarPanel(
      p(h5("Please enter the credit count for each subject : ")),
      p(h5("A = 4")),
      p(h5("B = 3")),
      p(h5("C = 2")),
      p(h5("D = 1")),
      p(h5("Then enter the credit hours for each subject.")),
      p(h5("The minimum credit hours is 1 and the maximum is 5")),
      p(textOutput("text_credhours")),
      p(textOutput("text_gpa")),
      p(textOutput("text_comment")),
      br(),
      br(),
      actionButton("action_total", label = "Total")        
      ),
    mainPanel(
      tabsetPanel(
        tabPanel("Total",
                 p(h5("GPA:")),
                 numericInput("num_grade1",
                              label = h4("Enter subject(1) grade count"),
                              min = 0, max = 4, value = 1),
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
                              min = 0, max = 5, value = 1)
                 
        )
      )
    )
  )
))
