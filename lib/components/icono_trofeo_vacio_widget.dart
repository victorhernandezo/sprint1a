import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icono_trofeo_vacio_model.dart';
export 'icono_trofeo_vacio_model.dart';

/// Create a component with an icon with the following restrictions:  trofee,
/// outlined, empty,
class IconoTrofeoVacioWidget extends StatefulWidget {
  const IconoTrofeoVacioWidget({super.key});

  @override
  State<IconoTrofeoVacioWidget> createState() => _IconoTrofeoVacioWidgetState();
}

class _IconoTrofeoVacioWidgetState extends State<IconoTrofeoVacioWidget> {
  late IconoTrofeoVacioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconoTrofeoVacioModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.emoji_events_outlined,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 28.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
