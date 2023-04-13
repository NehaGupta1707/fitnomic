import '/backend/backend.dart';
import '/components/product_widget.dart';
import '/components/recent_products_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EcommerceModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PageView widget.
  PageController? pageViewController;
  // Model for recentProducts component.
  late RecentProductsModel recentProductsModel1;
  // Model for recentProducts component.
  late RecentProductsModel recentProductsModel2;
  // Model for recentProducts component.
  late RecentProductsModel recentProductsModel3;
  // Model for recentProducts component.
  late RecentProductsModel recentProductsModel4;
  // Model for product component.
  late ProductModel productModel5;
  // Model for product component.
  late ProductModel productModel6;
  // Model for product component.
  late ProductModel productModel7;
  // Model for product component.
  late ProductModel productModel8;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    recentProductsModel1 = createModel(context, () => RecentProductsModel());
    recentProductsModel2 = createModel(context, () => RecentProductsModel());
    recentProductsModel3 = createModel(context, () => RecentProductsModel());
    recentProductsModel4 = createModel(context, () => RecentProductsModel());
    productModel5 = createModel(context, () => ProductModel());
    productModel6 = createModel(context, () => ProductModel());
    productModel7 = createModel(context, () => ProductModel());
    productModel8 = createModel(context, () => ProductModel());
  }

  void dispose() {
    textController?.dispose();
    recentProductsModel1.dispose();
    recentProductsModel2.dispose();
    recentProductsModel3.dispose();
    recentProductsModel4.dispose();
    productModel5.dispose();
    productModel6.dispose();
    productModel7.dispose();
    productModel8.dispose();
  }

  /// Additional helper methods are added here.

}
