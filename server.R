library(shiny)

shinyServer(function(input, output){
  values<-reactiveValues()
  
  observe({
    input$action_total
    values$totalcred<-isolate({
      input$num_cred1+input$num_cred2+input$num_cred3+input$num_cred4
      #input$num_credit1+input$numcredit2+input$numcredit3+input$numcredit4
    })
    
    values$sub1<-isolate({
      input$num_grade1*input$num_cred1
    })
    
    values$sub2<-isolate({
      input$num_grade2*input$num_cred2
    })
    
    values$sub3<-isolate({
      input$num_grade3*input$num_cred3
    })
    
    values$sub4<-isolate({
      input$num_grade4*input$num_cred4
    })
    
    values$totalgpa<-isolate({
      (values$sub1+values$sub2+values$sub3+values$sub4)/values$totalcred
      #(values$sub1+values$sub2+values$sub3+values$sub4)/values$totalcred
    })
  })
  
  output$text_credhours<-renderText({
    if(input$action_total==0) ""
    else
      paste("Total credit hours is ", values$totalcred)
  })
  
  output$text_gpa<-renderText({
    if(input$action_total==0) ""
    else
      paste("Total gpa is ", values$totalgpa)
  })
  
  output$text_comment<-renderText({
    if(input$action_total==0) ""
    else({
      if(values$totalgpa>3.4)
        paste("Excellent, keep up the good work!")
      else if(values$totalgpa>2.9)
        paste("Good job, continue improving yourself!")
      else if(values$totalgpa>2.4)
        paste("Hang in there, you can do it!")
      else if(values$totalgpa<2.5)
        paste("Continue to work harder in the future")
      else
        paste("Something went wrong with the system")
    })
  })
  
})
