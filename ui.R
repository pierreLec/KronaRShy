if (!require(KronaR)) {
 devtools::install_github('pierreLec/KronaR')
 library(KronaR)
}

shinyUI(bootstrapPage(
	mainPanel(
		KronaROutput('KronaR')
    	)
))
