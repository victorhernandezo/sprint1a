import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dart:developer' as developer;
import 'flecha_retorno_pag_anterior_model.dart';
export 'flecha_retorno_pag_anterior_model.dart';

class FlechaRetornoPagAnteriorWidget extends StatefulWidget {
  const FlechaRetornoPagAnteriorWidget({super.key});

  @override
  State<FlechaRetornoPagAnteriorWidget> createState() =>
      _FlechaRetornoPagAnteriorWidgetState();
}

class _FlechaRetornoPagAnteriorWidgetState
    extends State<FlechaRetornoPagAnteriorWidget> {
  late FlechaRetornoPagAnteriorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FlechaRetornoPagAnteriorModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.safePop();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowIconButton(
      borderRadius: 20.0,
      buttonSize: 40.0,
      icon: Icon(
        Icons.arrow_back,
        color: FlutterFlowTheme.of(context).primaryText,
        size: 24.0,
      ),
      onPressed: () {
        developer.log('IconButton pressed ...',
            name: 'components/flecha_retorno_pag_anterior_widget.dart');
      },
    );
  }
}
