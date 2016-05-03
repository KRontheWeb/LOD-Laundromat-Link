# LOD-Laundromat-Link

Easy-peasy linking to [LOD Laundromat](http://lodlaundromat.org) resources.



## Installation

  1. Install [SWI-Prolog development version](http://www.swi-prolog.org/download/devel).
  2. Clone this repository: `$ git clone https://github.com/KRontheWeb/LOD-Laundromat-Link`
  3. Run install: `$ cd LOD-Laundromat-Link` and then `$ swipl install.pl`



## Examples

Use a text string:

```bash
$ swipl -s run.pl -g "id('Rinke Hoekstra')"
Looking for identities of Rinke Hoekstra:...
    1. http://dblp.rkbexplorer.com/id/people-db5a10294c79c79f6870731820ebb7e7-9d6c108e488decca14ac7b404d1a3e39
    2. http://data.semanticweb.org/person/rinke-hoekstra
    3. http://semanticweb.org/id/Rinke_Hoekstra
    4. http://dblp.rkbexplorer.com/id/people-db5a10294c79c79f6870731820ebb7e7-4aa19a1b82cfc66024940a9ae071209d
    5. http://semanticweb.org/id/User-3ARinke_Hoekstra
    6. http://dblp.rkbexplorer.com/id/people-db5a10294c79c79f6870731820ebb7e7-06854d55c75a58dc7510163a6554a449
    7. http://dblp.rkbexplorer.com/id/people-a6710e18ddbd04a7fa19f79e7bf0f93d-2673982f1f95d42f7ca900b61c8974ef
    8. http://www.aifb.uni-karlsruhe.de/WBS/dvr/rove/rove#rinke
    9. http://dblp.rkbexplorer.com/id/people-db5a10294c79c79f6870731820ebb7e7-1791148db44651ee7b6a9475b0b53a80
    10. http://citeseer.rkbexplorer.com/id/resource-CSP132173-47ebecd590ec084fb5c07af2162b9f61
    11. http://dblp.l3s.de/d2r/resource/authors/Rinke_Hoekstra
    12. http://dblp.rkbexplorer.com/id/people-db5a10294c79c79f6870731820ebb7e7-953169b7ca590395dcbafd67c86e6f5b
    13. http://dblp.rkbexplorer.com/id/people-db5a10294c79c79f6870731820ebb7e7-96eaa0d8176876d46a62e0b9288bf836
    14. http://dblp.rkbexplorer.com/id/people-db5a10294c79c79f6870731820ebb7e7-dec32a95d661a1e3a33f2c0386b719bb
    15. http://dblp.rkbexplorer.com/id/people-db5a10294c79c79f6870731820ebb7e7-11c6e2e1e1d183e3d0cd1c954a910883
    16. http://www.informatik.uni-trier.de/~ley/db/indices/a-tree/h/Hoekstra:Rinke.html
    17. http://dblp.rkbexplorer.com/id/people-db5a10294c79c79f6870731820ebb7e7-dd2782cfcad1265dd8968cb5767c557e
    18. http://citeseer.rkbexplorer.com/id/resource-CSP132173-2f2ef242a224d307501497594500df2e
    19. http://tw.rpi.edu/wiki/Special:URIResolver/Rinke_Hoekstra
    20. http://dblp.rkbexplorer.com/id/people-db5a10294c79c79f6870731820ebb7e7-45cdf7e7ee54a156e27b2979006f89d6
    21. http://dblp.rkbexplorer.com/id/people-db5a10294c79c79f6870731820ebb7e7-6940cd6d3668e956e7cb4dea240854e9
    22. http://dblp.rkbexplorer.com/id/people-db5a10294c79c79f6870731820ebb7e7-0355880db6f902f623cdd9ad5f17951c
    23. http://dblp.rkbexplorer.com/id/people-db5a10294c79c79f6870731820ebb7e7-b3dad58a4f4a43640dc2c61f81e2d02e
Done!  Found 23 identities.
```


Use a full IRI:

```bash
$ swipl -s run.pl -g "id('http://sw.opencyc.org/concept/Mx4rvbMwNZwpEbGdrcN5Y29ycA')"
Looking for identities of http://sw.opencyc.org/concept/Mx4rvbMwNZwpEbGdrcN5Y29ycA:
    1. http://sw.opencyc.org/concept/Mx4rvbMwNZwpEbGdrcN5Y29ycA
    2. http://dbpedia.org/resource/Chuck_Norris
    3. http://yago-knowledge.org/resource/Chuck_Norris
    4. http://an.dbpedia.org/resource/Chuck_Norris
    5. http://ar.dbpedia.org/resource/تشاك_نوريس
    6. http://az.dbpedia.org/resource/Çak_Norris
    7. http://bat-smg.dbpedia.org/resource/Chuck_Norris
    8. http://be-x-old.dbpedia.org/resource/Чак_Норыс
    9. http://be.dbpedia.org/resource/Чак_Норыс
    10. http://bg.dbpedia.org/resource/Чък_Норис
    11. http://bn.dbpedia.org/resource/চাক_নরিস
    12. http://br.dbpedia.org/resource/Chuck_Norris
    13. http://ca.dbpedia.org/resource/Chuck_Norris
    14. http://rdf.freebase.com/ns/m.015lhm
    15. http://www.wikidata.org/entity/Q2673
	...
```


Use an IRI with prefix aliases registered by [prefix.cc](http://prefix.cc):

```bash
$ swipl -s run.pl -g "id(dbr:'Monkey')"
Looking for identities of http://dbpedia.org/resource/Monkey:
    1. http://dbpedia.org/resource/Monkey
    2. http://af.dbpedia.org/resource/Aap
    3. http://am.dbpedia.org/resource/ጦጣ
    4. http://ar.dbpedia.org/resource/سعدان
    5. http://arz.dbpedia.org/resource/قرد
    6. http://be.dbpedia.org/resource/Малпа
    7. http://bn.dbpedia.org/resource/বানর
    8. http://br.dbpedia.org/resource/Marmouz_(loen)
    9. http://als.dbpedia.org/resource/Affen
    10. http://bat-smg.dbpedia.org/resource/Beždiuonė
    11. http://bs.dbpedia.org/resource/Majmun
    12. http://ca.dbpedia.org/resource/Mico
    13. http://rdf.freebase.com/ns/m.08pbxl
    14. http://www.wikidata.org/entity/Q1367
    15. http://cs.dbpedia.org/resource/Opice
	...
```
