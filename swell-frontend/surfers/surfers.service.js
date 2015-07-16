(function () {
  'use strict';
  // local:3000
  angular
    .module('swell.surfers')
    .factory('SurfersService', function ($http, $rootScope) {
      var url = 'http://localhost:3000/api/surfers';
      return {
        getSurfers: getSurfers,
        getSurfer: getSurfer,
        addSurfer: addSurfer,
        updateSurfer: updateSurfer,
        deleteSurfer: deleteSurfer
      };
      function getSurfers() {
        return $http.get(url);
      }

      function getSurfer(id) {
        return $http.get(url + '/' + id);
      }

      function addSurfer(newSurfer) {
        $http.post(url, newSurfer).success(function (resp) {
          $rootScope.$broadcast('surfer:added');
        });
      }
      function updateSurfer(updatedSurfer) {
        $http.patch(url + '/' + updatedSurfer.id, updatedSurfer).success(function (resp) {
          $rootScope.$broadcast('surfer:updated');
        });
      }

      function deleteSurfer(id) {
        $http.delete(url + '/' + id).success(function (res) {
          $rootScope.$broadcast('surfer:deleted');
        });
      }

    });


})();
