import 'package:flutter/material.dart';
import 'package:waste_water_app/pages/article.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "News Flash",
                  style: Theme.of(context).textTheme.headline1,
                )),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Article()),
                    );
                  },
                  child: Container(
                    height: 150,
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1)),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Maharashtra Pollution Control Board Takes Action Against Untreated Wastewater Discharge into Panchaganga River",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "The Maharashtra Pollution Control Board (MPCB) has taken action against the Kolhapur Municipal Corporation (KMC) in response to concerns over untreated wastewater entering the Panchaganga river from the Jayanti nullah. Following a site visit to the Jayanti nullah pumping station, MPCB officials found that the sewage volume being sent to the Kasba Bawda sewage treatment plant (STP) exceeds the plant's capacity. While the KMC claims to chlorinate the wastewater before releasing it into the river due to overflow caused by heavy rains, MPCB has identified issues with other nullahs as well, where sewage from five out of 12 major nullahs is also entering the river without treatment. These concerns prompted MPCB to issue a directive to the KMC.",
                          overflow: TextOverflow.fade,
                          maxLines: 2,
                        ),
                        Text(
                          "Read more...",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
