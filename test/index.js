/**
 * 
 */
var should = require('chai').should(),
	assert = require('chai').assert,
    lazy = require('../lazyConnections').lazyConnection,
    url="mongodb://localhost:27017/stresstest";

describe('#init', function() {
  it('call lazy create function without err;', function() {
	  lazy(url,function(response){
    	response.status.should.equal("success");
      });
  });

  it('call lazy _db as Mongoclient class', function() {
	  lazy(url,function(response){
	    	response.db.should.be.a('MongoClient');
	    });
  });
  
});