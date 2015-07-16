(function () {
  'use strict';
  angular
    .module('swell', [
      'ngRoute',
      'underscore',
      'swell.surfers'
    ])
    .config(function ($routeProvider) {
      $routeProvider
        .when('/', {
          templateUrl: 'views/main.html'
        })
        .when('/404', {
          template: '<h1>Sorry, page not found</h1>'
        })
        .otherwise({
          redirectTo: '/404'
        });
    });


  angular
    .module('underscore', [])
    .factory('_', function ($window) {
      return $window._;
    });
})();
