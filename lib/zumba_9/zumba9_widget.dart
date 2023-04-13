import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'zumba9_model.dart';
export 'zumba9_model.dart';

class Zumba9Widget extends StatefulWidget {
  const Zumba9Widget({Key? key}) : super(key: key);

  @override
  _Zumba9WidgetState createState() => _Zumba9WidgetState();
}

class _Zumba9WidgetState extends State<Zumba9Widget> {
  late Zumba9Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Zumba9Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return YoutubeFullScreenWrapper(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 330.0, 0.0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed('zumbaABOVE40');
                      },
                      child: Text(
                        'BACK',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Urbanist',
                                  fontSize: 20.0,
                                ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: FlutterFlowYoutubePlayer(
                                url: 'https://youtu.be/BI8v3Q9l8dc',
                                autoPlay: false,
                                looping: true,
                                mute: false,
                                showControls: true,
                                showFullScreen: true,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  'Tabata Dance Cardio Workout',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 2.0, 0.0, 2.0),
                                  child: Text(
                                    'Please consult with a healthcare professional before beginning any new exercise program. Listen to your body and do not push yourself beyond your limits. ',
                                    style:
                                        FlutterFlowTheme.of(context).bodySmall,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 4.0),
                                  child: Text(
                                    'The \"Senior-Friendly Standing Workout\" video is a 15-minute exercise routine specially designed for seniors who prefer to workout while standing. The workout is low-impact, easy-to-follow, and features a variety of movements that focus on building strength, improving balance, and increasing flexibility.\n\nThe certified fitness instructor leading the workout begins with a gentle warm-up to get the body ready for the workout. Then, they move on to a series of exercises that target the upper and lower body, such as squats, lunges, and arm raises. The workout also includes some standing balance exercises, which are important for maintaining stability and preventing falls.\n\nThroughout the video, the instructor offers modifications for each exercise to make them easier or more challenging, depending on the viewer\'s fitness level. They also provide tips on maintaining proper form and breathing techniques.\n\nThe workout ends with a cool-down and stretching session to help the body recover and prevent muscle soreness. This workout is perfect for seniors who want to improve their overall fitness, maintain their independence, and enjoy a fun and engaging workout from the comfort of their own home.\n\n\n\n\nneha gupta\n write description for video on 15 minute Senior-Friendly Standing Workout\nThe 15 minute Senior-Friendly Standing Workout video is a quick and effective way for seniors to get their bodies moving and increase their heart rate. The workout is designed to be done entirely while standing and does not require any equipment. The instructor provides clear and easy-to-follow instructions, making this workout suitable for beginners or those who may not have exercised in a while.\n\nThe workout begins with a gentle warm-up to get the body prepared for movement. Then, a variety of exercises are performed to work different muscle groups, including the arms, legs, and core. The movements are low-impact and focus on increasing flexibility, strength, and balance.\n\nThroughout the workout, the instructor emphasizes the importance of maintaining proper form and provides modifications for those who may need them. The video also includes a cool-down segment to help the body gradually return to its resting state.\n\nOverall, the 15 minute Senior-Friendly Standing Workout is a great option for seniors who are looking to stay active and healthy. It can be done in the',
                                    textAlign: TextAlign.start,
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
