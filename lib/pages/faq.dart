import 'package:flutter/material.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  List questions = [
    {
      "question": "How can I use this app to ask wastewater-related questions?",
      "answer":
          "To ask wastewater-related questions through the app:\n\nStep 1: Navigate to the 'Ask the Experts' tab of the app.\n\nStep 2: Provide the personal details required.\n\nStep 3: Write down the question in the space provided.\n\nStep 4: Await response from one of the experts."
    },
    {
      "question":
          "What is industrial wastewater, and why is it a concern for farmers?",
      "answer":
          "Industrial wastewater is water that has been used in various industrial processes and activities, such as manufacturing, mining, chemical production, and more. It often contains a wide range of contaminants, including chemicals, heavy metals, pathogens, and organic substances, depending on the industry's operations.\n\nFarmers should be concerned about industrial wastewater because it can pose significant risks to their agricultural lands and livelihoods. When industrial wastewater leaks or is improperly discharged into the environment, it can have several adverse effects on farming, including soil contamination, water pollution, crop damage, health risks, and long-term environmental impact."
    },
    {
      "question":
          "How can leaked wastewater from industries affect my crops and soil?",
      "answer":
          "Leaked wastewater from industries can affect crops and soil in various ways:\n\nSoil Contamination: Contaminants in the wastewater can enter the soil, disrupting its fertility and hindering plant growth.\n\nWater Pollution: If leaked wastewater reaches water sources used for irrigation, it can introduce pollutants to crops and pose health risks to consumers.\n\nCrop Damage: Crops exposed to contaminated water or soil may be damaged or produce low-quality yields, leading to financial losses for farmers.\n\nHealth Risks: Consuming crops grown in contaminated conditions can pose health risks due to the presence of harmful substances and pathogens.\n\nLong-term Environmental Impact: Persistent pollutants can harm the environment and affect the land's usability for future farming"
    },
    {
      "question":
          "Are there specific industries that pose a higher risk of wastewater contamination to nearby farms?",
      "answer":
          "Yes, certain industries are more likely to generate wastewater with a higher risk of contamination to nearby farms. Industries that involve chemical manufacturing, mining, metal processing, and food processing often produce wastewater with elevated levels of pollutants. Additionally, industries located close to agricultural areas pose a greater risk of contamination."
    },
    {
      "question":
          "What are common pollutants found in industrial wastewater that can harm agricultural lands?",
      "answer":
          "Common pollutants in industrial wastewater that can harm agricultural lands include:\n\nHeavy Metals: Such as lead, mercury, cadmium, and chromium.\n\nChemicals: Including solvents, pesticides, and industrial chemicals.\n\nOrganic Compounds: Such as hydrocarbons and volatile organic compounds.\n\nPathogens: Disease-causing microorganisms like bacteria and viruses.\n\nNutrient Imbalances: High levels of nutrients like nitrogen and phosphorus can disrupt soil health."
    },
    {
      "question":
          "What should I do if I suspect wastewater contamination on my farm?",
      "answer":
          "If you suspect wastewater contamination on your farm, consider taking the following steps:\n\nStop using any water sources that may be contaminated for irrigation.\n\nContact local environmental authorities or regulatory agencies to report the suspected contamination. In the rural areas this may be the chief or the Panchayat.\n\nConduct soil and water tests to assess the extent of contamination.\n\nSeek guidance from agricultural experts and environmental professionals on remediation measures.\n\nKeep records of the suspected contamination and any actions taken for future reference or potential legal claims."
    },
    {
      "question":
          "How can I prevent or minimize the risks of wastewater contamination to my farm?",
      "answer":
          "To prevent or minimize the risks of wastewater contamination to your farm, you can consider the following steps:\n\n- Monitor nearby industrial activities and their wastewater management practices.\n\n- Implement proper fencing and barriers to prevent unauthorized access to your land.\n\n- Use alternative water sources for irrigation, such as clean well water or rainwater harvesting.\n\n- Stay informed about local regulations and report any suspicious activities to authorities."
    },
    {
      "question":
          "What are the environmental laws and regulations related to wastewater discharge from industries?",
      "answer":
          "The specific environmental laws and regulations related to wastewater discharge from industries vary by region and country. Typically, these regulations govern the permissible levels of pollutants, discharge permits, reporting requirements, and penalties for non-compliance. Farmers should be aware of the relevant regulations in their area and report any violations."
    },
    {
      "question":
          "Is there a way to check if nearby industries are compliant with wastewater treatment regulations?",
      "answer":
          "You can often check the compliance status of nearby industries through local environmental regulatory agencies. They may have public records or databases that provide information on compliance, violations, and enforcement actions against industrial facilities. Additionally, you can report any concerns or suspected violations to these agencies for investigation."
    },
    {
      "question":
          "Are there resources or organizations that can help me address wastewater-related issues on my farm?",
      "answer":
          "Yes, there are resources and organizations that can assist farmers with wastewater-related issues:\n\nLocal agricultural extension offices can provide guidance on soil testing, crop management, and best practices.\n\nEnvironmental protection agencies and departments can offer information on regulations and assistance with reporting and remediation.\n\nFarming associations and cooperatives may provide support and resources for dealing with environmental challenges."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Frequently Asked Questions (FAQs)",
                  style: Theme.of(context).textTheme.headline1,
                )),
            Column(
              children: [
                for (var qs in questions) faqTile(qs["question"], qs["answer"])
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget faqTile(String question, String answer) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.white10, blurRadius: 8, spreadRadius: 8),
          BoxShadow(color: Colors.white10, blurRadius: 8, spreadRadius: 8),
          BoxShadow(color: Colors.white10, blurRadius: 8, spreadRadius: 8),
          BoxShadow(color: Colors.white10, blurRadius: 8, spreadRadius: 8),
        ],
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ExpansionTile(
          collapsedBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          title: Text(
            "Q: $question",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          children: [
            Text(
              "A: $answer",
            )
          ],
          expandedAlignment: Alignment.topLeft,
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          collapsedTextColor: Colors.black,
        ),
      ),
    );
  }
}
