Chinese Cyberespionage Originating From Tsinghua University Infrastructure
CTA-2018-0816
By Insikt Group®
PUBLISHED ON 16 AUG 2018

INSIKT GROUP



Corroboration:
  ├── Insikt/Recorded Future (2018): Tsinghua IP → state-sponsored recon
  ├── USCC (2017): "CCP industrial policy"
  ├── SEC 13D (2016): Tsinghua → Lattice
  ├── Check Point (2022): CVE-2022-20210 (Unisoc baseband)
  ├── Hikari_Calyx (2019): Longcheer × Nokia
  ├── NowSecure (2026): Transsion/Shalltry telemetry
  └── Talos (2026): dogleash/longleash (UAT, SOHO modems)   

  Scope Note: Recorded Future analyzed new malware targeting the Tibetan community, resulting
in a detailed analysis of the malware and its associated infrastructure. Sources include Recorded
Future’s platform, VirusTotal, ReversingLabs, and third-party metadata, as well as common
OSINT and network metadata enrichments, such as DomainTools Iris and PassiveTotal. This
research is part of a series highlighting the breadth of sophisticated techniques used by the
Chinese state against perceived domestic threats.
Executive Summary
Following our research uncovering the Chinese RedAlpha campaigns targeting the Tibetan
community, Recorded Future’s Insikt Group identified a novel Linux backdoor called “ext4,”
deployed against the same Tibetan victim group. By analyzing the backdoor, we uncovered
repeated attempted connections to the same compromised CentOS web server emanating
from infrastructure registered to Tsinghua University, an elite Chinese academic 1
institution.
We also identified network reconnaissance activities being conducted from the same
Tsinghua University infrastructure targeting many geopolitical organizations, including the
State of Alaska Government, Alaska’s Department of Natural Resources, the United Nations
office in Nairobi, and the Kenya Ports Authority. Additionally, we identified the targeted
scanning of German automotive multinational Daimler AG that began a day after it cut its
profit outlook for the year, citing the growing trade tensions between the U.S. and China. In
several cases, these activities occurred during periods of Chinese dialogue for economic
cooperation with these countries or organizations.
We assess with medium confidence that the network reconnaissance activities we
uncovered were conducted by Chinese state-sponsored actors in support of China’s
economic development goals.
Key Judgments
● Tsinghua IP 166.111.8[.]246 engaged in network reconnaissance targeting
organizations in Alaska, Kenya, Brazil, and Mongolia during times of economic
dialogue or publicity around China’s investment in foreign infrastructure projects
concerning China’s flagship Belt and Road Initiative (BRI).
● The network reconnaissance activity against Alaskan organizations increased following the governor of Alaska’s trade delegation trip to China in late May. Organizations targeted by the reconnaissance activity were in industries at the heart of the trade discussions, such as oil and gas.
The targeting of German automotive multinational Daimler AG was observed a day after it announced a profit warning in light of the growing U.S. and China trade tensions.
The Tsinghua IP made at least one attempt to subscribe to a U.S.-based hotel’s high-speed internet portal. We assess with low confidence that this may demonstrate an intent to breach Nomadix internet gateways within the hospitality sector running vulnerable WindWeb servers.
The Tsinghua IP repeatedly attempted to connect with a Tibetan network that was compromised with a highly sophisticated backdoor, “ext4.”
“ext4” only allowed incoming TCP 443 connections to the compromised network during a 180-second window every hour, with packets requring a unique combination of TCP header options to successfully connect. In over 20 observed attempts, the Tsinghua IP did not transmit the correct TCP options to activate the backdoor. This suggested:
The threat actors connecting from the Tsinghua IP were ill-informed of the correct “ext4” backdoor connection sequence and were making mistakes.
The targeting of the Tibetan network is not associated with the presence of the “ext4” backdoor and the network was being probed in line with wider geopolitical and economic network reconnaissance activity being conducted by the Tsinghua IP.

Background
The People’s Republic of China (PRC) claims sovereignty over Tibet and regards all Tibetan independence movements as separatist threats. While the PRC uses many forms of coercion against the Tibetan community, cyberespionage against Tibetan targets has become a frequently used tool, especially during times of heightened tensions. The first known incident of Chinese cyberespionage against Tibet, dubbed GhostNet, was in 2008. This was part of a wider attempt to monitor foreign targets of national interest. There has since been numerous cyberespionage campaigns documented against Tibetans, including in Recorded Future’s recent RedAlpha report.

