import 'dart:convert';
import 'dart:io';

import 'package:billable_hours_app/src/core/models/get_company_response.dart';
import 'package:billable_hours_app/src/utils/app_logger.dart';
import 'package:flutter/material.dart';
import 'package:billable_hours_app/src/core/models/parse_csv_response.dart';
import 'package:billable_hours_app/src/core/network/index.dart';
import 'package:billable_hours_app/src/core/providers/provider_response.dart';
import 'package:permission_handler/permission_handler.dart';

class BillProvider with ChangeNotifier, ProviderResponse {
  NetworkServiceInterface networkService;

  BillProvider({this.networkService});

  ParseCsvResponse parseCsvResponse;
  GetCompanyResponse getCompanyResponse;

  void _setState({loading, isReady = false, hasError = false, errorMsg = ''}) {
    update(
      loading: loading,
      hasErr: hasError,
      errorMsg: errorMsg,
      ready: isReady,
    );
    notifyListeners();
  }

  Future<ParseCsvResponse> parseCsv(String filePath) async {
    bool isGranted = await Permission.storage.isGranted;
    if (!isGranted) {
      PermissionStatus status = await Permission.storage.request();
      if (status != PermissionStatus.granted) {
        return null;
      }
    }
    parseCsvResponse = null;
    getCompanyResponse = null;
    _setState(loading: true);
    try {
      File file = File('$filePath');
      String fileInBase64 = base64.encode(file.readAsBytesSync());
      var data = {"payload": fileInBase64};
      NetworkServiceResponse response =
          await networkService.post(Endpoints.parseCsv, body: data);
      parseCsvResponse = ParseCsvResponse.fromJson(getResponseData(response));
      _setState(loading: false, hasError: false);
      return parseCsvResponse;
    } catch (e) {
      _setState(loading: false, hasError: true, errorMsg: e.toString());
      logger.e(e);
      return null;
    }
  }

  Future<GetCompanyResponse> getCompanyDetail(
      String invoiceId, String companyName) async {
    _setState(loading: true);
    try {
      getCompanyResponse = null;
      var queryParameters = {"companyName": companyName};
      NetworkServiceResponse response = await networkService.get(
          Endpoints.getCompanyDetails(invoiceId),
          queryParameters: queryParameters);
      getCompanyResponse =
          GetCompanyResponse.fromJson(getResponseData(response));
      _setState(loading: false, hasError: false);
      return getCompanyResponse;
    } catch (e) {
      logger.e(e);
      _setState(loading: false, hasError: true, errorMsg: e.toString());
      return null;
    }
  }
}
