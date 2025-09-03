import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'carrito_y_notificaciones_model.dart';
export 'carrito_y_notificaciones_model.dart';

class CarritoYNotificacionesWidget extends StatefulWidget {
  const CarritoYNotificacionesWidget({super.key});

  @override
  State<CarritoYNotificacionesWidget> createState() =>
      _CarritoYNotificacionesWidgetState();
}

class _CarritoYNotificacionesWidgetState
    extends State<CarritoYNotificacionesWidget> {
  late CarritoYNotificacionesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarritoYNotificacionesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 30.0),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 30.0),
              child: Icon(
                Icons.notifications_outlined,
                color: Color(0xFFE34E0D),
                size: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
