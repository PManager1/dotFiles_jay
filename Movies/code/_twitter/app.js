var util = require('util'),
    twitter = require('twitter');
var twit = new twitter({
    consumer_key: 'X8Grq1lxceBJ1bo4d12rAeXXV',
    consumer_secret: 'vIuBbTentRtUmJ5k9iyknKTBrSa5N65KON3LvSiA07yPTxPmVt',
    access_token_key: '2834351286-MjvSf8PTBaEn5d7QmtnpRFIz59A3gdzoZM5fnBH',
    access_token_secret: 'nghmxxpL9PmA44SfMZe9qXYuYDlZhkkoQ7E2YnY56nMYA'
});


twit.search('nodejs OR #node', function(data) {
    console.log(util.inspect(data));
});