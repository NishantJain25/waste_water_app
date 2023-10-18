import 'package:flutter/material.dart';

class Article extends StatelessWidget {
  const Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          children: const [
            Text(
                "Maharashtra Pollution Control Board Takes Action Against Untreated Wastewater Discharge into Panchaganga River",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text(
              "The Maharashtra Pollution Control Board (MPCB) has taken action against the Kolhapur Municipal Corporation (KMC) in response to concerns over untreated wastewater entering the Panchaganga river from the Jayanti nullah. Following a site visit to the Jayanti nullah pumping station, MPCB officials found that the sewage volume being sent to the Kasba Bawda sewage treatment plant (STP) exceeds the plant's capacity. While the KMC claims to chlorinate the wastewater before releasing it into the river due to overflow caused by heavy rains, MPCB has identified issues with other nullahs as well, where sewage from five out of 12 major nullahs is also entering the river without treatment. These concerns prompted MPCB to issue a directive to the KMC.\n\nThe MPCB has specifically instructed the KMC to stop the discharge of untreated wastewater from the Jayanti nullah, address the issue of sewage mixing from the other nullahs into the river, and expedite the construction of two sewage treatment plants (STPs) with capacities of 4 MLD and 6 MLD, respectively. These STPs were expected to be operational two years ago and are critical for managing wastewater effectively. The MPCB has warned the KMC of potential legal action if they fail to submit a compliance report within seven days.\n\nThis situation underscores the importance of proper wastewater management, especially in rapidly growing urban areas like Kolhapur. Inadequate sewage treatment infrastructure can lead to the pollution of natural water bodies, highlighting the need for timely expansion and maintenance of wastewater treatment facilities to safeguard the environment and public health.",
              style: TextStyle(fontSize: 17),
            )
          ],
        ),
      ),
    );
  }
}
