import '/components/icono_trofeo_vacio_widget.dart';
import '/components/nav_bar_cliente_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'radar_g_p_t_widget.dart' show RadarGPTWidget;
import 'package:flutter/material.dart';

class RadarGPTModel extends FlutterFlowModel<RadarGPTWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for IconoTrofeoVacio component.
  late IconoTrofeoVacioModel iconoTrofeoVacioModel;
  // Model for NavBarCliente component.
  late NavBarClienteModel navBarClienteModel;

  @override
  void initState(BuildContext context) {
    iconoTrofeoVacioModel = createModel(context, () => IconoTrofeoVacioModel());
    navBarClienteModel = createModel(context, () => NavBarClienteModel());
  }

  @override
  void dispose() {
    iconoTrofeoVacioModel.dispose();
    navBarClienteModel.dispose();
  }
}
