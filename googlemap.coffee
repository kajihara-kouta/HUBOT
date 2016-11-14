#command @myhubot where is "WORD" 

module.exports = (robot) -> 
   robot.respond /geocode( me)? (.*)/i, (msg) -> 
     query = msg.match[2] 
     geocodeMe msg, query, (text) -> 
       msg.reply text 
   robot.hear /where is (.*)/i, (msg) -> 
     query = msg.match[1] 
     geocodeMe msg, query, (text) -> 
       msg.reply text 
 
geocodeMe = (msg, query, cb) -> 
    msg.http("https://maps.googleapis.com/maps/api/geocode/json") 
      .header('User-Agent', 'Hubot Geocode Location Engine') 
      .query({ 
        address: query 
        sensor: false 
      }) 
      .get() (err, res, body) -> 
        response = JSON.parse(body) 
        return cb "No idea. Tried using a map? https://maps.google.com/" unless response.results?.length 

        location = response.results[0].geometry.location.lat + "," + response.results[0].geometry.location.lng 
        cb "That's somewhere around " + location + " - https://maps.google.com/maps?q=" + location 
