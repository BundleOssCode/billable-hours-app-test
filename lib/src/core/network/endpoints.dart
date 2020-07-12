/// Set of endpoints to make API calls on.
///
/// Prefix urls with `urlBase` and remember to include any '/'s when concatenating url parts
class Endpoints {
  static String getInvoiceParsing(String invoiceId) => "invoice/$invoiceId";

  static String getCompanyDetails(String invoiceId) =>
      "invoice/$invoiceId/company";
  static String parseCsv = "invoice/parse";
}
