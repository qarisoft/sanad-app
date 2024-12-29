part of '../task_page.dart';

class _TaskItemPhotosPage extends HookConsumerWidget {
  _TaskItemPhotosPage(this.taskId);
  final int taskId;
  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final instance = ref.watch(curentTaskItemProvider(taskId));
    Future<void> addImage(String p) async {
      await ref.read(localTasksProvider.notifier).updateItem(
            instance.copyWith(
              media: [
                ...instance.media,
                MediaItem(
                  path: p,
                  uuid: Uuid().v4(),
                )
              ],
            ),
          );
      return;
    }

    Future<void> updateImages(List<String> imagesUuids) async {
      await ref.read(localTasksProvider.notifier).updateItem(
            instance.copyWith(
              media: instance.media
                  .where(
                    (i) => imagesUuids.contains(i.uuid),
                  )
                  .toList(),
            ),
          );
    }

    Directory? path0;
    Future<Directory> mainDir() async {
      return path0 ??= await getApplicationDocumentsDirectory();
    }

    Future<void> saveImage(XFile res) async {
      final mmainDir = (await mainDir()).path;
      final path = "$mmainDir/images";

      final Directory taskDir = Directory(path);
      if (!(await taskDir.exists())) {
        await taskDir.create(recursive: true);
      }
      final mediaPath = "$path/${res.name}";

      await res.saveTo(mediaPath);

      addImage(mediaPath);
    }

    askPermission(ImageSource s, Function() action) {
      showDialog(
        context: context,
        builder: (context) {
          close() => Navigator.of(context).maybePop();
          return AlertDialog(
            title: Text('ask camera permission'),
            actions: [
              TextButton(
                onPressed: () async {
                  final a = s == ImageSource.camera
                      ? await Permission.camera.request()
                      : await Permission.mediaLibrary.request();
                  if (a.isDenied || a.isPermanentlyDenied) {
                  } else {
                    action();
                  }
                  close();
                },
                child: Text('ask'),
              )
            ],
          );
        },
      );
    }

    _onPress(ImageSource s) async {
      final res = await _picker.pickImage(source: s);
      if (res != null) {
        await saveImage(res);
      }
    }

    onPressed(ImageSource source) async {
      // if (source is Camer) {}
      switch (source) {
        case ImageSource.camera:
          var status = await Permission.camera.status;
          if (status.isDenied || status.isPermanentlyDenied) {
            return askPermission(source, () => onPressed(source));
          }
          _onPress(source);

        case ImageSource.gallery:
          var status = await Permission.mediaLibrary.status;
          if (status.isDenied || status.isPermanentlyDenied) {
            return askPermission(source, () => onPressed(source));
          }
          _onPress(source);
      }
    }

    // ////////////////////////////////////////
    final isSelection = useState(false);
    final selectedImages = useState<List<String>>([]);

    final isItemSelected = useCallback((String uuid) {
      return selectedImages.value.contains(uuid);
    }, [selectedImages]);

    final toggolSelectImg = useCallback(
      (String k) {
        if (selectedImages.value.contains(k)) {
          selectedImages.value = selectedImages.value
              .where(
                (v) => v != k,
              )
              .toList();
          return;
        }
        selectedImages.value = {...selectedImages.value, k}.toList();
      },
      [selectedImages],
    );

    final close = useCallback(() {
      isSelection.value = false;
      selectedImages.value = [];
    }, [isSelection, selectedImages]);
    final canDelete = useCallback(() {
      return selectedImages.value.isNotEmpty;
    }, [selectedImages]);

    final delete = useCallback(() {
      updateImages(
        instance.media.map((i) => i.uuid).where(
          (u) {
            if (selectedImages.value.contains(u)) {
              return false;
            }
            return true;
          },
        ).toList(),
      );
      close();
    }, [selectedImages, close, instance]);

    final selectAll = useCallback(() {
      if (selectedImages.value.length == instance.media.length) {
        selectedImages.value = [];
      } else {
        selectedImages.value = instance.media.map((i) => i.uuid).toList();
      }
    }, [selectedImages, instance]);

