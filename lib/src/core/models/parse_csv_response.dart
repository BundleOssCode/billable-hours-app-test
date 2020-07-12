class ParseCsvResponse {
  Map<String, double> companies;
  String id;

  ParseCsvResponse({this.companies, this.id});

  ParseCsvResponse.fromJson(Map<String, dynamic> json) {
    companies = Map<String, double>.from(json['companies']);
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.companies != null) {
      data['companies'] = this.companies;
    }
    data['id'] = this.id;
    return data;
  }
}
