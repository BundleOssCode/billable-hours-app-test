class GetCompanyResponse {
  String name;
  List<EmployeeItem> employeeItems;
  double totalAmount;

  GetCompanyResponse({this.name, this.employeeItems, this.totalAmount});

  GetCompanyResponse.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['lineItems'] != null) {
      employeeItems = new List<EmployeeItem>();
      json['lineItems'].forEach((v) {
        employeeItems.add(new EmployeeItem.fromJson(v));
      });
    }
    totalAmount = json['totalAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.employeeItems != null) {
      data['lineItems'] = this.employeeItems.map((v) => v.toJson()).toList();
    }
    data['totalAmount'] = this.totalAmount;
    return data;
  }
}

class EmployeeItem {
  String employeeId;
  double ratePerHour;
  double hoursWorked;

  EmployeeItem({this.employeeId, this.ratePerHour, this.hoursWorked});

  EmployeeItem.fromJson(Map<String, dynamic> json) {
    employeeId = json['employeeId'];
    ratePerHour = json['ratePerHour'];
    hoursWorked = double.tryParse(json['hoursWorked'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['employeeId'] = this.employeeId;
    data['ratePerHour'] = this.ratePerHour;
    data['hoursWorked'] = this.hoursWorked;
    return data;
  }
}