    final onLongePres = useCallback((String s) {
      isSelection.value = true;
      selectedImages.value = [s];
    }, [selectedImages, isSelection]);
    // ///////////////////////////////

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text(context.tr.taskPagePhotosTitle),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: instance.media.isEmpty
              ? Center(
                  child: StateR(
                    sType: StateType.fullScreenEmptyState,
                    message: context.tr.empty,
                  ),
                )
              : GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3,
                  children: [
                    ...instance.media.map(
                      (i) {
                        final isSelected = isItemSelected(i.uuid);
                        return GestureDetector(
                          onTap: isSelection.value
                              ? () => toggolSelectImg(i.uuid)
                              : null,
                          onLongPress: instance.isClosed
                              ? null
                              : isSelection.value
                                  ? null
                                  : () => onLongePres(i.uuid),
                          child: Container(
                            // padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color:
                                  Colors.grey.withAlpha(isSelected ? 50 : 20),
                              image: DecorationImage(
                                  image: Image.file(
                                    File(i.path),
                                  ).image,
                                  fit: BoxFit.cover),
                            ),
                            margin: EdgeInsets.all(2),
                            height: 100,
                            child: Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                if (isSelection.value)
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.check_circle_rounded,
                                        size: 15,
                                        color: isSelected
                                            ? Colors.blue
                                            : Colors.grey,
                                      ),
                                    ),
                                  )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: instance.isClosed
          ? null
          : isSelection.value
              ? _FloatingSelectionDelet(
                  close: close,
                  selectAll: selectAll,
                  delete: delete,
                  canDelete: canDelete,
                  isSelectedAll:
                      selectedImages.value.length == instance.media.length,
                )
              : _FloatingAddImage(onPressed),
    );
  }
}

class _FloatingAddImage extends StatelessWidget {
  const _FloatingAddImage(this.add);
  final Function(ImageSource source) add;
  @override
  Widget build(BuildContext context) {
    return _FloatingAction([
      CircelButton(
        action: () => add(ImageSource.gallery),
        child: Icon(Icons.image),
      ),
      10.vSpace,
      CircelButton(
        action: () => add(ImageSource.camera),
        child: Icon(Icons.camera_alt_outlined),
        // backgroundColor: ,
      ),
      10.vSpace,
    ]);
  }
}

class _FloatingSelectionDelet extends StatelessWidget {
  const _FloatingSelectionDelet({
    required this.close,
    required this.delete,
    required this.selectAll,
    required this.canDelete,
    required this.isSelectedAll,
  });
  final Function() close;
  final Function() delete;
  final Function() selectAll;
  final Function() canDelete;
  final bool isSelectedAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircelButton(
          action: canDelete() ? delete : null,
          child: Icon(Icons.delete),
        ),
        10.vSpace,
        CircelButton(
          action: selectAll,
          child: Icon(
            isSelectedAll
                ? Icons.check_box_outlined
                : Icons.indeterminate_check_box_outlined,
            color: AppColor.primary,
          ),
        ),
        10.vSpace,
        CircelButton(
          action: close,
          child: Icon(Icons.close),
        ),
      ],
    );
  }
}

class _FloatingAction extends HookConsumerWidget {
  const _FloatingAction(this.children);
  final List<Widget> children;
  @override
  Widget build(BuildContext context, ref) {
    final isOpen = useState(false);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isOpen.value)
          Column(
            children: children,
          ),
        CircelButton(
          action: () {
            isOpen.value = isOpen.value ? false : true;
          },
          child: Icon(isOpen.value ? Icons.close : Icons.add),
        )
      ],
    );
    // }
    // return ;
  }
}

class CircelButton extends StatelessWidget {
  const CircelButton({super.key, required this.action, required this.child});
  final Function()? action;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: action,
      shape: CircleBorder(),
      backgroundColor: Colors.grey.shade200,
      foregroundColor: AppColor.primary,
      child: child,
    );
  }
}
