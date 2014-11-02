from :   https://www.npmjs.org/package/twitter

# to get output on seperate file. 
n app.js > out.js


# search

 url :1 =  https://api.twitter.com/1.1/search/tweets.json
 prams =  { q: 'nodejs OR #node' }
 callback =  function (data) {
    // console.log(util.inspect(data));
}

# trends

#± n app.js
url :1 =  https://api.twitter.com/1.1/trends/closest.json
 prams =  { q: 'lat=40.21777&amp;long=-74.759361' }
 callback =  function (data) {
    // console.log(util.inspect(data));
}

