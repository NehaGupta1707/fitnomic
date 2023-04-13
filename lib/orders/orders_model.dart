import '/components/oderedproduct_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrdersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Oderedproduct component.
  late OderedproductModel oderedproductModel1;
  // Model for Oderedproduct component.
  late OderedproductModel oderedproductModel2;
  // Model for Oderedproduct component.
  late OderedproductModel oderedproductModel3;
  // Model for Oderedproduct component.
  late OderedproductModel oderedproductModel4;
  // Model for Oderedproduct component.
  late OderedproductModel oderedproductModel5;
  // Model for Oderedproduct component.
  late OderedproductModel oderedproductModel6;
  // Model for Oderedproduct component.
  late OderedproductModel oderedproductModel7;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    oderedproductModel1 = createModel(context, () => OderedproductModel());
    oderedproductModel2 = createModel(context, () => OderedproductModel());
    oderedproductModel3 = createModel(context, () => OderedproductModel());
    oderedproductModel4 = createModel(context, () => OderedproductModel());
    oderedproductModel5 = createModel(context, () => OderedproductModel());
    oderedproductModel6 = createModel(context, () => OderedproductModel());
    oderedproductModel7 = createModel(context, () => OderedproductModel());
  }

  void dispose() {
    textController?.dispose();
    oderedproductModel1.dispose();
    oderedproductModel2.dispose();
    oderedproductModel3.dispose();
    oderedproductModel4.dispose();
    oderedproductModel5.dispose();
    oderedproductModel6.dispose();
    oderedproductModel7.dispose();
  }

  /// Additional helper methods are added here.

}
