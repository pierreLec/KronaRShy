library(KronaR)
library(Krone)
shinyUI(bootstrapPage(
	mainPanel(
		KronaROutput('KronaR')
    	)
))
