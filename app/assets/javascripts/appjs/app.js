angular.module('finapp', ['ui.router', 'templates'])

.config(['$stateProvider', '$urlRouterProvider', '$locationProvider', function($stateProvider, $urlRouterProvider, $locationProvider){
  // default route
  $urlRouterProvider.otherwise('/');

  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'static_pages/home.html',
      controller: 'HomeCtrl'
    })
    .state('about', {
      url: '/about',
      templateUrl: 'static_pages/about.html',
      controller: 'AboutCtrl'
    })
    .state('stocks', {
      url: '/stocks',
      templateUrl: 'stocks/index.html',
      controller: 'StocksCtrl'
    });

    // enable HTML5 Mode for SEO
    $locationProvider.html5Mode({enabled:true, requireBase: false});
}]);
