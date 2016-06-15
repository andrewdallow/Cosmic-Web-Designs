/*global angular*/
(function () {
    'use strict';
    angular.module('businessApp').controller('footerController', [
        '$scope',
        function ($scope) {
            $scope.copywriteYear = new Date().getFullYear();
            
        }]);
}());