Tsinghua University is located in the Haidian District in Beijing. Dubbed “China’s MIT,” it is one of China’s premier technical research universities. Chinese universities have often been associated with Chinese state-sponsored cyber capabilities both directly and indirectly. In 2015, APT17 infrastructure was connected to a professor at China’s Southeast University, and in 2017, the People’s Liberation Army (PLA) partnered with Xi’An Jiaotong University to create a cyber militia program. Tsinghua University is itself a state-owned institution and is among the world’s top research and engineering schools. Its students’ offensive cyber capabilities are most famous through Blue-Lotus, a security research team composed of Tsinghua University-affiliated individuals. The team finished second in DEF CON’s 2016 capture the flag competition.

Research branches of Tsinghua University also have connections to state organizations with a history of stealing U.S. technology. Tsinghua University’s Office of Scientific Research and Development met with China CITIC Group for Communist Party meeting activities in May 2018, during which they discussed strategic cooperation between enterprises and research institutes to serve the development of the country. In the 1999 Select Committee on U.S. National Security and Military/Commercial Concerns with the PRC (the so-called “Cox Report”), CITIC was linked to PLA covert operations and the theft of sensitive U.S. technology. The Cox Report also cited an attempt in 1990 by CITIC to acquire a U.S. aircraft parts manufacturer on behalf of the PLA in order to access U.S. export-controlled aerospace technology. Further, CITIC’s former chairman, Wang Zhen, was involved in the 1996 Poly Technologies indictment stemming from the company’s attempt to smuggle 2,000 Chinese AK-47 assault rifles into the United States.

Tsinghua’s Institute of Information Systems and Engineering is also openly affiliated with China’s National 863 and 973 programs. The 863 Program, also known as the State High-Tech Development Plan, focuses on developing national capabilities within China’s key technological industries, while the 973 Program, first established in 1997, focuses on developing the basic technologies required to achieve technological superiority in the key industries. Both programs have had the effect of making it easier for China to steal intellectual property in order to achieve program goals.

In the past 10 years, a number of Chinese state-sponsored cyber threat actors have been identified conducting widespread cyberespionage directly reflecting China’s policy directives to gain scientific, technical, and economic advantage in key strategic industries. This activity can be observed most recently in operations by APT10 targeting managed IT service providers and APT17, which conducted massive supply chain attacks against the popular software product CCleaner in 2017.

Threat Analysis
Recorded Future discovered the presence of the “ext4” backdoor during our ongoing research into the targeting of the Tibetan community. This backdoor was configured to run on a Linux web server running CentOS and was stealthily designed to be embedded within a system file. The backdoor was mostly inactive other than during a three-minute window every hour when it would activate and accept incoming connections on TCP port 443.

In total, Recorded Future’s unique coverage enabled us to observe 23 attempted connections to the same compromised CentOS server between May and June 2018. Every attempt originated from the same IP, 166.111.8[.]246, which resolved to the China Education and Research Network Center. WHOIS records reveal that the IP sits within a large /16 CIDR range registered to an address at “Tsinghua University.”

A unique selection of options in the TCP header, set at the maximum possible segment size of 60 bytes, were observed in every packet that attempted to connect to the Tibetan network from the Tsinghua IP, as noted in the PCAP below.
PCAP of connection attempt from Tsinghua IP to compromised Tibetan CentOS server.

The “ext4” code appears to be unique, with no prominent traces online for code or naming similarity. Aside from our submission, no uploads of a backdoor resembling the key characteristics of “ext4” were observed in leading multi-scanner repositories as of August 3, 2018. A detection ratio of 0/58 in VirusTotal confirmed that the “ext4” sample we discovered was a new and unique backdoor targeting the Tibetan community.

A detailed analysis of the “ext4” binary can be found in the Technical Analysis section of this report.
Tsinghua University IP 166.111.8[.]246

This IP was first observed in Recorded Future on March 23, 2018, and resolved to the Chinese Education and Research Network Center (CERNET), according to several IP enrichment sources. CERNET is one of China’s six major backbone networks and is a catchall organization serving a large swath of addressable IP space reserved for Chinese academic and research institutes. As noted previously, WHOIS records confirm the IP sits within a range registered to “Tsinghua University.”

