/*global angular*/
(function () {
    'use strict';
    angular.module('businessApp').controller('contactFormController', [
        '$scope', '$http', '$location',
        function ($scope, $http, $location) {
            $scope.success = false;
            $scope.error = false;
            $scope.showSpinner = false;
            $scope.disableSendButton = false;
            
            $scope.sendMessage = function( input ) {
                $scope.showSpinner = true;
                $scope.disableSendButton = true;
                $http({
                    method: 'POST',
                    url: './contact/submit',
                    data: input,
                    headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
                })
                .success( function(data) {
                    $scope.showSpinner = false;
                    $scope.disableSendButton = false;
                    if ( data.success ) {
                        $scope.success = true;
                        $scope.error = false;
                        $scope.input = {};
                    }
                    else {
                        $scope.error = true;
                    }
                });
            };
            
            
        }]);
}());