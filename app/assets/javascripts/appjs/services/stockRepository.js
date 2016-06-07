angular.module('finapp')

.factory('stockRepository', ['$http', function($http){
    return {
      getAllStocks: function() {
        var resource_url = '/api/v1/stocks.json';

        return $http.get(resource_url);
      }
    };

  //   var o = {}
  //   o.getAll = function() {
  //   $http.jsonp(resource_url).success(function(data){
  //     angular.copy(data, o.stocks);
  //   });
  // };
  // return o;
}]);
