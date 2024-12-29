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
                    uploadTaskAttemtsProvider(taskId).select((s) => s.current));
                if (current != null) {
                  return _UploadCard(current);
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
                    (up) => _UploadCard(up),
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
                              title: Text(
                                  context.tr.taskPageUploaddialogConfirmation),
                              actionsAlignment: MainAxisAlignment.start,
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (isLoading.value)
                                    Center(
                                      child: CircularProgressIndicator(),
                                    )
                                ],
                              ),
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
  const _UploadCard(this.state);

  final UploadTaskState state;

  bool _isUploaded(MediaItem m) => m.status == UploadState.uploaded;

  double _precentage() =>
      (state.media.where(_isUploaded).length / state.media.length) +
      state.fraction;

  @override
  Widget build(BuildContext context) {
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
                        state.id.toString(),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    5.hSpace,
                    Text('الحالة'),
                    10.hSpace,
                    Text(
                      state.isUploaded ? "تم الرفع" : 'جاري الرفع',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    // Text('عدد الصور'),
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
                  Text("${(_precentage() * 100).toStringAsFixed(1)}%"),
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
              Row(
                children: [
                  Text(
                    DateFormat('', 'ar').add_E().add_jm().format(uploadedAt),
                    style: dateStyle,
                  ),
                  Text(
                    "  |  ${DateFormat('d', 'ar').add_LLL().add_y().format(uploadedAt)}",
                    style: dateStyle,
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
