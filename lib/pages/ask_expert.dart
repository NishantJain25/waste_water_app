import 'package:flutter/material.dart';
import 'package:waste_water_app/components/expert_form.dart';

class AskExpertPage extends StatelessWidget {
  const AskExpertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ask your question",
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 20,
            ),
            const ExpertForm(),
            const SizedBox(height: 30),
            Text(
              "Know your experts",
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: const [
                      CircleAvatar(
                        foregroundImage: AssetImage('images/expert-1.jpg'),
                        radius: 50,
                      ),
                      SizedBox(height: 10),
                      Text("John Doe")
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: const [
                      CircleAvatar(
                          foregroundImage: AssetImage('images/expert-2.jpg'),
                          radius: 50),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Jane Doe")
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
