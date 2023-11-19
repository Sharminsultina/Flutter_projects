import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style/style.dart';
import '../widgets/summary_card.dart';
import '../widgets/task_list_card.dart';
import '../widgets/top_profile_summary_card.dart';
import 'add_new_task_screen.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TopProfileSummeryCard(),
            const SizedBox(height: 4),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SummaryCard(
                    summaryCount: 92,
                    summaryTitle: 'New Task',
                  ),
                  SummaryCard(
                    summaryCount: 92,
                    summaryTitle: 'New Task',
                  ),
                  SummaryCard(
                    summaryCount: 92,
                    summaryTitle: 'New Task',
                  ),
                  SummaryCard(
                    summaryCount: 92,
                    summaryTitle: 'New Task',
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const TaskListCard();
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewTaskScreen(),
            ),
          );
        },
        backgroundColor: PrimaryColor.color,
        child: const Icon(Icons.add),
      ),
    );
  }
}