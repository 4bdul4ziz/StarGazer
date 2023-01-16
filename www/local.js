$(document).ready(function(){
  Shiny.addCustomMessageHandler('nasaInfo',function(body){

  		var url=[]
  		var title = []
  		var explanation = []


      url.push({url:body.url})
      title.push({title:body.title})
      explanation.push({explanation:body.explanation})

      Shiny.onInputChange('explanation',JSON.stringify(explanation)); //sending just image url
      Shiny.onInputChange('title',JSON.stringify(title)); //sending just image url
  		Shiny.onInputChange('imageURL',JSON.stringify(url)); //sending just image url
 
  		
  	})
})