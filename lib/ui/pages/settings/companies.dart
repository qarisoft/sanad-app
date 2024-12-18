import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sanad/ui/pages/components.dart';
import 'package:sanad/ui/pages/settings/providers/companies_provider.dart';

class CompaniesPage extends ConsumerWidget {
  const CompaniesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final companies = ref.watch(companiesProvider);
    return Scaffold(
      appBar: AppBar(),
      body: WithRefresh(
        onData: (d) => _Page(d),
        provider: companies,
        refresh: () async =>
            await ref.read(companiesProvider.notifier).refresh(),
      ),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page(this.data);

  final List<String> data;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
