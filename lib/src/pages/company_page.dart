import 'package:billable_hours_app/src/core/models/get_company_response.dart';
import 'package:billable_hours_app/src/resources/colors/custom_colors.dart';
import 'package:billable_hours_app/src/resources/styles/custom_styles.dart';
import 'package:billable_hours_app/src/ui_kit/flat_button_loader.dart';
import 'package:billable_hours_app/src/ui_kit/navigation_components.dart';
import 'package:billable_hours_app/src/provider/bill_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CompanyPage extends StatefulWidget {
  CompanyPage({Key key}) : super(key: key);

  @override
  _CompanyPagePageState createState() => _CompanyPagePageState();
}

class _CompanyPagePageState extends State<CompanyPage> {
  BillProvider billProvider;
  GetCompanyResponse companyResponse;

  TableCell _bodyCell(String content) {
    return TableCell(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            '$content',
            style: BundleTextStyle.ts_16_normal,
          ),
        ),
      ),
    );
  }

  TableCell _headerCell(String content) {
    return TableCell(
      child: Container(
        height: 50,
        color: Colors.deepPurple,
        padding: EdgeInsets.all(5.0),
        child: Center(
          child: Text(
            content,
            style: BundleTextStyle.ts_16_normal_white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (billProvider == null) {
      billProvider = Provider.of<BillProvider>(context, listen: true);
    }
    if (billProvider.isLoading) {
      return Scaffold(
          body: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[BundleProgressLoader()],
                ),
              )));
    }
    companyResponse = billProvider.getCompanyResponse;
    List<TableRow> children = [];
    TableRow header = TableRow(children: [
      _headerCell('Employee ID'),
      _headerCell('Number of Hours'),
      _headerCell('Unit Price'),
      _headerCell('Cost'),
    ]);

    TableRow totalRow = TableRow(children: [
      TableCell(child: Container(height: 40)),
      TableCell(child: Container(height: 40)),
      TableCell(
        child: Center(
            child: Text(
          'Total',
          style: BundleTextStyle.ts_16_bold,
        )),
      ),
      TableCell(
          child: Center(
              child: Text(
        '${companyResponse.totalAmount.toStringAsFixed(2)}',
        style: BundleTextStyle.ts_16_normal,
      ))),
    ]);

    children.add(header);
    if (companyResponse.employeeItems.length >= 3 &&
        companyResponse.employeeItems.length <= 6) {
      companyResponse.employeeItems.removeLast();
    }
    companyResponse.employeeItems.forEach((EmployeeItem employee) {
      TableRow item = TableRow(children: [
        _bodyCell(employee.employeeId),
        _bodyCell('${employee.hoursWorked}'),
        _bodyCell('N${employee.ratePerHour.toStringAsFixed(2)}'),
        _bodyCell(
            'N${(employee.ratePerHour * employee.hoursWorked).toStringAsFixed(2)}'),
      ]);
      children.add(item);
    });

    children.add(totalRow);

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NavUp(),
              SizedBox(height: 10),
              Align(
                  alignment: Alignment.centerLeft,
                  child: NavBack(
                    onBackPressed: () => Navigator.pop(context),
                  )),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${companyResponse.name}",
                  style: BundleTextStyle.ts_26_bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Table(
                key: Key("companyTable"),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(
                    color: gray, width: 1, style: BorderStyle.solid),
                children: children,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
