var app = angular.module('batchProcessProfile', ['ngAnimate', 'ngSanitize', 'mgcrea.ngStrap','ui.bootstrap']);

app.controller('batchProfileController', ['$scope', '$http', '$timeout', function ($scope, $http, $timeout) {
    $scope.booleanOptions = booleanOptions;
    $scope.submitted = false;
    $scope.rowToEdit = null;
    $scope.mainSectionActivePanel = [0];
    $scope.matchPointsActivePanel = [];
    $scope.addOrOverlayActivePanel = [];
    $scope.fieldOperationsActivePanel = [];
    $scope.dataMappingsActivePanel = [];
    $scope.dataTransformationsActivePanel = [];
    $scope.mainSectionPanel = mainSection;

    $scope.setValuesForBatchProcessType = function (mainSectionPanel) {
        if (mainSectionPanel.batchProcessType == 'Bib Import') {
            $scope.matchPointsPanel = [matchPoint];
            $scope.addOrOverlayPanel = [addOrOverlay];
            $scope.dataMappingsPanel = [dataMapping];
            $scope.dataTransformationsPanel = [dataTransformation];
            $http.get(OLENG_CONSTANTS.PROFILE_GET_GLOBALLY_PROTECTED_FIELDS).success(function (data) {
                $scope.fieldOperationsPanel = data;
                $scope.fieldOperationsPanel.unshift(fieldOperation);
            });
            $scope.mainSectionPanel.bibImportProfileForOrderImport = null;
            $scope.matchPointsActivePanel = [];
            $scope.addOrOverlayActivePanel = [];
            $scope.fieldOperationsActivePanel = [];
            $scope.dataMappingsActivePanel = [];
            $scope.dataTransformationsActivePanel = [];
            $scope.mainSectionPanel.requisitionForTitlesOption = null;
            $scope.mainSectionPanel.marcOnly = false;
            $scope.matchPointsPanel[0].matchPointType = null;
            $scope.matchPointsPanel[0].matchPointDocType = 'Bibliographic';
            $scope.dataMappingsPanel[0].dataMappingDocType = 'Bib Marc';
            $scope.dataMappingsPanel[0].dataField = null;
            $scope.dataMappingsPanel[0].ind1 = null;
            $scope.dataMappingsPanel[0].ind2 = null;
            $scope.dataMappingsPanel[0].subField = null;
            $scope.dataMappingsPanel[0].constant = null;
            $scope.dataMappingsPanel[0].destination = null;
            $scope.dataMappingsPanel[0].field = null;
            $scope.dataMappingsPanel[0].isMultiValue = false;
            $scope.dataMappingsPanel[0].priority = 1;
        } else if (mainSectionPanel.batchProcessType == 'Order Record Import') {
            clearProfileValues();
            $scope.matchPointsPanel = [matchPoint];
            $scope.addOrOverlayPanel = [addOrOverlay];
            $scope.matchPointsPanel[0].matchPointType = null;
            $scope.matchPointsPanel[0].matchPointDocType = null;
            $scope.matchPointsPanel[0].matchPointTypes = orderFields;
            $scope.dataMappingsPanel[0].dataMappingFields = orderFields;
            $scope.mainSectionPanel.requisitionForTitlesOption = 'One Requisition Per Title';
        } else if (mainSectionPanel.batchProcessType == 'Invoice Import') {
            clearProfileValues();
            $scope.matchPointsPanel = [matchPoint];
            $scope.matchPointsPanel[0].matchPointType = null;
            $scope.matchPointsPanel[0].matchPointDocType = null;
            $scope.matchPointsPanel[0].matchPointTypes = invoiceFields;
            $scope.dataMappingsPanel[0].dataMappingFields = invoiceFields;
        }
    };

    function clearProfileValues() {
        $scope.mainSectionPanel.bibImportProfileForOrderImport = null;
        if ($scope.bibImportProfileNames == undefined) {
            $http.get(OLENG_CONSTANTS.PROFILE_GET_NAMES, {params: {"batchType": "Bib Import"}}).success(function (data) {
                $scope.bibImportProfileNames = data;
            });
        }
        $scope.dataMappingsPanel = [dataMapping];
        $scope.matchPointsPanel = [];
        $scope.addOrOverlayPanel = [];
        $scope.fieldOperationsPanel = [];
        $scope.dataTransformationsPanel = [];
        $scope.dataMappingsActivePanel = [];
        $scope.dataMappingsPanel[0].dataMappingDocType = null;
        $scope.dataMappingsPanel[0].dataField = null;
        $scope.dataMappingsPanel[0].ind1 = null;
        $scope.dataMappingsPanel[0].ind2 = null;
        $scope.dataMappingsPanel[0].subField = null;
        $scope.dataMappingsPanel[0].constant = null;
        $scope.dataMappingsPanel[0].destination = null;
        $scope.dataMappingsPanel[0].field = null;
        $scope.dataMappingsPanel[0].priority = 1;
        $scope.dataMappingsPanel[0].isMultiValue = false;
        $scope.dataMappingsPanel.collapsed = false;
    }

    $scope.matchPointAdd = function () {
        var matchPointRow = getNewMatchPointRowByIndex(0);
        if (validateMatchPointRow(matchPointRow, $scope)) {
            return;
        }
        $scope.matchPointsPanel.push(matchPointRow);
        $scope.matchPointsPanel[0].matchPointDocType = null;
        $scope.matchPointsPanel[0].matchPointType = null;
        $scope.matchPointsPanel[0].matchPointValue = null;
        $scope.matchPointsPanel[0].dataField = null;
        $scope.matchPointsPanel[0].ind1 = null;
        $scope.matchPointsPanel[0].ind2 = null;
        $scope.matchPointsPanel[0].subField = null;
        $scope.matchPointsPanel[0].destDataField = null;
        $scope.matchPointsPanel[0].destInd1 = null;
        $scope.matchPointsPanel[0].destInd2 = null;
        $scope.matchPointsPanel[0].destSubField = null;
        $scope.matchPointsPanel[0].isMultiValue = false;
        $scope.matchPointsPanel[0].constant = null;
    };

    $scope.matchPointCopyRow = function (index) {
        var copiedRow = getNewMatchPointRowByIndex(index);
        $scope.matchPointsPanel.splice(index + 1, 0, copiedRow);
    };

    $scope.matchPointEditRow = function(index) {
        if ($scope.rowToEdit === null || $scope.rowToEdit === undefined) {
            $scope.rowToEdit = {
                matchPointDocType: $scope.matchPointsPanel[index].matchPointDocType,
                matchPointType: $scope.matchPointsPanel[index].matchPointType,
                matchPointValue: $scope.matchPointsPanel[index].matchPointValue,
                dataField: $scope.matchPointsPanel[index].dataField,
                ind1: $scope.matchPointsPanel[index].ind1,
                ind2: $scope.matchPointsPanel[index].ind2,
                subField: $scope.matchPointsPanel[index].subField,
                destDataField: $scope.matchPointsPanel[index].destDataField,
                destInd1: $scope.matchPointsPanel[index].destInd1,
                destInd2: $scope.matchPointsPanel[index].destInd2,
                destSubField: $scope.matchPointsPanel[index].destSubField,
                isMultiValue: $scope.matchPointsPanel[index].isMultiValue,
                constant: $scope.matchPointsPanel[index].constant,
                isAddLine: true
            };
            $scope.matchPointsPanel[index].isEdit = true;
            $scope.matchPointsPanel[index].matchPointDocTypes = documentTypes;
            $scope.matchPointsPanel[index].matchPointOrderDocTypes = dataMappingProcessTypes;
            $scope.matchPointsPanel[index].matchPointTypes = getMatchPointType($scope.matchPointsPanel[index].matchPointDocType);
            $scope.matchPointsPanel[index].isAddLine = false;
            $scope.matchPointsPanel[index].title = 'Match Points';
            $scope.populateDestinationFieldValues($scope.matchPointsPanel[index], $scope.matchPointsPanel[index].matchPointDocType,$scope.matchPointsPanel[index].matchPointType);
        }
    };

    function getMatchPointType(type) {
        if (type == 'Holdings') {
            return matchPointObject.matchPointTypeForHoldings;
        } else if (type == 'Item') {
            return matchPointObject.matchPointTypeForItem;
        } else if (type == 'EHoldings') {
            return matchPointObject.matchPointTypeForEHoldings;
        } else if ((type == 'Bib Marc' || type == 'Constant') && $scope.mainSectionPanel.batchProcessType == 'Order Record Import') {
            return orderFields;
        } else if ((type == 'Bib Marc' || type == 'Constant') && $scope.mainSectionPanel.batchProcessType == 'Invoice Import') {
            return invoiceFields;
        }
        return "[]";
    }

    $scope.matchPointUpdateRow = function(index) {
        var updatedRow = {
            matchPointDocType: $scope.matchPointsPanel[index].matchPointDocType,
            matchPointType: $scope.matchPointsPanel[index].matchPointType,
            matchPointValue: $scope.matchPointsPanel[index].matchPointValue,
            dataField: $scope.matchPointsPanel[index].dataField,
            ind1: $scope.matchPointsPanel[index].ind1,
            ind2: $scope.matchPointsPanel[index].ind2,
            subField: $scope.matchPointsPanel[index].subField,
            destDataField: $scope.matchPointsPanel[index].destDataField,
            destInd1: $scope.matchPointsPanel[index].destInd1,
            destInd2: $scope.matchPointsPanel[index].destInd2,
            destSubField: $scope.matchPointsPanel[index].destSubField,
            isMultiValue: $scope.matchPointsPanel[index].isMultiValue,
            constant: $scope.matchPointsPanel[index].constant,
            isAddLine: true
        };
        $scope.matchPointsPanel[index] = updatedRow;
        $scope.matchPointsPanel[index].isEdit = false;
        $scope.rowToEdit = null;
    };

    $scope.matchPointCancelUpdate = function(index) {
        $scope.matchPointsPanel[index].isEdit = false;
        $scope.matchPointsPanel[index] = $scope.rowToEdit;
        $scope.matchPointsPanel[index].isAddLine = true;
        $scope.rowToEdit = null;
    };

    $scope.matchPointRemove = function (matchPoint) {
        var index = $scope.matchPointsPanel.indexOf(matchPoint);
        $scope.matchPointsPanel.splice(index, 1);
    };

    $scope.addOrOverlayAdd = function () {
        $scope.addOrOverlayPanel.push({
            matchOption: $scope.addOrOverlayPanel[0].matchOption,
            addOrOverlayDocType: $scope.addOrOverlayPanel[0].addOrOverlayDocType,
            operation: $scope.addOrOverlayPanel[0].operation,
            addOperation: $scope.addOrOverlayPanel[0].addOperation,
            addOrOverlayField: $scope.addOrOverlayPanel[0].addOrOverlayField,
            addOrOverlayFieldOperation: $scope.addOrOverlayPanel[0].addOrOverlayFieldOperation,
            addOrOverlayFieldValue: $scope.addOrOverlayPanel[0].addOrOverlayFieldValue,
            addItems: $scope.addOrOverlayPanel[0].addItems,
            dataField: $scope.addOrOverlayPanel[0].dataField,
            ind1: $scope.addOrOverlayPanel[0].ind1,
            ind2: $scope.addOrOverlayPanel[0].ind2,
            subField: $scope.addOrOverlayPanel[0].subField,
            linkField: $scope.addOrOverlayPanel[0].linkField,
            isAddLine: true
        });
        $scope.addOrOverlayPanel[0].matchOption = 'If Match Found';
        $scope.addOrOverlayPanel[0].addOrOverlayDocType = 'Bibliographic';
        $scope.addOrOverlayPanel[0].operation = '';
        $scope.addOrOverlayPanel[0].addOrOverlayField = null;
        $scope.addOrOverlayPanel[0].addOrOverlayFieldOperation = null;
        $scope.addOrOverlayPanel[0].addOrOverlayFieldValue = null;
        $scope.addOrOverlayPanel[0].dataField = null;
        $scope.addOrOverlayPanel[0].ind1 = null;
        $scope.addOrOverlayPanel[0].ind2 = null;
        $scope.addOrOverlayPanel[0].subField = null;
        $scope.addOrOverlayPanel[0].linkField = null;

    };

    $scope.addOrOverlayCopyRow = function (index) {
        var copiedRow = getNewAddOrOverlayRowByIndex(index);
        $scope.addOrOverlayPanel.splice(index + 1, 0, copiedRow);
    };

    $scope.addOrOverlayEditRow = function(index) {
        if ($scope.rowToEdit === null || $scope.rowToEdit === undefined) {
            $scope.rowToEdit = {
                matchOption: $scope.addOrOverlayPanel[index].matchOption,
                addOrOverlayDocType: $scope.addOrOverlayPanel[index].addOrOverlayDocType,
                operation: $scope.addOrOverlayPanel[index].operation,
                addOperation: $scope.addOrOverlayPanel[index].addOperation,
                addItems: $scope.addOrOverlayPanel[index].addItems,
                dataField: $scope.addOrOverlayPanel[index].dataField,
                ind1: $scope.addOrOverlayPanel[index].ind1,
                ind2: $scope.addOrOverlayPanel[index].ind2,
                subField: $scope.addOrOverlayPanel[index].subField,
                linkField: $scope.addOrOverlayPanel[index].linkField,
                isAddLine: true
            };
            $scope.addOrOverlayPanel[index].isEdit = true;
            $scope.addOrOverlayPanel[index].matchOptions = matchOptions;
            $scope.addOrOverlayPanel[index].addOrOverlayDocTypes = addOrOverlayDocumentTypes;
            $scope.addOrOverlayPanel[index].linkFields = dataMappingObject.destinationFieldsForBibMarcHoldings;
            $scope.addOrOverlayPanel[index].operations = operations;
            $scope.addOrOverlayPanel[index].bibDoNotMatchOperations = bibDoNotMatchOperations;
            $scope.addOrOverlayPanel[index].doNotMatchOperations = doNotMatchOperations;
            $scope.addOrOverlayPanel[index].addOperations = addOperations;
            $scope.addOrOverlayPanel[index].matchedOrderOperations = matchedOrderOperations;
            $scope.addOrOverlayPanel[index].unmatchedOrderOperations = unmatchedOrderOperations;
            var addOperationWithMultipleOptions = getAddOperationWithMultipleOptions($scope.mainSectionPanel.batchProcessType,$scope.addOrOverlayPanel[index]);
            $scope.addOrOverlayPanel[index].addOperationsWithMultiple = addOperationWithMultipleOptions;
            $scope.addOrOverlayPanel[index].isAddLine = false;
        }
    };

    $scope.addOrOverlayUpdateRow = function(index) {
        var updatedRow = {
            matchOption: $scope.addOrOverlayPanel[index].matchOption,
            addOrOverlayDocType: $scope.addOrOverlayPanel[index].addOrOverlayDocType,
            operation: $scope.addOrOverlayPanel[index].operation,
            addOperation: $scope.addOrOverlayPanel[index].addOperation,
            addItems: $scope.addOrOverlayPanel[index].addItems,
            dataField: $scope.addOrOverlayPanel[index].dataField,
            ind1: $scope.addOrOverlayPanel[index].ind1,
            ind2: $scope.addOrOverlayPanel[index].ind2,
            subField: $scope.addOrOverlayPanel[index].subField,
            linkField: $scope.addOrOverlayPanel[index].linkField,
            isAddLine: true
        };
        $scope.addOrOverlayPanel[index] = updatedRow;
        $scope.addOrOverlayPanel[index].isEdit = false;
        $scope.rowToEdit = null;
    };

    $scope.addOrOverlayCancelUpdate = function(index) {
        $scope.addOrOverlayPanel[index].isEdit = false;
        $scope.addOrOverlayPanel[index] = $scope.rowToEdit;
        $scope.addOrOverlayPanel[index].isAddLine = true;
        $scope.rowToEdit = null;
    };

    $scope.addOrOverlayRemove = function (addOrOverlay) {
        var index = $scope.addOrOverlayPanel.indexOf(addOrOverlay);
        $scope.addOrOverlayPanel.splice(index, 1);
    };

    $scope.fieldOperationAdd = function () {
        var fieldOperationRow = getNewFieldOperationRowByIndex(0);
        if (validateFieldOperationRow(fieldOperationRow, $scope)) {
            return;
        }
        $scope.fieldOperationsPanel.push(fieldOperationRow);
        $scope.fieldOperationsPanel[0].fieldOperationType = 'Profile Protected Field';
        $scope.fieldOperationsPanel[0].dataField = null;
        $scope.fieldOperationsPanel[0].ind1 = null;
        $scope.fieldOperationsPanel[0].ind2 = null;
        $scope.fieldOperationsPanel[0].subField = null;
        $scope.fieldOperationsPanel[0].ignoreGPF = false;
    };

    $scope.fieldOperationCopyRow = function (index) {
        var copiedRow = getNewFieldOperationRowByIndex(index);
        $scope.fieldOperationsPanel.splice(index + 1, 0, copiedRow);
    };

    $scope.fieldOperationEditRow = function(index) {
        if ($scope.rowToEdit === null || $scope.rowToEdit === undefined) {
            $scope.rowToEdit = {
                fieldOperationType: $scope.fieldOperationsPanel[index].fieldOperationType,
                dataField: $scope.fieldOperationsPanel[index].dataField,
                ind1: $scope.fieldOperationsPanel[index].ind1,
                ind2: $scope.fieldOperationsPanel[index].ind2,
                subField: $scope.fieldOperationsPanel[index].subField,
                ignoreGPF: false,
                isAddLine: true
            };
            $scope.fieldOperationsPanel[index].isEdit = true;
            $scope.fieldOperationsPanel[index].fieldOperationTypes = fieldOperations;
            $scope.fieldOperationsPanel[index].fieldOperationType = 'Profile Protected Field';
            $scope.fieldOperationsPanel[index].ignoreGPF = false;
            $scope.fieldOperationsPanel[index].isAddLine = false;
        }
    };

    $scope.fieldOperationUpdateRow = function(index) {
        var updatedRow = {
            fieldOperationType: $scope.fieldOperationsPanel[index].fieldOperationType,
            dataField: $scope.fieldOperationsPanel[index].dataField,
            ind1: $scope.fieldOperationsPanel[index].ind1,
            ind2: $scope.fieldOperationsPanel[index].ind2,
            subField: $scope.fieldOperationsPanel[index].subField,
            ignoreGPF: false,
            isAddLine: true
        };
        $scope.fieldOperationsPanel[index] = updatedRow;
        $scope.fieldOperationsPanel[index].isEdit = false;
        $scope.rowToEdit = null;
    };
    $scope.fieldOperationCancelUpdate = function(index) {
        $scope.fieldOperationsPanel[index].isEdit = false;
        $scope.fieldOperationsPanel[index] = $scope.rowToEdit;
        $scope.fieldOperationsPanel[index].isAddLine = true;
        $scope.rowToEdit = null;
    };

    $scope.fieldOperationRemove = function (fieldOperation) {
        var index = $scope.fieldOperationsPanel.indexOf(fieldOperation);
        $scope.fieldOperationsPanel.splice(index, 1);
    };

    $scope.dataMappingAdd = function () {
        var dataMappingRow = getNewDataMappingRowByIndex(0);
        if (validateDataMappingRow(dataMappingRow, $scope)) {
            return;
        }
        $scope.dataMappingsPanel.push(dataMappingRow);
        $scope.dataMappingsPanel[0].dataMappingDocType = 'Bib Marc';
        $scope.dataMappingsPanel[0].dataField = null;
        $scope.dataMappingsPanel[0].ind1 = null;
        $scope.dataMappingsPanel[0].ind2 = null;
        $scope.dataMappingsPanel[0].subField = null;
        $scope.dataMappingsPanel[0].constant = null;
        $scope.dataMappingsPanel[0].destination = null;
        $scope.dataMappingsPanel[0].field = null;
        $scope.dataMappingsPanel[0].transferOption = 'Pre Marc Transformation';
        $scope.dataMappingsPanel[0].isMultiValue = false;
        $scope.dataMappingsPanel[0].priority = 1;
    };

    $scope.dataMappingCopyRow = function (index) {
        var copiedRow = getNewDataMappingRowByIndex(index);
        $scope.dataMappingsPanel.splice(index + 1, 0, copiedRow);
    };

    $scope.dataMappingEditRow = function(index) {
        if ($scope.rowToEdit === null || $scope.rowToEdit === undefined) {
            $scope.rowToEdit = {
                dataMappingDocType: $scope.dataMappingsPanel[index].dataMappingDocType,
                dataField: $scope.dataMappingsPanel[index].dataField,
                ind1: $scope.dataMappingsPanel[index].ind1,
                ind2: $scope.dataMappingsPanel[index].ind2,
                subField: $scope.dataMappingsPanel[index].subField,
                constant: $scope.dataMappingsPanel[index].constant,
                destination: $scope.dataMappingsPanel[index].destination,
                field: $scope.dataMappingsPanel[index].field,
                transferOption: $scope.dataMappingsPanel[index].transferOption,
                priority: $scope.dataMappingsPanel[index].priority,
                isMultiValue: $scope.dataMappingsPanel[index].isMultiValue,
                isAddLine: true
            };
            $scope.dataMappingsPanel[index].isEdit = true;
            $scope.dataMappingsPanel[index].dataMappingDocTypes = dataMappingProcessTypes;
            $scope.dataMappingsPanel[index].destinations = populateDestinationForDataMappingToEdit($scope.dataMappingsPanel[index].dataMappingDocType);
            $scope.dataMappingsPanel[index].transferOptions = transferOptions;
            if ($scope.mainSectionPanel.batchProcessType == 'Order Record Import') {
                $scope.dataMappingsPanel[index].dataMappingFields = orderFields;
            } else if ($scope.mainSectionPanel.batchProcessType == 'Invoice Import') {
                $scope.dataMappingsPanel[index].dataMappingFields = invoiceFields;
            } else if ($scope.mainSectionPanel.batchProcessType == 'Bib Import') {
                $scope.populateDestinationFields($scope.dataMappingsPanel[index]);
            }
            $scope.populateDestinationFieldValues(null, $scope.dataMappingsPanel[index].dataMappingDocType, $scope.dataMappingsPanel[index].field);
            $scope.dataMappingsPanel[index].isAddLine = false;
        }
    };

    $scope.dataMappingUpdateRow = function(index) {
        var updatedRow = {
            dataMappingDocType: $scope.dataMappingsPanel[index].dataMappingDocType,
            dataField: $scope.dataMappingsPanel[index].dataField,
            ind1: $scope.dataMappingsPanel[index].ind1,
            ind2: $scope.dataMappingsPanel[index].ind2,
            subField: $scope.dataMappingsPanel[index].subField,
            constant: $scope.dataMappingsPanel[index].constant,
            destination: $scope.dataMappingsPanel[index].destination,
            field: $scope.dataMappingsPanel[index].field,
            transferOption: $scope.dataMappingsPanel[index].transferOption,
            priority: $scope.dataMappingsPanel[index].priority,
            isMultiValue: $scope.dataMappingsPanel[index].isMultiValue,
            isAddLine: true
        };
        $scope.dataMappingsPanel[index] = updatedRow;
        $scope.dataMappingsPanel[index].isEdit = false;
        $scope.rowToEdit = null;
    };

    $scope.dataMappingCancelUpdate = function(index) {
        $scope.dataMappingsPanel[index].isEdit = false;
        $scope.dataMappingsPanel[index] = $scope.rowToEdit;
        $scope.dataMappingsPanel[index].isAddLine = true;
        $scope.rowToEdit = null;
    };

    $scope.dataMappingRemove = function (dataMapping) {
        var index = $scope.dataMappingsPanel.indexOf(dataMapping);
        $scope.dataMappingsPanel.splice(index, 1);
    };

    $scope.dataTransformationAdd = function () {
        $scope.dataTransformationsPanel.push({
            dataTransformationDocType: $scope.dataTransformationsPanel[0].dataTransformationDocType,
            dataTransformationActionType: $scope.dataTransformationsPanel[0].dataTransformationActionType,
            dataTransformationSourceField: $scope.dataTransformationsPanel[0].dataTransformationSourceField,
            dataTransformationOperation: $scope.dataTransformationsPanel[0].dataTransformationOperation,
            dataTransformationDestinationField: $scope.dataTransformationsPanel[0].dataTransformationDestinationField,
            dataTransformationConstant: $scope.dataTransformationsPanel[0].dataTransformationConstant,
            dataTransformationStep: $scope.dataTransformationsPanel[0].dataTransformationStep,
            isAddLine: true
        });
        $scope.dataTransformationsPanel[0].dataTransformationDocType = 'Bib Marc';
        $scope.dataTransformationsPanel[0].dataTransformationActionType = 'All';
        $scope.dataTransformationsPanel[0].dataTransformationSourceField = null;
        $scope.dataTransformationsPanel[0].dataTransformationOperation = null;
        $scope.dataTransformationsPanel[0].dataTransformationDestinationField = null;
        $scope.dataTransformationsPanel[0].dataTransformationConstant = null;
        $scope.dataTransformationsPanel[0].dataTransformationStep = 1;
    };

    $scope.dataTransformationCopyRow = function (index) {
        var copiedRow = getNewDataTransformationRowByIndex(index);
        $scope.dataTransformationsPanel.splice(index + 1, 0, copiedRow);
    };

    $scope.dataTransformationEditRow = function(index) {
        if ($scope.rowToEdit === null || $scope.rowToEdit === undefined) {
            $scope.rowToEdit = {
                dataTransformationDocType: $scope.dataTransformationsPanel[index].dataTransformationDocType,
                dataTransformationActionType: $scope.dataTransformationsPanel[index].dataTransformationActionType,
                dataTransformationSourceField: $scope.dataTransformationsPanel[index].dataTransformationSourceField,
                dataTransformationOperation: $scope.dataTransformationsPanel[index].dataTransformationOperation,
                dataTransformationDestinationField: $scope.dataTransformationsPanel[index].dataTransformationDestinationField,
                dataTransformationConstant: $scope.dataTransformationsPanel[index].dataTransformationConstant,
                dataTransformationStep: $scope.dataTransformationsPanel[index].dataTransformationStep,
                isAddLine: true
            };
            $scope.dataTransformationsPanel[index].isEdit = true;
            $scope.dataTransformationsPanel[index].dataTransformationDocTypes = transformationDocumentTypes;
            $scope.dataTransformationsPanel[index].dataTransformationActionTypes = actionTypes;
            $scope.dataTransformationsPanel[index].dataTransformationOperations = transformationOperations;
            $scope.dataTransformationsPanel[index].isAddLine = false;
        }
    };

    $scope.dataTransformationUpdateRow = function(index) {
        var updatedRow = {
            dataTransformationDocType: $scope.dataTransformationsPanel[index].dataTransformationDocType,
            dataTransformationActionType: $scope.dataTransformationsPanel[index].dataTransformationActionType,
            dataTransformationSourceField: $scope.dataTransformationsPanel[index].dataTransformationSourceField,
            dataTransformationOperation: $scope.dataTransformationsPanel[index].dataTransformationOperation,
            dataTransformationDestinationField: $scope.dataTransformationsPanel[index].dataTransformationDestinationField,
            dataTransformationConstant: $scope.dataTransformationsPanel[index].dataTransformationConstant,
            dataTransformationStep: $scope.dataTransformationsPanel[index].dataTransformationStep,
            isAddLine: true
        };
        $scope.dataTransformationsPanel[index] = updatedRow;
        $scope.dataTransformationsPanel[index].isEdit = false;
        $scope.rowToEdit = null;
    };
    $scope.dataTransformationCancelUpdate = function(index) {
        $scope.dataTransformationsPanel[index].isEdit = false;
        $scope.dataTransformationsPanel[index] = $scope.rowToEdit;
        $scope.dataTransformationsPanel[index].isAddLine = true;
        $scope.rowToEdit = null;
    };

    $scope.dataTransformationRemove = function (dataTransformation) {
        var index = $scope.dataTransformationsPanel.indexOf(dataTransformation);
        $scope.dataTransformationsPanel.splice(index, 1);
    };

    $scope.populateMatchPointTypes = function (matchPoint) {
        makeMatchPointValid($scope);
        matchPoint.matchPointType = null;
        matchPoint.dataField = null;
        matchPoint.ind1 = null;
        matchPoint.ind2 = null;
        matchPoint.subField = null;
        matchPoint.matchPointValue = null;
        matchPoint.destDataField = null;
        matchPoint.destInd1 = null;
        matchPoint.destInd2 = null;
        matchPoint.destSubField = null;
        matchPoint.isMultiValue = false;

        if(matchPoint.matchPointDocType == 'Holdings') {
            matchPoint.matchPointTypes = matchPointObject.matchPointTypeForHoldings;
        } else if(matchPoint.matchPointDocType == 'Item') {
            matchPoint.matchPointTypes = matchPointObject.matchPointTypeForItem;
        } else if(matchPoint.matchPointDocType == 'EHoldings') {
            matchPoint.matchPointTypes =  matchPointObject.matchPointTypeForEHoldings;
        } else if($scope.mainSectionPanel.batchProcessType == 'Order Record Import' && (matchPoint.matchPointDocType == 'Bib Marc' || matchPoint.matchPointDocType == 'Constant')) {
            matchPoint.matchPointTypes = orderFields;
        } else if($scope.mainSectionPanel.batchProcessType == 'Invoice Import' && (matchPoint.matchPointDocType == 'Bib Marc' || matchPoint.matchPointDocType == 'Constant')) {
            matchPoint.matchPointTypes = invoiceFields;
        }

    };

    function getNewMatchPointRowByIndex(index) {
        var matchPointNewRow = {
            matchPointDocType: $scope.matchPointsPanel[index].matchPointDocType,
            matchPointType: $scope.matchPointsPanel[index].matchPointType,
            matchPointValue: $scope.matchPointsPanel[index].matchPointValue,
            dataField: $scope.matchPointsPanel[index].dataField,
            ind1: $scope.matchPointsPanel[index].ind1,
            ind2: $scope.matchPointsPanel[index].ind2,
            subField: $scope.matchPointsPanel[index].subField,
            destDataField: $scope.matchPointsPanel[index].destDataField,
            destInd1: $scope.matchPointsPanel[index].destInd1,
            destInd2: $scope.matchPointsPanel[index].destInd2,
            destSubField: $scope.matchPointsPanel[index].destSubField,
            isMultiValue: $scope.matchPointsPanel[index].isMultiValue,
            constant: $scope.matchPointsPanel[index].constant,
            isAddLine: true,
            isEdit: false
        };
        return matchPointNewRow;
    }

    function getNewAddOrOverlayRowByIndex(index) {
        var addOrOverlayNewRow = {
            matchOption: $scope.addOrOverlayPanel[index].matchOption,
            addOrOverlayDocType: $scope.addOrOverlayPanel[index].addOrOverlayDocType,
            operation: $scope.addOrOverlayPanel[index].operation,
            addOperation: $scope.addOrOverlayPanel[index].addOperation,
            addItems: $scope.addOrOverlayPanel[index].addItems,
            dataField: $scope.addOrOverlayPanel[index].dataField,
            ind1: $scope.addOrOverlayPanel[index].ind1,
            ind2: $scope.addOrOverlayPanel[index].ind2,
            subField: $scope.addOrOverlayPanel[index].subField,
            linkField: $scope.addOrOverlayPanel[index].linkField,
            isAddLine: true,
            isEdit: false
        };
        return addOrOverlayNewRow;
    }

    function getNewFieldOperationRowByIndex(index) {
        var fieldOperationNewRow = {
            fieldOperationType: $scope.fieldOperationsPanel[index].fieldOperationType,
            dataField: $scope.fieldOperationsPanel[index].dataField,
            ind1: $scope.fieldOperationsPanel[index].ind1,
            ind2: $scope.fieldOperationsPanel[index].ind2,
            subField: $scope.fieldOperationsPanel[index].subField,
            ignoreGPF: false,
            isAddLine: true,
            isEdit: false
        };
        return fieldOperationNewRow;
    }

    function getNewDataTransformationRowByIndex(index) {
        var dataTransformationNewRow = {
            dataTransformationDocType: $scope.dataTransformationsPanel[index].dataTransformationDocType,
            dataTransformationActionType: $scope.dataTransformationsPanel[index].dataTransformationActionType,
            dataTransformationSourceField: $scope.dataTransformationsPanel[index].dataTransformationSourceField,
            dataTransformationOperation: $scope.dataTransformationsPanel[index].dataTransformationOperation,
            dataTransformationDestinationField: $scope.dataTransformationsPanel[index].dataTransformationDestinationField,
            dataTransformationConstant: $scope.dataTransformationsPanel[index].dataTransformationConstant,
            dataTransformationStep: $scope.dataTransformationsPanel[index].dataTransformationStep,
            isAddLine: true,
            isEdit: false
        };
        return dataTransformationNewRow;
    }

    function getNewDataMappingRowByIndex(index) {
        var dataMappingNewRow = {
            dataMappingDocType: $scope.dataMappingsPanel[index].dataMappingDocType,
            dataField: $scope.dataMappingsPanel[index].dataField,
            ind1: $scope.dataMappingsPanel[index].ind1,
            ind2: $scope.dataMappingsPanel[index].ind2,
            subField: $scope.dataMappingsPanel[index].subField,
            constant: $scope.dataMappingsPanel[index].constant,
            destination: $scope.dataMappingsPanel[index].destination,
            field: $scope.dataMappingsPanel[index].field,
            transferOption: $scope.dataMappingsPanel[index].transferOption,
            priority: $scope.dataMappingsPanel[index].priority,
            isMultiValue: $scope.dataMappingsPanel[index].isMultiValue,
            isAddLine: true,
            isEdit: false
        };
        return dataMappingNewRow;
    }

    function setDataMappingDropDowns(dataMapping) {
        dataMapping.dataMappingDocTypes = dataMappingProcessTypes;
        dataMapping.destinations = populateDestinationForDataMappingToEdit(dataMapping.dataMappingDocType);
        dataMapping.transferOptions = transferOptions;
        if ($scope.mainSectionPanel.batchProcessType == 'Order Record Import') {
            dataMapping.dataMappingFields = orderFields;
        } else if ($scope.mainSectionPanel.batchProcessType == 'Invoice Import') {
            dataMapping.dataMappingFields = invoiceFields;
        } else if ($scope.mainSectionPanel.batchProcessType == 'Bib Import') {
            $scope.populateDestinationFields(dataMapping);
        }
        $scope.populateDestinationFieldValues(null, dataMapping.dataMappingDocType, dataMapping.field);
    }

    $scope.setDefaultsDataTransformation = function (dataTransformation) {
        dataTransformation.dataTransformationActionType = 'All';
        dataTransformation.dataTransformationAction = 'Add';
        dataTransformation.dataTransformationField = null;
        dataTransformation.dataTransformationFieldValue = null;
        dataTransformation.dataTransformationSourceField = null;
        dataTransformation.dataTransformationOperation = null;
        dataTransformation.dataTransformationDestinationField = null;
    };

    $scope.setDefaultsAction = function (dataTransformation) {
        dataTransformation.dataTransformationField = null;
        dataTransformation.dataTransformationFieldValue = null;
        dataTransformation.dataTransformationSourceField = null;
        dataTransformation.dataTransformationOperation = null;
        dataTransformation.dataTransformationDestinationField = null;
    };

    $scope.setDefaultsAddOrOverlay = function (batchProcessType, addOrOverlay) {
        addOrOverlay.addOrOverlayField = null;
        addOrOverlay.addOrOverlayFieldOperation = null;
        addOrOverlay.addOrOverlayFieldValue = null;
        addOrOverlay.operation = '';
        addOrOverlay.addOperation = '';
        addOrOverlay.addItems = false;
        addOrOverlay.dataField = null;
        addOrOverlay.ind1 = null;
        addOrOverlay.ind2 = null;
        addOrOverlay.subfield = null;
        addOrOverlay.linkField = null;

    };

    function getAddOperationWithMultipleOptions(batchProcessType, addOrOverlay) {
        if (batchProcessType == 'Bib Import' && (addOrOverlay.matchOption == 'If Match Found' || addOrOverlay.matchOption == 'If Match Not Found')
            && (addOrOverlay.addOrOverlayDocType == 'Holdings' || addOrOverlay.addOrOverlayDocType == 'EHoldings' || addOrOverlay.addOrOverlayDocType == 'Item')
            && addOrOverlay.operation == 'Add') {
            return createMultiple;
        } else if (batchProcessType == 'Bib Import' && addOrOverlay.matchOption == 'If Match Found'
            && (addOrOverlay.addOrOverlayDocType == 'Holdings' || addOrOverlay.addOrOverlayDocType == 'EHoldings' || addOrOverlay.addOrOverlayDocType == 'Item')
            && addOrOverlay.operation == 'Overlay') {
            return overlayMultiple;
        } else {
            return null;
        }
    }

    $scope.populateActionDropDownValues = function (batchProcessType, addOrOverlay) {
        addOrOverlay.addOperationsWithMultiple = getAddOperationWithMultipleOptions(batchProcessType, addOrOverlay);
    };

    $scope.populateDestinationFields = function (dataMapping) {
        if(dataMapping.dataMappingDocType == 'Bib Marc') {
            if(dataMapping.destination == 'Holdings') {
                dataMapping.dataMappingFields = dataMappingObject.destinationFieldsForBibMarcHoldings;
            } else if(dataMapping.destination == 'Item') {
                dataMapping.dataMappingFields = dataMappingObject.destinationFieldsForBibMarcItems;
            }else if(dataMapping.destination == 'EHoldings') {
                dataMapping.dataMappingFields =  dataMappingObject.destinationFieldsForBibMarcEHoldings
            }
        } else if(dataMapping.dataMappingDocType == 'Constant') {
            if(dataMapping.destination == 'Bibliographic') {
                dataMapping.dataMappingFields = dataMappingObject.destinationFieldsForConstantsBib;
            }else if(dataMapping.destination == 'Holdings') {
                dataMapping.dataMappingFields = dataMappingObject.destinationFieldsForConstantsHoldings;
            } else if(dataMapping.destination == 'Item') {
                dataMapping.dataMappingFields = dataMappingObject.destinationFieldsForConstantsItems;
            }else if(dataMapping.destination == 'EHoldings') {
                dataMapping.dataMappingFields =  dataMappingObject.destinationFieldsForConstantsEHoldings;
            }
        }

    };

    $scope.populateDestinationFieldValues = function (dataObject, dataType, fieldType) {
        if (dataType !== 'Bib Marc' || dataObject.title == 'Match Points') {
            $scope.constantValues = [];
            if (fieldType === 'Staff Only') {
                $scope.constantValues = booleanOptionsYorN;
            } else if (fieldType === 'Discount Type') {
                $scope.constantValues = discountTypes;
            } else if (fieldType === 'Receiving Required' || fieldType === 'Use Tax Indicator' || fieldType === 'Pay Req Positive Approval Req' || fieldType === 'Purchase Order Confirmation Indicator' || fieldType === 'Route To Requestor') {
                $scope.constantValues = booleanOptionsYorN;
            }
            getMaintenanceDataForFieldTypeForDropDown(fieldType, $scope, $http);
        }
    };

    $scope.populationDestinations = function (dataMapping) {
        makeDataMappingValid($scope);
        dataMapping.dataField = null;
        dataMapping.ind1 = null;
        dataMapping.ind2 = null;
        dataMapping.subField = null;
        dataMapping.destination = null;
        dataMapping.field = null;
        dataMapping.constant = null;
        if (dataMapping.dataMappingDocType == 'Bib Marc') {
            dataMapping.destinations = dataMappingObject.destinationForBibMarc;
        } else if (dataMapping.dataMappingDocType == 'Constant') {
            dataMapping.destinations = dataMappingObject.destinationForConstant;
        }
    };

    function populateDestinationForDataMappingToEdit(type) {
        if(type == 'Bib Marc') {
            return dataMappingObject.destinationForBibMarc;
        }else if(type == 'Constant') {
            return dataMappingObject.destinationForConstant;
        }
        return [];
    }

    $scope.submit = function () {
        $scope.submitted = true;
        removeEmptyValues();
        var profile = {
            "profileId": $scope.mainSectionPanel.profileId,
            "profileName": $scope.mainSectionPanel.profileName,
            "description": $scope.mainSectionPanel.profileDescription,
            "batchProcessType": $scope.mainSectionPanel.batchProcessType,
            "bibImportProfileForOrderImport": $scope.mainSectionPanel.bibImportProfileForOrderImport,
            "requisitionForTitlesOption": $scope.mainSectionPanel.requisitionForTitlesOption,
            "marcOnly": $scope.mainSectionPanel.marcOnly,
            "forceLoad": $scope.matchPointsActivePanel.forceLoad,
            "batchProfileMatchPointList": $scope.matchPointsPanel,
            "batchProfileAddOrOverlayList": $scope.addOrOverlayPanel,
            "batchProfileFieldOperationList": $scope.fieldOperationsPanel,
            "batchProfileDataMappingList": $scope.dataMappingsPanel,
            "batchProfileDataTransformerList": $scope.dataTransformationsPanel
        };
        var userName = parent.$("div#login-info").text();
        var user = userName.replace("    Logged in User:","").trim();
        var config = {headers:  {
            "userName" : user
        }
        };

        $http.post(OLENG_CONSTANTS.PROFILE_SUBMIT, profile,config)
            .success(function (data) {
                $scope.profile = data;
                $scope.message = 'Document was successfully submitted.';
            });
    };

    $scope.init = function () {
        //JSON.stringify(vars)
        var urlVars = getUrlVars();
        var profileId = urlVars['profileId'];
        var action = urlVars['action'];
        if (profileId !== null && profileId !== undefined && profileId !== '') {
            var data = {};
            data["profileId"] = profileId;
            data["action"] = action;
            $timeout(function() {
            $http.post(OLENG_CONSTANTS.PROFILE_EDIT, JSON.stringify(data))
                .success(function (data) {
                    $scope.profile = data;
                    $scope.mainSectionPanel.profileId = data.profileId;
                    $scope.mainSectionPanel.profileName = data.profileName;
                    $scope.mainSectionPanel.profileDescription = data.description;
                    $scope.mainSectionPanel.batchProcessType = data.batchProcessType;
                    $scope.mainSectionPanel.bibImportProfileForOrderImport = data.bibImportProfileForOrderImport;
                    $scope.mainSectionPanel.requisitionForTitlesOption = data.requisitionForTitlesOption;
                    $scope.mainSectionPanel.marcOnly = data.marcOnly;
                    $scope.matchPointsActivePanel.forceLoad = data.forceLoad;
                    $scope.matchPointsPanel = data.batchProfileMatchPointList;
                    $scope.addOrOverlayPanel = data.batchProfileAddOrOverlayList;
                    $scope.fieldOperationsPanel = data.batchProfileFieldOperationList;
                    $scope.dataMappingsPanel = data.batchProfileDataMappingList;
                    $scope.dataTransformationsPanel = data.batchProfileDataTransformerList;

                    addEmptyValueToAddNew(data.batchProcessType);

                    if ((data.batchProcessType == 'Order Record Import' || data.batchProcessType == 'Invoice Import')) {
                        $scope.dataMappingsActivePanel = [];
                        $scope.dataMappingsPanel.collapsed = false;
                        if ($scope.bibImportProfileNames == undefined) {
                            $http.get(OLENG_CONSTANTS.PROFILE_GET_NAMES, {params: {"batchType": "Bib Import"}}).success(function (data) {
                                $scope.bibImportProfileNames = data;
                            });
                        }
                    }
                });
            }, 700, false);
        }
    };

    $scope.cancel = function () {
        window.location = OLENG_CONSTANTS.PROFILE_CANCEL;
    };

    var removeEmptyValues = function () {
        $scope.matchPointsPanel.splice(0, 1);
        $scope.addOrOverlayPanel.splice(0, 1);
        $scope.fieldOperationsPanel.splice(0, 1);
        $scope.dataMappingsPanel.splice(0, 1);
        $scope.dataTransformationsPanel.splice(0, 1);
    };

    var addEmptyValueToAddNew = function (batchProcessType) {
        $scope.matchPointsPanel.unshift(matchPoint);
        $scope.addOrOverlayPanel.unshift(addOrOverlay);
        $scope.fieldOperationsPanel.unshift(fieldOperation);
        $scope.dataTransformationsPanel.unshift(dataTransformation);
        if (batchProcessType == 'Bib Import') {
            $scope.dataMappingsPanel.unshift(dataMapping);
        } else if (batchProcessType == 'Order Record Import') {
            $scope.dataMappingsPanel.unshift(dataMappingOrder);
        } else if (batchProcessType == 'Invoice Import') {
            $scope.dataMappingsPanel.unshift(dataMappingInvoice);
        }
    };

    var getUrlVars = function () {
        var vars = {}, hash;
        var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
        for (var i = 0; i < hashes.length; i++) {
            hash = hashes[i].split('=');
            vars[hash[0]] = hash[1];
        }
        return vars;
    }
}]);