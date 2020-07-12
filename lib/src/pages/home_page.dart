import 'package:billable_hours_app/src/core/models/parse_csv_response.dart';
import 'package:billable_hours_app/src/pages/parse_result_page.dart';
import 'package:billable_hours_app/src/resources/sizes/size_config.dart';
import 'package:billable_hours_app/src/ui_kit/flat_button_loader.dart';
import 'package:billable_hours_app/src/ui_kit/text_field.dart';
import 'package:billable_hours_app/src/provider/bill_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BillProvider billProvider;
  TextEditingController filePathController;

  @override
  void initState() {
    filePathController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    filePathController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(new FocusNode());
    SizeConfig().init(
        context: context, orientation: MediaQuery.of(context).orientation);
    if (billProvider == null) {
      billProvider = Provider.of<BillProvider>(context, listen: true);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Billable Hours"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Enter the file path below',
              ),
              SizedBox(
                height: 10,
              ),
              BundleTextField(
                key: Key("filePathTextField"),
                controller: filePathController,
                enabled: true,
                label: "",
                inputType: TextInputType.url,
              ),
              SizedBox(
                height: 30,
              ),
              RegistrationLoaderButton(
                key: Key('submitButton'),
                buttonTitle: "Continue",
                buttonAction: _onContinueTapped,
                loadingState: billProvider.isLoading,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onContinueTapped() async {
    String filePath = filePathController.text;
    if (filePath.length > 5) {
      billProvider.parseCsv(filePath).then((ParseCsvResponse response) {
        if (response != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ParseResultPage(parseCsvResponse: response),
            ),
          );
        }
      }).catchError((onError) {});
    }
  }
}
