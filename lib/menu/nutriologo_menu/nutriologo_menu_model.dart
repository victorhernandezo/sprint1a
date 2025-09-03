import '/components/seleccion_rol222_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nutriologo_menu_widget.dart' show NutriologoMenuWidget;
import 'package:flutter/material.dart';

class NutriologoMenuModel extends FlutterFlowModel<NutriologoMenuWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SeleccionRol222 component.
  late SeleccionRol222Model seleccionRol222Model;

  @override
  void initState(BuildContext context) {
    seleccionRol222Model = createModel(context, () => SeleccionRol222Model());
  }

  @override
  void dispose() {
    seleccionRol222Model.dispose();
  }
}
