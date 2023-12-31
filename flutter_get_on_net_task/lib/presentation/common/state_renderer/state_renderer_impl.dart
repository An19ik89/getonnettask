import 'package:flutter/material.dart';
import 'package:flutter_get_on_net_task/data/mapper/mapper.dart';
import 'package:flutter_get_on_net_task/presentation/common/state_renderer/state_renderer.dart';
import 'package:flutter_get_on_net_task/presentation/resources/strings_manager.dart';


abstract class FlowState {
  StateRendererType getStateRendererType();
  String getMessage();
}

// LOADING STATE (POPUP, FULL SCREEN)
class LoadingState extends FlowState {
  StateRendererType stateRendererType;
  String message;

  LoadingState({required this.stateRendererType, String? message})
      : message = message ?? AppStrings.loading;

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRendererType() => stateRendererType;
}

// ERROR STATE
class ErrorState extends FlowState {
  StateRendererType stateRendererType;
  String message;

  ErrorState(this.stateRendererType, this.message);

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRendererType() => stateRendererType;
}

//CONTENT STATE
class ContentState extends FlowState {
  ContentState();

  @override
  String getMessage() => EMPTY;

  @override
  StateRendererType getStateRendererType() =>
      StateRendererType.CONTENT_SCREEN_STATE;
}

//EMPTY STATE
class EmptyState extends FlowState {
  String message;

  EmptyState(this.message);

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRendererType() =>
      StateRendererType.EMPTY_SCREEN_STATE;
}

extension FlowStateExtension on FlowState {

  Widget getScreenWidget(BuildContext context, Widget contentScreenWidget, Function retryActionFunction)
  {
    switch (runtimeType) {
      case LoadingState:
        {
          if (getStateRendererType() == StateRendererType.POPUP_LOADING_STATE) {
            //showing popup dialogue
            showPopUp(context, getStateRendererType(), getMessage());
            //return the content ui of the screen
            return contentScreenWidget;
          } else {
            return StateRenderer(
                stateRendererType: getStateRendererType(),
                message: getMessage(),
                retryActionFunction: retryActionFunction);
          }
        }
      case ErrorState:
        {
          if (getStateRendererType() == StateRendererType.POPUP_ERROR_STATE) {
            //showing popup dialogue
            showPopUp(context, getStateRendererType(), getMessage());
            //return the content ui of the screen
            return contentScreenWidget;
          } else {
            return StateRenderer(
                stateRendererType: getStateRendererType(),
                message: getMessage(),
                retryActionFunction: retryActionFunction);
          }
        }
      case ContentState:
        {
          return contentScreenWidget;
        }
      case EmptyState:
        {
          return StateRenderer(
              stateRendererType: getStateRendererType(),
              message: getMessage(),
              retryActionFunction: retryActionFunction);
        }
      default:
        {
          return contentScreenWidget;
        }
    }
  }

  showPopUp(BuildContext context, StateRendererType stateRendererType,
      String message) {
    WidgetsBinding.instance.addPostFrameCallback((_) => showDialog(
        context: context,
        builder: (BuildContext context) => StateRenderer(
              stateRendererType: stateRendererType,
              message: message,
              retryActionFunction: () {},
            )));
  }
}
