import '/components/carrito_y_notificaciones_widget.dart';
import '/components/nav_bar_cliente_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cliente_mis_favoritos_widget.dart' show ClienteMisFavoritosWidget;
import 'package:flutter/material.dart';

class ClienteMisFavoritosModel
    extends FlutterFlowModel<ClienteMisFavoritosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CarritoYNotificaciones component.
  late CarritoYNotificacionesModel carritoYNotificacionesModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for NavBarCliente component.
  late NavBarClienteModel navBarClienteModel;

  @override
  void initState(BuildContext context) {
    carritoYNotificacionesModel =
        createModel(context, () => CarritoYNotificacionesModel());
    navBarClienteModel = createModel(context, () => NavBarClienteModel());
  }

  @override
  void dispose() {
    carritoYNotificacionesModel.dispose();
    navBarClienteModel.dispose();
  }
}
