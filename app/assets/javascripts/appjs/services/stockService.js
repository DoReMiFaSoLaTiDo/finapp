angular.module('finapp')

.factory('stockService', ['$http', function($http){
  var getStocks = function(callbackFn) {
    $http.get('/api/v1/stocks').success(function(data) {
      callbackFn(data);
    });
  };

  return {
    getStocks: getStocks
  };
}]);
