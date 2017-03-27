library(KronaR)
shinyServer(function(input, output, session) {
	
	#parameter post of temporary shaman file of Krona data 	
	values <- reactiveValues(query ="tmp")

	output$KronaR <- renderKronaR({
		values$query <- parseQueryString(session$clientData$url_search)
		
		KronaR(values$query[["parameter"]])
        })
	
})
