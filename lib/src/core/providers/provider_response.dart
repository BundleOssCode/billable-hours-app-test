class ProviderResponse {
  bool hasError = false;
  bool isReady = false;
  bool isLoading = false;
  String errorMessage = '';

  update({loading, hasErr, errorMsg, ready}) {
    isLoading = loading;
    hasError = hasErr;
    errorMessage = errorMsg;
    isReady = ready;
  }
}
