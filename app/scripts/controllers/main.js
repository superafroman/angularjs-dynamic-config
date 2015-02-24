'use strict';

angular.module('angularjsDynamicConfigApp')
  .controller('MainCtrl', [
    '$scope', 'API_URL',
    function ($scope, API_URL) {
      $scope.apiUrl = API_URL;
    }]);
