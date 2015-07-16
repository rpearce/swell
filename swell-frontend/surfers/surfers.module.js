(function () {
  'use strict';
  angular
    .module('swell.surfers', [
      'ngRoute'
    ])
    .config(function ($routeProvider) {
      $routeProvider
        .when('/surfers', {
          templateUrl: 'surfers/views/list.html',
          controller: 'SurfersController'
        })
        .when('/surfers/new', {
          templateUrl: 'surfers/views/create.html',
          controller: 'SurfersController'
        })
        .when('/surfers/:id', {
          templateUrl: 'surfers/views/show.html',
          controller: 'SurfersController'
        })
        .when('/surfers/:id/update', {
          templateUrl: 'surfers/views/update.html',
          controller: 'SurfersController'
        });

    });
})();
