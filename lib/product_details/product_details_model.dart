import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/similarproducts_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ProductDetailsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // Model for Similarproducts component.
  late SimilarproductsModel similarproductsModel1;
  // Model for Similarproducts component.
  late SimilarproductsModel similarproductsModel2;
  // Model for Similarproducts component.
  late SimilarproductsModel similarproductsModel3;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // State field(s) for RatingBar widget.
  double? ratingBarValue3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    similarproductsModel1 = createModel(context, () => SimilarproductsModel());
    similarproductsModel2 = createModel(context, () => SimilarproductsModel());
    similarproductsModel3 = createModel(context, () => SimilarproductsModel());
  }

  void dispose() {
    similarproductsModel1.dispose();
    similarproductsModel2.dispose();
    similarproductsModel3.dispose();
  }

  /// Additional helper methods are added here.

}
