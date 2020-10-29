fluidPage(
        title = "DPDC current bill",
        
        # Navigation bar page
        navbarPage(
                title = "Current Bill (DPDC)",
                
                # 1st Panel
                tabPanel(
                        title = "LT-A",
                        
                        sidebarPanel(
                                h3("Input"),     
                                numericInput(inputId = "num1"                # num1 will be sent to the server
                                             , label = "Previous Month Reading:"
                                             , value = 50
                                ),
                                numericInput(inputId = "num2"                # num2 will be sent to the server
                                             , label = "Present Month Reading:"
                                             , value = 100
                                ),
                                actionButton(
                                        inputId = "submitbutton1",
                                        label = "Submit",
                                        class = "btn btn-primary"
                                )
                        ), # Side Panel
                        mainPanel(
                                h3("Output"),
                                verbatimTextOutput(
                                        outputId = "contents1"
                                ),
                                tableOutput(
                                        outputId = "tabledata1"
                                )
                        ) # Main Panel
                ),
                
                # 2nd Panel
                tabPanel(
                        title = "LT-E",
                        
                        sidebarPanel(
                                h3("Input"),
                                numericInput(inputId = "num3"                # num3 will be sent to the server
                                             , label = "Previous Month Reading:"
                                             , value = 50
                                ),
                                numericInput(inputId = "num4"                # num4 will be sent to the server
                                             , label = "Present Month Reading:"
                                             , value = 100
                                ),
                                actionButton(
                                        inputId = "submitbutton2",
                                        label = "Submit",
                                        class = "btn btn-primary"
                                )
                        ), # Side Panel
                        
                        mainPanel(
                                h3("Output"),
                                verbatimTextOutput(
                                        outputId = "contents2"
                                ),
                                tableOutput(
                                        outputId = "tabledata2"
                                )
                        ) # Main Panel
                ) 
        ) # navbarPage
) # fluidPage