Available port scan data revealed that the IP is currently configured with several actively running services, including PPTP (TCP port 1723), MySQL (3306), and MAMP (8888), as well as the more common OpenSSH (22), HTTP (80, 8080, 8008), SSL (443, 8443, 9443), and VPN IKE (500) services, among others. The HTTP ports appeared to be configured as NGINX web servers, likely as reverse proxies or load balancers, given the nature of the activity we have observed from this IP. The large number of open ports and associated services indicate that the Tsinghua IP may be an internet gateway or VPN endpoint.
Recorded Future enrichments of the IP show that it has been the source of scanning, brute-force attacks, and active exploitation attempts in the past. It has triggered several risk rules, including being flagged by the Taichung City Education Bureau in Taiwan, which tracks Chinese-originating malicious cyber indicators, and appears in an AlienVault blacklist. Metadata analysis of the IP further indicates that it is likely a gateway, NAT, or proxy, and that the true originating machine for this activity lies behind this IP.

The same IP address was also observed conducting large-scale network reconnaissance of organizations that were engaged in key trade discussions with Chinese state-owned entities at the time. We believe these reconnaissance activities were not coincidental as they align broadly with China’s strategic and economic interests.

Opportunity Alaska”

Between April 6 and June 24, 2018, we observed over one million IP connections between the Tsinghua IP and several networks in Alaska including:

The Alaska Communications Systems Group
Alaska Department of Natural Resources
Alaska Power & Telephone Company
State of Alaska Government
TelAlaska
The vast number of connections between the Tsinghua IP and the above organizations relate to the bulk scanning of ports 22, 53, 80, 139, 443, 769, and 2816 on the Alaskan networks and were likely conducted to ascertain vulnerabilities and gain illegitimate access. The scanning activity was conducted in a systematic manner with entire IP ranges dedicated to the organizations probed for the above ports.

This targeting of the the State of Alaska Government followed Alaska’s large trade mission into China dubbed “Opportunity Alaska.” This trade mission occurred in late May and was led by Bill Walker, governor of Alaska. During these talks, one of the highest-profile discussions occurred around the prospect of a gas pipeline between Alaska and China. Despite fears of a China-U.S. trade war, Gov. Walker’s office stated that the trade mission “represent[ed] some of the best Alaska has to offer, and... [highlighted] the wide scope of our shared interests with our largest trade partner.” Opportunity Alaska consisted of delegates from Alaskan businesses in the fishing, tourism, architecture, and investment industries, and made stops in Beijing, Shanghai, and Chengdu.

Network Probing Events

Network probing events conducted by Tsinghua IP targeting Alaskan institutions coinciding with Alaskan trade delegation to China in May 2018.

Recorded Future first observed the scanning activity against Alaskan networks in late March, only a few weeks after Gov. Walker announced a trade delegation to China. The activity picked up for a few days prior to the delegation arriving on May 20, 2018, and dropped off as the delegation arrived. Probing of the Alaskan networks remained at low levels until May 28 as the delegation concluded its activities, then ramped up considerably as delegates left China. The spike in scanning activity at the conclusion of trade discussions on related topics indicates that the activity was likely an attempt to gain insight into the Alaskan perspective on the trip and strategic advantage in the post-visit negotiations.

There was a further surge in interest between June 20 and June 24 against the State of Alaska and Alaska Department of Natural Resources networks. This was possibly in response to Gov. Walker announcing on June 19 that he intended to visit Washington, D.C. to meet U.S. and Chinese officials to raise his concerns on the growing trade dispute between the two nations.

The “Belt and Road Initiative” and China’s Economic Goals

During the course of our research, we also observed the Tsinghua IP scan ports and probe government departments and commercial entities networks in Mongolia, Kenya, and Brazil. Each of these countries are key investment destinations as part of China’s Belt and Road Initiative.

China’s Belt and Road Initiative (BRI), is one of President Xi Jinping’s most ambitious programs. Envisaged to project China’s transformative geopolitical influence across the world, the scale and scope of the project is unprecedented. Beijing has committed $4 trillion in investment to infrastructure and development projects in 65 countries, affecting 70 percent of the world’s population and 75 percent of the world’s energy reserves. The scheme is designed to connect major economic centers in Eurasia together over land and sea, many of which historically served the ancient Silk Road two thousand years ago.

