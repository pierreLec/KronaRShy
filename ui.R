library(KronaR)
shinyUI(bootstrapPage(
	mainPanel(
		KronaROutput('KronaR')
    	)
))
