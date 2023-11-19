import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/task_list_card.dart';
import '../widgets/top_profile_summary_card.dart';

class CompleteTaskScreen extends StatefulWidget {
  const CompleteTaskScreen({super.key});

  @override
  State<CompleteTaskScreen> createState() => _CompleteTaskScreenState();
}

class _CompleteTaskScreenState extends State<CompleteTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TopProfileSummeryCard(),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return const TaskListCard();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}