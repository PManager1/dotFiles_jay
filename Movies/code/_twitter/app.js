var util = require('util'),
    twitter = require('twitter');

var twit = new twitter({
    consumer_key: 'X8Grq1lxceBJ1bo4d12rAeXXV',
    consumer_secret: 'vIuBbTentRtUmJ5k9iyknKTBrSa5N65KON3LvSiA07yPTxPmVt',
    access_token_key: '2834351286-MjvSf8PTBaEn5d7QmtnpRFIz59A3gdzoZM5fnBH',
    access_token_secret: 'nghmxxpL9PmA44SfMZe9qXYuYDlZhkkoQ7E2YnY56nMYA'
});


twit.search('nodejs OR #node', function(data) {
    // console.log('data =>', util.inspect(data));
});

// twit.trends('lat=40.21777&amp;long=-74.759361', function(data) {
//     console.log('data =>', util.inspect(data));
// });


// lat=37.781157&amp;long=-122.400612831116