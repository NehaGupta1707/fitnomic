import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_model.dart';
export 'product_model.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({
    Key? key,
    this.isFavourite,
    this.productImage,
    this.productTitle,
    this.productCategory,
    this.productPrice,
    this.regularPrice,
    this.productRating,
  }) : super(key: key);

  final bool? isFavourite;
  final String? productImage;
  final String? productTitle;
  final String? productCategory;
  final String? productPrice;
  final String? regularPrice;
  final int? productRating;

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  late ProductModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 160.0,
      height: 230.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ToggleIcon(
                    onPressed: () async {
                      setState(() =>
                          FFAppState().isFavourite = !FFAppState().isFavourite);
                    },
                    value: FFAppState().isFavourite,
                    onIcon: Icon(
                      Icons.favorite_rounded,
                      color: Color(0xFFFF3535),
                      size: 14.0,
                    ),
                    offIcon: Icon(
                      Icons.favorite_border,
                      color: Color(0xFFFF3535),
                      size: 14.0,
                    ),
                  ),
                ),
              ],
            ),
            Image.network(
              widget.productImage!,
              width: 100.0,
              height: 60.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    widget.productTitle!,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
                    child: Text(
                      widget.productCategory!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Urbanist',
                            color: FlutterFlowTheme.of(context).gray600,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.productPrice!,
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Rs',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          widget.regularPrice!,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Urbanist',
                                    color: Color(0xFFFF3535),
                                    fontSize: 16.0,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
                    child: RatingBar.builder(
                      onRatingUpdate: (newValue) =>
                          setState(() => _model.ratingBarValue = newValue),
                      itemBuilder: (context, index) => Icon(
                        Icons.star_rounded,
                        color: Color(0xFFFFC107),
                      ),
                      direction: Axis.horizontal,
                      initialRating: _model.ratingBarValue ??=
                          widget.productRating!.toDouble(),
                      unratedColor: Color(0xFF9E9E9E),
                      itemCount: 5,
                      itemSize: 16.0,
                      glowColor: Color(0xFFFFC107),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
