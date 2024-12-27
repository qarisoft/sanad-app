part of '../task_page.dart';

class _TaskItemUploadPage extends HookConsumerWidget {
  const _TaskItemUploadPage(this.taskId);

  final int taskId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
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
                    // /swapfile none swap sw 0 0
                    (up) => _UploadCard(up),
                  ),
                ]);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            // uploadeState.current == null
            // ?
            () {
          final item = ref.read(curentTaskItemProvider(taskId));

          ref.read(uploadTaskAttemtsProvider(taskId).notifier).create(item);
        }
        // : null
        ,
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }
}

class _UploadCard extends StatelessWidget {
  const _UploadCard(this.state);

  final UploadTaskState state;

  bool _isUploaded(MediaItem m) => m.status == UploadState.uploaded;

  double _precentage() =>
      state.media.where(_isUploaded).length / state.media.length;

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
                      state.isUploaded ? "closed" : 'جاري الرفع',
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
