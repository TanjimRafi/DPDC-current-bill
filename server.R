function(input , output){
        
        # 1st Tab-Panel
        datasetInput1 <- reactive({
                
                if(input$num2 - input$num1 < 76){
                        tk <- (input$num2 - input$num1)*4.19
                        tk <- data.frame(tk)
                        names(tk) <- "TAKA"
                        print(tk)
                        
                }else if(input$num2 - input$num1 < 201){
                        tk <- (input$num2 - input$num1)*5.72
                        tk <- data.frame(tk)
                        names(tk) <- "TAKA"
                        print(tk)
                        
                }else if(input$num2 - input$num1 < 301){
                        tk <- (input$num2 - input$num1)*6.00
                        tk <- data.frame(tk)
                        names(tk) <- "TAKA"
                        print(tk)
                }else if(input$num2 - input$num1 < 401){
                        tk <- (input$num2 - input$num1)*6.34
                        tk <- data.frame(tk)
                        names(tk) <- "TAKA"
                        print(tk)
                }else if(input$num2 - input$num1 < 601){
                        tk <- (input$num2 - input$num1)*9.94
                        tk <- data.frame(tk)
                        names(tk) <- "TAKA"
                        print(tk)
                }else{
                        tk <- (input$num2 - input$num1)*11.46
                        tk <- data.frame(tk)
                        names(tk) <- "TAKA"
                        print(tk)
                }
        })
        
        # Output text box
        output$contents1 <- renderPrint({
                if(input$submitbutton1 > 0){
                        isolate("Calculation complete!")
                }else{
                        return("Server is ready for calculation.")
                }
        })
        
        # Calculate Taka
        output$tabledata1 <- renderTable({
                if(input$submitbutton1 > 0){
                        isolate(datasetInput1())
                }
        })
        
        
        # 2nd Tab-Panel
        datasetInput2 <- reactive({
                tk <- (input$num4 - input$num3)*12
                tk <- data.frame(tk)
                names(tk) <- "TAKA"
                print(tk)
        })
        
        # Output text box
        output$contents2 <- renderPrint({
                if(input$submitbutton2 > 0){
                        isolate("Calculation complete!")
                }else{
                        return("Server is ready for calculation.")
                }
        })
        
        # Calculate Taka
        output$tabledata2 <- renderTable({
                if(input$submitbutton2 > 0){
                        isolate(datasetInput2())
                }
        })
}