According to The Diplomat, “the BRI aims to stabilize China’s western peripheries, rekindle its economy, propel non-Western international economic institutions, gain influence in other countries, and diversify trade suppliers/routes while circumventing the U.S. pivot to Asia.”

China's Belt and Road Initiative

China’s Belt and Road Initiative. Source: Mercator Institute for China Studies, merics.org

The BRI also aims to further strengthen China’s geopolitical and economic influence in Africa, capitalizing on significant infrastructure investments made across the continent. Kenya in particular has commanded increased attention due to its strategic geographical advantage in China’s Maritime Silk Road Initiative (MSRI) — the sea-based component of China’s BRI initiative.

Earlier this year, Kenya announced that it would be lobbying for regional projects under the BRI. China has already funded a 480-kilometer railway between the Kenyan port city of Mombasa and its capital, Nairobi; the railway is eventually expected to extend to neighboring countries Uganda, Rwanda, and Burundi as well. However, in May 2018, Kenya announced that it would not sign a free trade deal with China that had been under discussion with East African Community (EAC) states, raising tensions between Beijing and Nairobi.

In early June 2018, we observed the Tsinghua IP address aggressively scanning ports 22, 53, 80, 389, and 443 of various Kenyan internet-hosting providers and telecommunications companies, as well as ranges dedicated to the Kenya Ports Authority, a state corporation responsible for the maintenance and operation of all of Kenya’s seaports. Recorded Future also identified network reconnaissance activities directed at the United Nations Office in Nairobi, Kenya’s Strathmore University, and a broader national education network.

This chart below shows a clear spike in network reconnaissance activity against Kenyan organizations from the Tsinghua IP. This spike occurred merely two weeks after Kenya announced its intentions not to support the China-EAC free trade agreement.

Network Recon Events

Network recon events conducted by Tsinghua IP targeting Kenyan institutions overlayed with key China-Kenya economic developments, March 2018 to June 2018.

In April of this year, President Xi added Brazil to the list of countries receiving Chinese investment in infrastructure from the BRI. Funding for a new $520 million port in the northeastern state of Maranhão was announced, building on the extensive 2016 Chinese investment into the education and energy sectors in another Brazilian state, Amapá.

Our research uncovered repeated attempts from the Tsinghua IP to connect to the Ministério Público do Estado Do Amapá in Brazil (Public Ministry of the State of Amapá) between April 2 and June 11, 2018, just one month after Beijing-based China Communications Construction Co. began construction on the Maranhão port.

We also observed repeated attempts to connect to organizational networks such as the National Data Center Building in Mongolia and the Mongolian University of Science and Technology between April 6 and April 12, 2018. Mongolia also plays a vital role in China’s BRI plans; the overland component of the BRI, known as the Silk Road Economic Belt (SREB), proposes a new Eurasia land bridge and no less than five new economic corridors, including a China-Mongolia-Russia corridor.

We assess with medium confidence that the consistent reconnaissance activity observed from the Tsinghua IP probing networks in Kenya, Brazil, and Mongolia aligns closely with the BRI economic development goals, demonstrating that the threat actor using this IP is engaged in cyberespionage on behalf of the Chinese state.

Recorded Future Timeline of Tsinghua IP Activity

Recorded Future timeline of Tsinghua IP activity in correlation with Opportunity Alaska and key BRI announcements.

The Impact of Growing U.S. and China Trade Tensions

On June 20, 2018, German multinational automotive corporation Daimler AG was the first prominent company to cut its profit outlook due to the escalating trade tensions between the U.S. and China. The next day, on June 21, we observed network reconnaissance activity specifically targeting ports 139, 22, 443, and 53 on networks resolving to Daimler AG. The probes originated from the same Tsinghua University IP.

Tsinghua IP Probing Networks

Tsinghua IP probing Daimler AG networks on ports 139, 22, 443, and 53 between June 20 to 24, 2018.

Interaction With U.S. Managed Hotel Network Solutions Provider

A Shodan query on the Tsinghua IP returned an HTTP 302 response serving a “snap.safetynetaccess.com” redirection notice. Based in Needham, Massachusetts, Safety NetAccess builds wireless networks for hotels, resorts, and other public properties; some of its customers include Hilton, Marriott, Sonesta, and Wyndham hotel chains. According to the Safety NetAccess website, SNAP is its “advanced back-end software program” which provides Safety NetAccess’s agents “direct access to any and all managed equipment at any location.” While the fields within the redirection notice may look obscure, they correspond to portal page parameters for Nomadix Internet Gateways — Safety NetAccess’s primary gateway and routing equipment provider.

