/*global angular*/
(function () {
    'use strict';
    angular.module('businessApp').controller('projectFormController', [
        '$scope', '$http',
        function ($scope, $http) {
            $scope.success = false;
            $scope.error = false;
            $scope.showSpinner = false;
            $scope.disableSendButton = false;
            
            $scope.sendMessage = function( input ) {
                $scope.showSpinner = true;
                $scope.disableSendButton = true;
                $http({
                    method: 'POST',
                    url: './contact/website-project-form/submit',
                    data: input,
                    headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
                })
                .success( function(data) {
                    $scope.showSpinner = false;
                    $scope.disableSendButton = false;
                    console.log(data);
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