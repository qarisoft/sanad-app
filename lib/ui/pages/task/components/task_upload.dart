part of '../task_page.dart';

class _TaskItemUploadPage extends HookConsumerWidget {
  const _TaskItemUploadPage(this.taskId);

  final int taskId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final task = ref.watch(curentTaskItemProvider(taskId));
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr.taskPageUploadTitle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: WithRefreshWidget(
          onRefresh: () async {},
          children: [
            Consumer(
              builder: (context, ref, child) {
                final current = ref.watch(
                  uploadTaskAttemtsProvider(taskId).select((s) => s.current),
                );
                final fr = ref.watch(
                  uploadTaskAttemtsProvider(taskId).select((s) => s.fraction),
                );
                if (current != null) {
                  return _UploadCard(
                    state: current,
                    fr: fr,
                    onCancel: () => ref
                        .read(uploadTaskAttemtsProvider(taskId).notifier)
                        .cancelUpload(),
                    onRetry: () => ref
                        .read(uploadTaskAttemtsProvider(taskId).notifier)
                        .reTry(),
                  );
                }

                return 1.hSpace;
              },
            ),
            Consumer(
              builder: (context, ref, child) {
                final uploads = ref.watch(
                    uploadTaskAttemtsProvider(taskId).select((s) => s.uploads));

                return Column(children: [
                  ...uploads.reversed.map(
                    (up) => _UploadCard(
                      state: up,
                    ),
                  ),
                ]);
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: task.isClosed
          ? null
          : HookConsumer(
              builder: (context, ref, child) {
                closeDialog() {
                  Navigator.of(context).maybePop();
                }

                final current = ref.watch(
                    uploadTaskAttemtsProvider(taskId).select((s) => s.current));

                final onClick = useCallback(
                  () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return HookConsumer(
                          builder: (context, ref, child) {
                            final isLoading = useState(false);

                            final onConfirm = useCallback(
                              () async {
                                isLoading.value = true;
                                final item =
                                    ref.read(curentTaskItemProvider(taskId));
                                final uploadId = await ref
                                    .read(uploadTaskAttemtsProvider(taskId)
                                        .notifier)
                                    .createUpload(item);
                                if (uploadId != null) {
                                  ref
                                      .read(uploadTaskAttemtsProvider(taskId)
                                          .notifier)
                                      .create(
                                        item,
                                        uploadId,
                                      );
                                }
                                closeDialog();
                              },
                              [closeDialog],
                            );
                            return AlertDialog(
                              title: Column(
                                children: [
                                  if (isLoading.value)
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    ),
                                  Text(context
                                      .tr.taskPageUploaddialogConfirmation)
                                ],
                              ),
                              icon: Icon(Icons.cloud_download),
                              actionsAlignment: MainAxisAlignment.start,
                              actions: [
                                TextButton(
                                  onPressed: onConfirm,
                                  child: Text(
                                    context.tr.agree,
                                  ),
                                ),
                                TextButton(
                                  onPressed: onConfirm,
                                  child: Text(
                                    context.tr.dialogCancel,
                                  ),
                                )
                              ],
                            );
                          },
                        );
                      },
                    );
                  },
                  [current],
                );

                return FloatingActionButton(
                  onPressed: current == null ? onClick : null,
                  shape: CircleBorder(),
                  child: Icon(Icons.add),
                );
              },
            ),
    );
  }
}

class _UploadCard extends StatelessWidget {
  const _UploadCard({
    required this.state,
    this.onCancel,
    this.onRetry,
    this.fr = 0.0,
  });

  final UploadTaskState state;
  final double fr;
  final Function()? onCancel;

  final Function()? onRetry;

  bool _isUploaded(MediaItem m) => m.status == UploadState.uploaded;

  double _precentage() =>
      // state.fraction;

      (state.media.where(_isUploaded).length + fr) / state.media.length;

  @override
  Widget build(BuildContext context) {
    getStatus() {
      switch (state.status) {
        case UploadState.initail:
          return '';
        case UploadState.uploadin:
          return context.tr.uploadStatusUploading;
        case UploadState.uploaded:
          return context.tr.uploadStatusDone;
        case UploadState.faild:
          return context.tr.uploadStatusFail;
      }
    }

    final uploadedAt = state.uploadedAt;
    final dateStyle = Theme.of(context).textTheme.bodySmall;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (state.id != 0)
                      Text(
                        "${state.id} -",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    5.hSpace,
                    Text(context.tr.status),
                    10.hSpace,
                    Text(
                      getStatus(),
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    if (state.status == UploadState.uploadin)
                      IconButton(
                        onPressed: onCancel,
                        icon: Icon(
                          Icons.close,
                          color: Colors.red.shade400,
                        ),
                      ),
                    if (state.status == UploadState.faild)
                      IconButton(
                        onPressed: onRetry,
                        icon: Icon(
                          Icons.refresh,
                          color: Colors.blue.shade600,
                        ),
                      ),
                    5.hSpace,
                    Icon(
                      Icons.perm_media_outlined,
                      size: 15,
                    ),
                    5.hSpace,
                    Column(
                      children: [
                        5.vSpace,
                        Text(
                          state.media.length.toString(),
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                    5.hSpace,
                  ],
                ),
              ],
            ),
            10.vSpace,
            if (!state.isUploaded)
              Row(
                children: [
                  Text(
                      "${state.media.where(_isUploaded).length} / ${state.media.length}"),
                  10.hSpace,
                  Text("${(_precentage() * 100).toStringAsFixed(0)}%"),
                  10.hSpace,
                  Expanded(
                    child: LinearProgressIndicator(
                      value: _precentage(),
                      backgroundColor: Colors.grey,
                    ),
                  ),
                ],
              ),
            if (uploadedAt != null)
              Consumer(builder: (context, ref, c) {
                final local = ref.watch(localProvider);
                return Row(
                  children: [
                    Text(
                      DateFormat('', local).add_E().add_jm().format(uploadedAt),
                      style: dateStyle,
                    ),
                    Text(
                      "  |  ${DateFormat('d', local).add_LLL().add_y().format(uploadedAt)}",
                      style: dateStyle,
                    )
                  ],
                );
              })
          ],
        ),
      ),
    );
  }
}
