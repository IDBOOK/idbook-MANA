# idbook-MANA

MANA algorithm
In society, different individuals and identities have different amounts of influence. Although identity does not have the same unit of measurement as currency, it has obvious value nevertheless. People evaluate and compare each other, and they can only build trust by relying on a limited number of intermediary evaluations. 
When we try to quantify the value of a person's identity, we need to collect their degree of participation in society to evaluate their social influence. MANA is the unit of measure of the value of an identity. In a broader context, the term MANA is close to influence, fame, social skills, connections and popularity. However, in the measurement of the identity value, it is only the measurement unit that measures the importance of a person's identity, which is the result of an algorithm. 
By creating a metering algorithm, we can quantify the identity information of human beings, and finally get a number that represents the real exchanging, thus extending more use cases. We will draw on the design ideas of a search engine page ranking algorithm.
This is because the first search engine, Yahoo, used the classification method, that is, through manually classifying and collating Websites. Later, with more and more Web pages, manual classification was not realistic. Search engines later entered the era of text retrieval. This calculates a user’s query keywords and the relevance of the content of the Web page to return the search results. This method is more scalable, but the search results were not very good, because there were always some pages adjusting keywords back and forth to improve their search rankings. 
Subsequently, Google's two founders, Stanford University graduate students Larry Page and Sergey Brin began the study of web scheduling issues. From academia they borrowed the concept of citations. Papers linked to other papers have more credibility and value. This forms the basis of modern search engines.


This is Google's Webpage importance algorithm PageRank, which is the cornerstone of Google's business success. This algorithm is used to solve the problem of page ranking. When measuring a page's ranking, we basically follow two default prerequisite principles:
(1) When a Webpage is linked to more pages, its ranking will be moved forward.
(2) High-ranking web pages should have greater voting rights, that is, when a Web page is linked to a high-ranking page, its importance should also be increased.
The basic principle is that: the link from page A to page B is considered as a support vote for page A for page B, but to evaluate the overall "importance" of the page, we cannot simply look at the number of votes, but to see the importance of those votes.
Based on this principle, the model created by the PageRank algorithm is very simple: a page is ranked equal to the sum of the weighted rankings of all pages linked to the page. The PRi represents the PageRank value of page i to measure the ranking of each page, and the higher the rank is, the greater the PageRank value is. The link between Web pages can be represented as G= (V,e), and the edge (J,i) represents the page f has links to the page i; Oj is the out-degree of the page J, or the number of Out-links of pages j.



