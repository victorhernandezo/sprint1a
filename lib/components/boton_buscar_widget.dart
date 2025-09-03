import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dart:developer' as developer;
import 'boton_buscar_model.dart';
export 'boton_buscar_model.dart';

/// Create a component with a search button
class BotonBuscarWidget extends StatefulWidget {
  const BotonBuscarWidget({super.key});

  @override
  State<BotonBuscarWidget> createState() => _BotonBuscarWidgetState();
}

class _BotonBuscarWidgetState extends State<BotonBuscarWidget> {
  late BotonBuscarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BotonBuscarModel());

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
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: FFButtonWidget(
          onPressed: () {
            developer.log('Button pressed ...',
                name: 'components/boton_buscar_widget.dart');
          },
          text: 'Buscar',
          icon: Icon(
            Icons.search_outlined,
            size: 20.0,
          ),
          options: FFButtonOptions(
            width: 250.0,
            height: 40.0,
            padding: EdgeInsets.all(8.0),
            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            iconColor: FlutterFlowTheme.of(context).primary,
            color: Color(0xCFF1F4F8),
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primary,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
            elevation: 3.0,
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primary,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
      ),
    );
  }
}
