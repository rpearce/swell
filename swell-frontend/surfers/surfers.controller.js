(function () {
  'use strict';
  angular
    .module('swell.surfers')
    .controller('SurfersController', function ($scope, SurfersService) {
      SurfersService.getSurfers().success(function (surfers) {
        $scope.surfers = surfers;
      });
      $scope.addSurfer = function (newSurfer) {
        SurfersService.addSurfer(newSurfer);
      };
      $scope.deleteSurfer = function (id) {
        SurfersService.deleteSurfer(id);
      };

    });
})();
