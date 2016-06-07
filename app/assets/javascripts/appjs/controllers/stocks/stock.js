angular.module('finapp')

.controller('StocksCtrl', ['$scope', 'stockService', function($scope, stockService){
  stockService.getStocks(function(stocks) {
    $scope.stocks = stocks;
  });
}]);
