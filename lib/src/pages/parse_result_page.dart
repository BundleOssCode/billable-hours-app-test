import 'package:billable_hours_app/src/pages/company_page.dart';
import 'package:billable_hours_app/src/core/models/parse_csv_response.dart';
import 'package:billable_hours_app/src/resources/colors/custom_colors.dart';
import 'package:billable_hours_app/src/resources/sizes/size_config.dart';
import 'package:billable_hours_app/src/resources/styles/custom_styles.dart';
import 'package:billable_hours_app/src/ui_kit/bottom_sheet.dart';
import 'package:billable_hours_app/src/provider/bill_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ParseResultPage extends StatefulWidget {
  final ParseCsvResponse parseCsvResponse;

  ParseResultPage({Key key, @required this.parseCsvResponse}) : super(key: key);

  @override
  _ParseResultPageState createState() => _ParseResultPageState();
}

class _ParseResultPageState extends State<ParseResultPage> {
  BillProvider billProvider;

  _onCompanyTap(String name) {
    billProvider.getCompanyDetail(billProvider.parseCsvResponse.id, name);
    BundleBottomSheet(
            context: context,
            child: CompanyPage(),
            containerHeight: SizeConfig.bottomSheetMax)
        .show();
  }

  @override
  Widget build(BuildContext context) {
    if (billProvider == null) {
      billProvider = Provider.of<BillProvider>(context, listen: true);
    }
    List<TableRow> children = [];
    TableRow header = TableRow(children: [
      TableCell(
          child: Container(
              height: 40,
              child: Center(
                child: Text(
                  'S.N',
                  style: BundleTextStyle.ts_16_normal,
                ),
              ))),
      TableCell(
        child: Center(
            child: Text(
          'Company',
          style: BundleTextStyle.ts_16_bold,
        )),
      ),
      TableCell(
          child: Center(
              child: Text(
        'Invoice Value',
        style: BundleTextStyle.ts_16_bold,
      ))),
    ]);

    children.add(header);
    int serialNo = 1;
    widget.parseCsvResponse.companies.keys.forEach((String key) {
      TableRow item = TableRow(children: [
        TableCell(
          child: Container(
            height: 40,
            child: Center(
              child: Text(
                '$serialNo',
                style: BundleTextStyle.ts_16_normal,
              ),
            ),
          ),
        ),
        TableCell(
          child: InkWell(
            splashColor: Colors.deepPurpleAccent,
            onTap: () => _onCompanyTap(key),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  '$key',
                  style: BundleTextStyle.ts_16_green,
                ),
              ),
            ),
          ),
        ),
        TableCell(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'N${widget.parseCsvResponse.companies[key].toStringAsFixed(2)}',
                style: BundleTextStyle.ts_16_normal,
              ),
            ),
          ),
        ),
      ]);
      children.add(item);
      serialNo++;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Parse Results"),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                "CSV File has been parsed successfully, see summary below",
                style: BundleTextStyle.ts_18_normal,
              ),
              SizedBox(
                height: 30,
              ),
              Table(
                key: Key("resultTable"),
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
