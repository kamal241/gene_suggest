# URL : /gene_suggest?query=:query&species=:species&limit=:limit
 		Example : /gene_suggest?query=BR&species=homo_sapiens&limit=10

# Method : GET

# URL Params :
 	Required : species=[string]	 	e.g. species=homo_sapiens   
			   query=[string]		e.g. query=BRC
	Optional : limit=[integer] 		e.g. limit=25	[default limit 10]

# Success Response : 
	Request URL : /gene_suggest?query=BR&species=homo_sapiens&limit=10
	Method 		: GET
	Status Code : 200
	Content     : { "gene_names": 
					["BRAF", "BRAFP1", "BRAP", "BRAT1", "BRCA1", "BRCA2", "BRCC3", "BRCC3P1", "BRD1", "BRD2"]
				  }

# Error Response :
	## Missing species parameter
	Request URL : /gene_suggest?query=BR&limit=10						
	Method 		: GET
	Status Code : 400
	Content : {'error':'One or more required URL parameter is missing', 
				'syntax':'/gene_suggest?query=:query&species=:species&limit'}

	## Missing query parameter
	Request URL : /gene_suggest?species=homo_sapiens&limit=10			
	Method 		: GET
	Status Code : 400
	Content : {'error':'One or more required URL parameter is missing', 
				'syntax':'/gene_suggest?query=:query&species=:species&limit'}

	## Method POST not allowed
	Request URL : /gene_suggest?query=BR&species=homo_sapiens&limit=10
	Method 		: POST
	Status Code : 405
	Content     : {"message": "The method is not allowed for the requested URL."}

	## Method PUT not allowed
	Request URL : /gene_suggest?query=BR&species=homo_sapiens&limit=10
	Method 		: PUT
	Status Code : 405
	Content     : {"message": "The method is not allowed for the requested URL."}
					
	## Method DELETE not allowed
	Request URL : /gene_suggest?query=BR&species=homo_sapiens&limit=10
	Method 		: DELETE
	Status Code : 405
	Content     : {"message": "The method is not allowed for the requested URL."}

# Sample Call :
		curl 'http://localhost:5002/gene_suggest?query=BR&species=homo_sapiens&limit=10' -X GET	

# Notes :
	The API will send response in JSON format only.
	The Gene name matching is case insensitive. e.g query=br or query=BR or query=Br all will produce same result.