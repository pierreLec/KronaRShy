library(KronaR)
shinyServer(function(input, output, session) {
	
	#parameter post of temporary shaman file of Krona data 	
	values <- reactiveValues(query ="tmp")

	output$KronaR <- renderKronaR({
		values$query <- parseQueryString(session$clientData$url_search)
                importT <-"/tmp/text.txt"
                dat <-read.csv(values$query[["parameter"]],header = FALSE, sep = "\t")

		KronaR(dat)
        })
	
})
