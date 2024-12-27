import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sanad/common.dart';
import 'package:sanad/data/error_handeler.dart';
import 'package:sanad/ui/common/constants/json.dart';
import 'package:sanad/ui/providers/index.dart';
// import 'package:sanad/ui/providers/ex.dart';

callActionDialog<T>(
  context,
  ProviderListenable<AsyncValue<T>> p, {
  void Function()? yesAction,
  void Function(BuildContext c)? action,
}) {
  // a(BuildContext _){}
  // FutureOr<void> Function([BuildContext? c]) action = action_ ?? a;
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            HookConsumer(
              builder: (context, ref, child) {
                final internet = ref.watch(interNetProvider);
                final isConnected = !internet.contains(ConnectivityResult.none);
                // internet.contains(ConnectivityResult.wifi);
                if (!isConnected) {
                  return StateR(
                    sType: StateType.popupErrorState,
                    message: context.tr.noInternet,
                    json: JsonAssets.noNet,
                  );
                }
                return ref
                    .watch(
                      p,
                    )
                    .when(
                      data: (data) {
                        yesAction?.call();
                        return StateR(
                          sType: StateType.popupSuccess,
                        );
                      },
                      error: (e, s) {
                        return StateR(
                          sType: StateType.popupErrorState,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              5.vSpace,
                              ...handelError(context, e).map((i) => Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          ' * ',
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          i,
                                          maxLines: 100,
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                          // child: Text(,textAlign: TextAlign.start,),
                          // message: handelError(context, e),
                        );
                      },
                      loading: () => StateR(
                        sType: StateType.popupLoadingState,
                      ),
                    );
              },
            ),
          ],
        ),
      );
    },
  ).whenComplete(() => action?.call(context));
}