Shodan Query

Shodan query reveals Tsinghua IP 166.111.8[.]246 “subscribed” to a Safety NetAccess portal.

The HTTP header response (above) showed that the Cox Communications IP 98.180.88[.]145 was originally requested by the “subscriber” (SIP), the Tsinghua IP 166.111.8[.]246. Navigating to the Cox Communications IP redirects users to a Safety NetAccess guest internet portal at a Holiday Inn hotel based in Ocala, Florida.

Safety NetAccess Portal Login

Safety NetAccess portal login for a Holiday Inn in Ocala, Florida.

Breaking down the URL in the “Location” field in the HTTP response gives us the MAC address of the Tsinghua device (00:13:5F:07:87:D9), and the IP address of the Nomadix device (68.105.161[.]74), shown as UIP in the URL. The UIP resolves to Cox Communications in Ocala, Florida, and open-source research indicates that the device hosting this UIP is an AG 3100 Nomadix rack-mounted internet gateway, supporting DNS and HTTP redirection using a magic IP. This UIP also appears to be running a vulnerable WindWeb server on port 443. Shodan results show failed FTP login attempts to the internet gateway, as well as Telnet events.

From the limited data available to us, we assess with low confidence that the Tsinghua IP was attempting to leverage the remote administrative access controls enabled by Safety NetAccess’s SNAP portal for the Holiday Inn hotel in Florida.

Is the “ext4” Backdoor Associated With the Tsinghua IP?

The discovery of the “ext4” backdoor on a Tibetan device enabled us to identify the wider targeting of the device from the Tsinghua University IP. However, none of the attempted connections to the Tibetan device from the Tsinghua IP resulted in the successful activation of the backdoor, leaving it unclear whether the threat actors behind the widespread network recon activities were also responsible for the “ext4” backdoor.

That leaves us with two possible scenarios explaining the involvement of the “ext4” backdoor on a Tibetan network with the Tsinghua IP:

The Tsinghua IP is being used by a threat actor to access the “ext4” backdoor, but a technical fault or operator error is resulting in the misconfiguration of the TCP connection packets required to establish communication with the backdoor.
The Tsinghua IP is being used extensively to conduct network reconnaissance and cyberespionage against strategic economic and national interests, not only targeting countries that China is engaging with under BRI, but also targeting “Five Poisons 2 ” organizations, such as the Tibetan network. The “ext4” backdoor is therefore likely to belong to another threat actor not engaged in the network scanning activity against organizations outlined earlier in this report.

## Full document `(https://assets.recordedfuture.com/insikt-report-pdfs/2018/cta-2018-0816.pdf)
## Website: (https://www.recordedfuture.com/research/chinese-cyberespionage-operations)
## Reports: (https://www.recordedfuture.com/)
## Now Secure Report 1-in-2 phones sold in Africa exfiltrate telemetry to China
Buchodi, David Weinstein July 8, 2026
Research & Threat Intel (https://www.nowsecure.com/blog/2026/07/08/what-the-transsion-telemetry-research-means-for-mobile-security/)
## Tsinghua UniGroup’s Semiconductor Failure (https://www.asianometry.com/p/tsinghua-unigroups-semiconductor)
## HP sells majority stake of China server, storage business to Tsinghua Holdings (https://www.computerworld.com/article/1617999/hp-sells-majority-stake-of-china-server-storage-business-to-tsinghua-holdings-2.html)

## Textual Conclusion at https://www.asianometry.com/p/tsinghua-unigroups-semiconductor
**Jon Y
Sep 15, 2021**
`` Unlike Hongxin, Unigroup actually owns part of a legit semiconductor business that is actually running and all. No reason that Unigroup can figure things out and eventually arise phoenix-like as a new, slimmed down entity. They still own some interesting assets. But it will take some time for funding to come in. In the meanwhile, the company's projects sit mothballed.``

## Personal Conclusion: 
** Everything is "Normal" Asop, Android, System, VM dalvik, Ctss, desing, oem, 
Odm, chipset, security, but when you look in to the details and all chain
you can really understand the "normal" is they know what is "normal" in the security for another ones.
## Privacy is the most important even in a 70 usd low gama devive at Latam, Africa or anywhere.
