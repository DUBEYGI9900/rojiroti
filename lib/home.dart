import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sellkaro/music.dart';
import 'package:sellkaro/navbar.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

int selectedIndex = 0;

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/appbar-removebg-preview.png"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ram Janmabhoomi",
                  style: GoogleFonts.notoSerif(
                      textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ))),
              Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 235, 235, 235),
                      spreadRadius: 2.0,
                      blurRadius: 5.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset(
                        "assets/images/India_Uttar_Pradesh_location_map.svg.jpg"),
                    Text(
                        "Ram Janmabhoomi (lit.'Birthplace of Rama') is the site that, according to Hindu religious beliefs, is the birthplace of Rama, the seventh avatar of the Hindu deity Vishnu. The Ramayana states that the location of Rama's birthplace is on the banks of the Sarayu river in a city called Ayodhya. Modern-day Ayodhya is in the north Indian state of Uttar Pradesh. It is contested whether the Ayodhya mentioned in the Ramayana is the same as the modern city Some Hindus claim that the exact site of Rama's birthplace is within the grounds where the Babri Masjid once stood in the present-day Ayodhya, with this belief extending back to at least 1822. It has been suggested that a temple to Rama formerly existed at the same site as the Babri Masjid until it was replaced by the mosque, an idea supported by a court-ordered report of the Archaeological Survey of India following archaeological excavations around the ruins of the mosque, though the existence of this temple and the conclusions of the report are disputed The idols of Rama and Sita were placed in the mosque in 1949 and the devotees begin to gather from the next day. In 1992, the demolition of the Babri Masjid by Hindu nationalists triggered widespread Hindu-Muslim violence. The legal dispute over the property reached the Indian Supreme Court, which heard the title dispute cases from August to October 2019. On 9 November 2019, the Supreme Court ruled in favour of the Hindu parties and ordered the land to be handed over to a trust to build a Hindu temple.[11] The court inferred that the foundation of the mosque was based on the walls of a large pre existing structure dating back to the 12th century whose architectural features are suggestive of Hindu religious origin. The Supreme Court however concluded that there is time gap between the construction of the pre existing structure in 12th century and the construction of mosque in 16th century and no conclusion on the cause of destruction of the underlying structure from this era can be drawn based on the ASI report.[12] The temple was later inaugurated in January 2024.     "),
                  ],
                ),
              ),
              Text("Historical significance",
                  style: GoogleFonts.notoSerif(
                      textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ))),
              Container(
                width: screenWidth,

                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 235, 235, 235),
                      spreadRadius: 2.0,
                      blurRadius: 5.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/Ayodhya_disputed_site_map.png"),
                    Text(
                        "The Ramayana, a Hindu epic whose earliest portions date back to 1st millennium BCE, states that the capital of Rama was Ayodhya. According to the local Hindu belief, the site of the now-demolished Babri Mosque in Ayodhya is the exact birthplace of Rama. The Babri mosque is believed to have been constructed during 1528-9 by a certain 'Mir Baqi' (possibly Baqi Tashqandi), who was a commander of the Mughal emperor Babur (r. 1526-1530).In 1611, an English traveller William Finch visited Ayodhya and recorded the ruins of the Ranichand [Ramachand] castle and houses. He made no mention of a mosque. In 1634, Thomas Herbert described a pretty old castle of Ranichand [Ramachand] which he described as an antique monument that was especially memorable. However, by 1672, the appearance of a mosque at the site can be inferred because Lal Das's Awadh-Vilasa describes the location without mentioning a castle, house or temple. In 1717, the Moghul Rajput noble Jai Singh II purchased land surrounding the site and his documents show a mosque. The Jesuit missionary Joseph Tiefenthaler, who visited the site between 1766 and 1771, wrote that either Aurangazeb (r.1658-1707) or Babur had demolished the Ramkot fortress, including the house that was considered as the birthplace of Rama by Hindus. He further stated that a mosque was constructed in its place, but the Hindus continued to offer prayers at a mud platform that marked the birthplace of Rama. In 1810, Francis Buchanan visited the site, and stated that the structure destroyed was a temple dedicated to Rama, not a house. Many subsequent sources state that the mosque was constructed after demolishing a temple. Buchanan also recorded that there was an inscription on the wall of the mosque stating it to have been built by Babur. "),
                  ],
                ),
                // Other container properties go here
              ),
              Text("Opposition to the claim",
                  style: GoogleFonts.notoSerif(
                      textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ))),
              Container(
                width: screenWidth,

                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 235, 235, 235),
                      spreadRadius: 2.0,
                      blurRadius: 5.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset(
                        "assets/images/Map_of_Ram_Janmasthan_at_Ayodhya_(1717_CE)_cropped.png"),
                    Text(
                        "A section of historians, such as R. S. Sharma, state that such claims of Babri Masjid site being the birthplace of Rama sprang up only after the 18th century. Sharma states that Ayodhya emerged as a place of Hindu pilgrimage only in medieval times, since ancient texts do not mention it as a pilgrim centre. For example, chapter 85 of the Vishnu Smriti lists 52 places of pilgrimage, which do not include Ayodhya. Many critics also claim that the present-day Ayodhya was originally a Buddhist site, based on its identification with Saketa described in Buddhist texts. According to historian Romila Thapar, ignoring the Hindu mythological accounts, the first historic mention of the city dates back to the 7th century, when the Chinese pilgrim Xuanzang described it as a Buddhist site."),
                  ],
                ),
                // Other container properties go here
              ),
              Text("Deity",
                  style: GoogleFonts.notoSerif(
                      textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ))),
              Container(
                width: screenWidth,

                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 235, 235, 235),
                      spreadRadius: 2.0,
                      blurRadius: 5.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset(
                        "assets/images/Pran_Pratishtha_ceremony_of_Shree_Ram_Janmaboomi_Temple.jpg"),
                    Text(
                        "Ram Lalla Virajman, the infant form of Rama, an avatar of Vishnu, is the presiding deity of the temple. Ram Lalla's dress was stitched by tailors Bhagwat Prasad and Shankar Lal, a fourth generation tailor to Rama's idol. Ram Lalla was a litigant in the court case over the disputed site in 1989, being considered a juristic person by the law. He was represented by Triloki Nath Pandey, a senior VHP leader who was considered Ram Lalla's closest 'human' friend. According to the temple trust, the final blueprint included temples dedicated to Surya, Ganesha, Shiva, Durga, Vishnu and Brahma in the temple grounds. Two idols of Ram Lalla (one of them being 5 years old) is consecrated in the sanctum of the temple. On 29 December 2023, the selection of the idol of Ram Lalla for the Ram Mandir was done through a voting process. A sculptor, known for various statues across India created by him, Arun Yogiraj, from Mysore, Karnataka, created the idol of Rama. The temple priest Arun Dixit has informed that the newly installed deity shall be referred as Bālak Rām (lit. Child Rama). Tulsidas was one among the first who used the word Rām Lallā."),
                  ],
                ),
                // Other container properties go here
              ),
              Text("Construction",
                  style: GoogleFonts.notoSerif(
                      textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ))),
              Container(
                width: screenWidth,

                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 235, 235, 235),
                      spreadRadius: 2.0,
                      blurRadius: 5.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/Prime_Minister.jpg"),
                    Text(
                        "The Shri Ram Janmabhoomi Teerth Kshetra trust began the first phase of construction of the Ram Mandir in March 2020. The COVID-19 pandemic lockdown in India caused a temporary suspension of the construction. On 25 March 2020, Ram's idol was moved to a temporary location in the presence of the Chief Minister of Uttar Pradesh, Yogi Adityanath. In preparation for the temple's construction, the Vishwa Hindu Parishad (VHP) organised a 'Vijay Mahamantra Jaap Anushthan', in which individuals would gather at different places to chant the 'Vijay Mahamantra'  Shri Ram, Jai Ram, Jai Jai Ram, on 6 April 2020. This was said to ensure victory over hurdles in constructing the temple.It was officially announced by Champat Rai, the General Secretary of the Sri Ram Janmbhoomi Kshetra Trust, that 22 January 2024 would be the scheduled date for the installation of the Ram Lalla idol in the garbhagriha (sanctum sanctorum). On 25 October 2023, a formal invitation was extended to Prime Minister Narendra Modi to attend the ceremony."),
                  ],
                ),
                // Other container properties go here
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const navbar(),
    );
  }
}
