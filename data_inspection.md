Data Inspection for Final Project
================
2022-04-20

First, I will load in the packages (tidyverse, lemon, knitr). This code
is in the script but not knit to the markdown document for readability.

I also read in the “DS-KROK4BDJ.txt” file, which is a tsv downloaded
from our paper of choice and (I believe) contains all the data we will
need to work with, including sample IDs, geographic information, and
sequences.

After reading in the file, I inspect the column dimensions

``` r
dim(bdj)
```

    ## [1] 124  80

There are 80 columns and 124 rows in this file. Next check out column
names.

``` r
kable(column_names)
```

| x                          |
|:---------------------------|
| processid                  |
| sampleid                   |
| recordID                   |
| catalognum                 |
| fieldnum                   |
| institution_storing        |
| collection_code            |
| bin_uri                    |
| phylum_taxID               |
| phylum_name                |
| class_taxID                |
| class_name                 |
| order_taxID                |
| order_name                 |
| family_taxID               |
| family_name                |
| subfamily_taxID            |
| subfamily_name             |
| genus_taxID                |
| genus_name                 |
| species_taxID              |
| species_name               |
| subspecies_taxID           |
| subspecies_name            |
| identification_provided_by |
| identification_method      |
| identification_reference   |
| tax_note                   |
| voucher_status             |
| tissue_type                |
| collection_event_id        |
| collectors                 |
| collectiondate_start       |
| collectiondate_end         |
| collectiontime             |
| collection_note            |
| site_code                  |
| sampling_protocol          |
| lifestage                  |
| sex                        |
| reproduction               |
| habitat                    |
| associated_specimens       |
| associated_taxa            |
| extrainfo                  |
| notes                      |
| lat                        |
| lon                        |
| coord_source               |
| coord_accuracy             |
| elev                       |
| depth                      |
| elev_accuracy              |
| depth_accuracy             |
| country                    |
| province_state             |
| region                     |
| sector                     |
| exactsite                  |
| image_ids                  |
| image_urls                 |
| media_descriptors          |
| captions                   |
| copyright_holders          |
| copyright_years            |
| copyright_licenses         |
| copyright_institutions     |
| photographers              |
| sequenceID                 |
| markercode                 |
| genbank_accession          |
| nucleotides                |
| trace_ids                  |
| trace_names                |
| trace_links                |
| run_dates                  |
| sequencing_centers         |
| directions                 |
| seq_primers                |
| marker_codes               |

Let’s look at the first 5 rows in this file. It’s a large chunk, but
very interesting. Scroll side to side to see the whole chunk.

``` r
kable(bdj[1:5])
```

| processid  | sampleid | recordID | catalognum | fieldnum |
|:-----------|:---------|---------:|:-----------|:---------|
| KROK004-19 | CLPT-004 | 10924772 | CLPT-004   | NA       |
| KROK005-19 | CLPT-005 | 10924773 | CLPT-005   | NA       |
| KROK008-19 | CLPT-015 | 10924776 | CLPT-015   | NA       |
| KROK010-19 | CLPT-017 | 10924778 | CLPT-017   | NA       |
| KROK011-19 | CLPT-018 | 10924779 | CLPT-018   | NA       |
| KROK012-19 | CLPT-019 | 10924780 | CLPT-019   | NA       |
| KROK015-19 | CLPT-023 | 10924783 | CLPT-023   | NA       |
| KROK018-19 | CLPT-026 | 10924786 | CLPT-026   | NA       |
| KROK019-19 | CLPT-027 | 10924787 | CLPT-027   | NA       |
| KROK022-19 | CLPT-030 | 10924790 | CLPT-030   | NA       |
| KROK025-19 | GPHM-001 | 10924793 | GPHM-001   | NA       |
| KROK031-19 | GPHM-049 | 10924799 | GPHM-049   | NA       |
| KROK032-19 | GPHM-053 | 10924800 | GPHM-053   | NA       |
| KROK035-19 | LTHB-003 | 10924803 | LTHB-003   | NA       |
| KROK037-19 | LTHB-010 | 10924805 | LTHB-010   | NA       |
| KROK038-19 | LTHB-013 | 10924806 | LTHB-013   | NA       |
| KROK039-19 | LTHB-020 | 10924807 | LTHB-020   | NA       |
| KROK046-19 | LTHB-46  | 10924814 | LTHB-46    | NA       |
| KROK050-19 | SCLP-011 | 10924818 | SCLP-011   | NA       |
| KROK054-19 | SPDR-013 | 10924822 | SPDR-013   | NA       |
| KROK055-19 | SPDR-021 | 10924823 | SPDR-021   | NA       |
| KROK056-19 | SPDR-025 | 10924824 | SPDR-025   | NA       |
| KROK057-19 | SPDR-029 | 10924825 | SPDR-029   | NA       |
| KROK059-19 | SPDR-043 | 10924827 | SPDR-043   | NA       |
| KROK060-19 | SPDR-049 | 10924828 | SPDR-049   | NA       |
| KROK064-19 | SPDR-057 | 10924832 | SPDR-057   | NA       |
| KROK065-19 | SPDR-062 | 10924833 | SPDR-062   | NA       |
| KROK066-19 | SPDR-064 | 10924834 | SPDR-064   | NA       |
| KROK067-19 | SPDR-072 | 10924835 | SPDR-072   | NA       |
| KROK069-19 | SPDR-076 | 10924837 | SPDR-076   | NA       |
| KROK072-19 | SPDR-088 | 10924840 | SPDR-088   | NA       |
| KROK074-19 | SPDR-092 | 10924842 | SPDR-092   | NA       |
| KROK084-19 | SPDR-121 | 10924852 | SPDR-121   | NA       |
| KROK085-19 | SPDR-126 | 10924853 | SPDR-126   | NA       |
| KROK087-19 | SPDR-133 | 10924855 | SPDR-133   | NA       |
| KROK088-19 | SPDR-136 | 10924856 | SPDR-136   | NA       |
| KROK089-19 | SPDR-139 | 10924857 | SPDR-139   | NA       |
| KROK090-20 | GPHM-002 | 12394088 | GPHM-002   | NA       |
| KROK091-20 | GPHM-004 | 12394089 | GPHM-004   | NA       |
| KROK092-20 | GPHM-013 | 12394090 | GPHM-013   | NA       |
| KROK096-20 | GPHM-044 | 12394094 | GPHM-044   | NA       |
| KROK100-20 | GPHM68   | 12394098 | GPHM68     | NA       |
| KROK102-20 | GPHM71   | 12394100 | GPHM71     | NA       |
| KROK103-20 | LTHB-007 | 12394101 | LTHB-007   | NA       |
| KROK104-20 | LTHB-016 | 12394102 | LTHB-016   | NA       |
| KROK105-20 | LTHB-018 | 12394103 | LTHB-018   | NA       |
| KROK108-20 | LTHB53   | 12394106 | LTHB53     | NA       |
| KROK111-20 | LTHB57   | 12394109 | LTHB57     | NA       |
| KROK120-20 | SCLP-010 | 12394118 | SCLP-010   | NA       |
| KROK122-20 | SCLP-013 | 12394120 | SCLP-013   | NA       |
| KROK123-20 | SCLP-014 | 12394121 | SCLP-014   | NA       |
| KROK127-20 | SPDR-005 | 12394125 | SPDR-005   | NA       |
| KROK128-20 | SPDR-009 | 12394126 | SPDR-009   | NA       |
| KROK129-20 | SPDR-010 | 12394127 | SPDR-010   | NA       |
| KROK135-20 | SPDR-045 | 12394133 | SPDR-045   | NA       |
| KROK136-20 | SPDR-048 | 12394134 | SPDR-048   | NA       |
| KROK139-20 | SPDR-056 | 12394137 | SPDR-056   | NA       |
| KROK144-20 | SPDR-084 | 12394142 | SPDR-084   | NA       |
| KROK145-20 | SPDR-102 | 12394143 | SPDR-102   | NA       |
| KROK149-20 | SPDR-123 | 12394147 | SPDR-123   | NA       |
| KROK150-20 | SPDR-130 | 12394148 | SPDR-130   | NA       |
| KROK151-20 | SPDR-135 | 12394149 | SPDR-135   | NA       |
| KROK153-20 | SPDR-141 | 12394151 | SPDR-141   | NA       |
| KROK154-20 | SPDR-142 | 12394152 | SPDR-142   | NA       |
| KROK002-19 | CLPT-002 | 10924770 | CLPT-002   | NA       |
| KROK003-19 | CLPT-003 | 10924771 | CLPT-003   | NA       |
| KROK006-19 | CLPT-007 | 10924774 | CLPT-007   | NA       |
| KROK007-19 | CLPT-009 | 10924775 | CLPT-009   | NA       |
| KROK013-19 | CLPT-020 | 10924781 | CLPT-020   | NA       |
| KROK014-19 | CLPT-021 | 10924782 | CLPT-021   | NA       |
| KROK016-19 | CLPT-024 | 10924784 | CLPT-024   | NA       |
| KROK017-19 | CLPT-025 | 10924785 | CLPT-025   | NA       |
| KROK020-19 | CLPT-028 | 10924788 | CLPT-028   | NA       |
| KROK021-19 | CLPT-029 | 10924789 | CLPT-029   | NA       |
| KROK023-19 | CLPT-031 | 10924791 | CLPT-031   | NA       |
| KROK026-19 | GPHM-003 | 10924794 | GPHM-003   | NA       |
| KROK027-19 | GPHM-008 | 10924795 | GPHM-008   | NA       |
| KROK029-19 | GPHM-029 | 10924797 | GPHM-029   | NA       |
| KROK030-19 | GPHM-035 | 10924798 | GPHM-035   | NA       |
| KROK036-19 | LTHB-006 | 10924804 | LTHB-006   | NA       |
| KROK041-19 | LTHB-032 | 10924809 | LTHB-032   | NA       |
| KROK042-19 | LTHB-033 | 10924810 | LTHB-033   | NA       |
| KROK043-19 | LTHB-035 | 10924811 | LTHB-035   | NA       |
| KROK044-19 | LTHB-040 | 10924812 | LTHB-040   | NA       |
| KROK047-19 | LTHB-48  | 10924815 | LTHB-48    | NA       |
| KROK048-19 | LTHB-49  | 10924816 | LTHB-49    | NA       |
| KROK052-19 | SPDR-001 | 10924820 | SPDR-001   | NA       |
| KROK053-19 | SPDR-007 | 10924821 | SPDR-007   | NA       |
| KROK058-19 | SPDR-037 | 10924826 | SPDR-037   | NA       |
| KROK061-19 | SPDR-051 | 10924829 | SPDR-051   | NA       |
| KROK068-19 | SPDR-073 | 10924836 | SPDR-073   | NA       |
| KROK070-19 | SPDR-085 | 10924838 | SPDR-085   | NA       |
| KROK073-19 | SPDR-091 | 10924841 | SPDR-091   | NA       |
| KROK075-19 | SPDR-093 | 10924843 | SPDR-093   | NA       |
| KROK077-19 | SPDR-099 | 10924845 | SPDR-099   | NA       |
| KROK078-19 | SPDR-104 | 10924846 | SPDR-104   | NA       |
| KROK079-19 | SPDR-107 | 10924847 | SPDR-107   | NA       |
| KROK080-19 | SPDR-110 | 10924848 | SPDR-110   | NA       |
| KROK082-19 | SPDR-115 | 10924850 | SPDR-115   | NA       |
| KROK083-19 | SPDR-120 | 10924851 | SPDR-120   | NA       |
| KROK086-19 | SPDR-129 | 10924854 | SPDR-129   | NA       |
| KROK095-20 | GPHM-032 | 12394093 | GPHM-032   | NA       |
| KROK098-20 | GPHM64   | 12394096 | GPHM64     | NA       |
| KROK106-20 | LTHB-034 | 12394104 | LTHB-034   | NA       |
| KROK109-20 | LTHB54   | 12394107 | LTHB54     | NA       |
| KROK119-20 | SCLP-009 | 12394117 | SCLP-009   | NA       |
| KROK121-20 | SCLP-012 | 12394119 | SCLP-012   | NA       |
| KROK124-20 | SCLP-016 | 12394122 | SCLP-016   | NA       |
| KROK125-20 | SCLP18   | 12394123 | SCLP18     | NA       |
| KROK126-20 | SCLP19   | 12394124 | SCLP19     | NA       |
| KROK130-20 | SPDR-016 | 12394128 | SPDR-016   | NA       |
| KROK131-20 | SPDR-019 | 12394129 | SPDR-019   | NA       |
| KROK132-20 | SPDR-027 | 12394130 | SPDR-027   | NA       |
| KROK133-20 | SPDR-031 | 12394131 | SPDR-031   | NA       |
| KROK134-20 | SPDR-034 | 12394132 | SPDR-034   | NA       |
| KROK137-20 | SPDR-050 | 12394135 | SPDR-050   | NA       |
| KROK138-20 | SPDR-055 | 12394136 | SPDR-055   | NA       |
| KROK140-20 | SPDR-058 | 12394138 | SPDR-058   | NA       |
| KROK141-20 | SPDR-059 | 12394139 | SPDR-059   | NA       |
| KROK143-20 | SPDR-082 | 12394141 | SPDR-082   | NA       |
| KROK146-20 | SPDR-105 | 12394144 | SPDR-105   | NA       |
| KROK147-20 | SPDR-111 | 12394145 | SPDR-111   | NA       |
| KROK148-20 | SPDR-119 | 12394146 | SPDR-119   | NA       |
| KROK152-20 | SPDR-137 | 12394150 | SPDR-137   | NA       |

From this point, we can pick out columns that we want to work with. For
practice, I will select the phylum-subspecies taxID and name columns (14
columns total) and convert them to factor. After this (hidden) code
chunk, the “bdj” object (our data) columns with these names will be
converted from “numeric” or “character” to “factor”. Since they are now
factors, we can run other analyses on them and visualize how many of
each, etc.

(The code is here, trust me. Check the Rmd file if you want to see it)

Next check out the various family names in this file.

(note: I’m just doing all this to inspect the file, we don’t have to use
these processes.)

``` r
unique(bdj$family_name) %>% as.matrix(family_name) -> family_name_view
kable(family_name_view)
```

|                   |
|:------------------|
| Carabidae         |
| Geophilidae       |
| Linotaeniidae     |
| Mecistocephalidae |
| Lithobiidae       |
| Cryptopidae       |
| Agelenidae        |
| Anapidae          |
| Clubionidae       |
| Dysderidae        |
| Gnaphosidae       |
| Theridiidae       |
| Linyphiidae       |
| Lycosidae         |
| Miturgidae        |
| Segestriidae      |
| Schendylidae      |
| Araneidae         |
| Staphylinidae     |
| Elateridae        |
| Amaurobiidae      |
| Hahniidae         |

I’d like to visualize how many samples per family we have. In other
words, how many “Therididae”? How many “Anapidae”?

I’ll use ggplot to do this.

``` r
ggplot(bdj, aes(x=reorder(family_name, family_name, function(x)-length(x)),fill=family_name)) +
  geom_bar() +
  labs(title="Individuals per Family", 
         x="Family Name", y = "Count") +
  theme(axis.text.x = element_text(angle = 90))
```

![](data_inspection_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

That looks so cool and I want to do another one. This one will be genus.

``` r
ggplot(bdj, aes(x=reorder(genus_name, genus_name, function(x)-length(x)),fill=genus_name)) +
  geom_bar() +
  labs(title="Individuals per Genus", 
         x="Family Name", y = "Count") +
  theme(axis.text.x = element_text(angle = 90)) +
  theme(legend.position="none") 
```

![](data_inspection_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

Not very easy to read but the colors are colorful.

``` r
phylo <- bdj
view(phylo)
```

Now we prepare to retrieve the BOLD sequence data.

``` r
phylo1 <- phylo%>%add_column(retrieved_seq = NA )%>%select(1:8,81,everything())
```

We have created the empty column where sequences from BOLD will be put.

``` r
slicey <- phylo1
```

Created slicey to practice on

``` r
check2<- bold_seq(taxon = NULL, ids = slicey$processid, bin = slicey$bin_uri, container = NULL, institutions = NULL, researchers = NULL, geo = NULL, marker = "COI-5P", response = FALSE)
```

Here we matched the bin_uri information to the BOLD database, retrieved
the sequence. And next we checked manually the first few entries against
the NCBI database to double check the correct species was identified. We
used process_id and bin_uri to define the gene and the species.

check2 was the practice data. Next we need to read the check2 into a
table or similar and extract the sequences. First we make the BOLD
output file into a dataframe. This is a very wide dataframe with many
columns.

``` r
str(check2)
```

    ## List of 115
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK002-19"
    ##   ..$ name    : chr "Abax parallelepipedus"
    ##   ..$ gene    : chr "KROK002-19"
    ##   ..$ sequence: chr "AACATTATACTTTATTTTTGGTGCATGATCAGGAATAGTCGGAACCTCTTTAAGAATGTTAATTCGACTTGAATTAGGAAATCCTGGATCACTAATTGGTGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK003-19"
    ##   ..$ name    : chr "Cychrus attenuatus"
    ##   ..$ gene    : chr "KROK003-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTTGGTGCTTGATCAGGGATAGTAGGAACTTCCCTAAGAATACTAATTCGAGCTGAACTAGGAAATCCAGGGTCCTTAATCGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK004-19"
    ##   ..$ name    : chr "Licinus hoffmannseggii"
    ##   ..$ gene    : chr "KROK004-19"
    ##   ..$ sequence: chr "AACTTTATATTTCATTTTCGGGGCCTGAGCAGGAATAGTAGGTACTTCTTTAAGTATATTAATTCGAGCTGAATTAGGAAATCCAGGATCACTTATTGGTGATGATCAGAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK005-19"
    ##   ..$ name    : chr "Pterostichus burmeisteri"
    ##   ..$ gene    : chr "KROK005-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTTGGTATATGAGCAGGAATAGTAGGTACTTCATTAAGTATATTAATTCGAGCTGAATTAGGTAATCCTGGATCATTAATTGGTGACGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK007-19"
    ##   ..$ name    : chr "Carabus croaticus"
    ##   ..$ gene    : chr "KROK007-19"
    ##   ..$ sequence: chr "GATATTGGAACTTTATATTTCATTTTTGGTGCCTGATCCGGAATAGTAGGAACTTCATTAAGAATATTAATCCGGGCCGAATTAGGTAACCCCGGATCCTTAATTGGAGAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK008-19"
    ##   ..$ name    : chr "Abax ovalis"
    ##   ..$ gene    : chr "KROK008-19"
    ##   ..$ sequence: chr "AAGATATTGGAACACTATATTTTATTTTTGGTACATGATCAGGAATAGTAGGAACATCTTTAAGAATATTAATTCGAGCTGAATTAGGAAATCCAGGATCATTAATTGGTG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK010-19"
    ##   ..$ name    : chr "Notiophilus biguttatus"
    ##   ..$ gene    : chr "KROK010-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATCTTTGGGGCTTGGTCAGGGATAGTTGGAACTTCTTTAAGAATACTAATTCGAGCAGAATTAGGAAATCCTGGATCTTTAATTGGAGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK011-19"
    ##   ..$ name    : chr "Carabus creutzeri"
    ##   ..$ gene    : chr "KROK011-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTTGGTGCTTGATCAGGAATAGTGGGAACTTCTTTAAGAATACTAATTCGAGCTGAATTAGGTAACCCTGGATCCTTAATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK012-19"
    ##   ..$ name    : chr "Molops piceus"
    ##   ..$ gene    : chr "KROK012-19"
    ##   ..$ sequence: chr "GATATTGGAACATTATATTTTATTTTTGGAGCATGAGCAGGGATAGTAGGAACATCATTAAGAATATTGATTCGAGCTGAATTAGGAAGCCCAGGATCACTAATTGGAGAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK013-19"
    ##   ..$ name    : chr "Trechus croaticus"
    ##   ..$ gene    : chr "KROK013-19"
    ##   ..$ sequence: chr "AACCTTATATTTCATTTTTGGAGCTTGGGCAGGAATAGTAGGAACATCATTAAGAATATTAATTCGAGCTGAATTAGGAAATCCTGGTTCTTTAATTGGAGACGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK014-19"
    ##   ..$ name    : chr "Stenichnus collaris"
    ##   ..$ gene    : chr "KROK014-19"
    ##   ..$ sequence: chr "TACCCTTTATTTTATTTTAGGAATTTGATCTGGAATATTAGGAACTTCTTTAAGTTTGCTAATTCGATTAGAATTAAGATCCCCAGGTATAATAATTGGAAATGATCAAAC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK015-19"
    ##   ..$ name    : chr "Molops striolatus"
    ##   ..$ gene    : chr "KROK015-19"
    ##   ..$ sequence: chr "AACATTATATTTCATTCTTGGGGCATGGTCAGGAATAGTAGGAACCTCCTTAAGAATATTAATTCGAGCTGAATTAGGAAATCCGGGGTCCTTGATTGGAGATGACCAGAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK016-19"
    ##   ..$ name    : chr "Pterostichus oblongopunctatus"
    ##   ..$ gene    : chr "KROK016-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTTGGTGCGTGATCTGGAATAGTCGGAACTTCTTTAAGTATATTAATTCGAGCTGAATTAGGAAATCCTGGAGCTTTAATTGGTGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK017-19"
    ##   ..$ name    : chr "Molops piceus"
    ##   ..$ gene    : chr "KROK017-19"
    ##   ..$ sequence: chr "AAGATATTGGAACATTATATTTTATTTTTGGAGCATGAGCAGGGATAGTAGGAACATCATTAAGAATATTGATTCGAGCTGAATTAGGAAGCCCAGGATCACTAATTGGAG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK018-19"
    ##   ..$ name    : chr "Molops piceus"
    ##   ..$ gene    : chr "KROK018-19"
    ##   ..$ sequence: chr "AACATTATATTTTATTTTTGGAGCATGAGCAGGGATAGTAGGAACATCATTAAGAATATTGATTCGAGCTGAATTAGGAAGCCCAGGATCACTAATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK019-19"
    ##   ..$ name    : chr "Carabus catenulatus"
    ##   ..$ gene    : chr "KROK019-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTTGGTGCCTGATCAGGAATAGTGGGAACTTCATTAAGAATACTAATTCGAGCCGAATTAGGTAATCCCGGATCCTTAATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK020-19"
    ##   ..$ name    : chr "Carabus irregularis"
    ##   ..$ gene    : chr "KROK020-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTTGGTGCTTGATCAGGAATAGTGGGAACTTCTTTAAGAATACTAATTCGAGCTGAATTAGGTAACCCTGGATCCTTAATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK021-19"
    ##   ..$ name    : chr "Nebria dahlii"
    ##   ..$ gene    : chr "KROK021-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTCGGTGCTTGAGCAAGAATGGTAGGAACTTCTTTAAGAATATTAATTCGAGCTGAGTTAGGAAATCCGGGATCTTTAATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK022-19"
    ##   ..$ name    : chr "Platynus scrobiculatus"
    ##   ..$ gene    : chr "KROK022-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTTGGTGCATGATCAGGGATAGTAGGAACTTCATTAAGAATATTAATTCGATTAGAGTTAGGTAGTCCTGGGTCATTGATTGGAGACGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK023-19"
    ##   ..$ name    : chr "Dima elateroides"
    ##   ..$ gene    : chr "KROK023-19"
    ##   ..$ sequence: chr "GATATTGGAACATTATACTTCATTTTTGGAGCATGGGCCGGCATACTAGGCACTTCTCTCAGGCTCCTAATCCGGGCAGAACTAGGCAACCCTGGTTCATTAATTGGAAAC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK025-19"
    ##   ..$ name    : chr "Clinopodes carinthiacus"
    ##   ..$ gene    : chr "KROK025-19"
    ##   ..$ sequence: chr "AACCATGTATCTAATTTTTGGCGCTTGAGCAGCTATAGCTGGAACAGCTTTAAGAATTATTGTGCGACTAGAGCTCAGCCAACCCGGGGCCCTAATTGGGGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK026-19"
    ##   ..$ name    : chr "Dicellophilus carniolensis"
    ##   ..$ gene    : chr "KROK026-19"
    ##   ..$ sequence: chr "AACCATGTACCTCATATTTGGAGCCTGAGCCGCAATAGCTGGTACTGCCCTAAGATTATTGATCCGATTAGAGCTAAGACAGCCCGGAACCCTAATCGGGGATGACCAAAC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK029-19"
    ##   ..$ name    : chr "Schendyla tyrolensis"
    ##   ..$ gene    : chr "KROK029-19"
    ##   ..$ sequence: chr "AACCATATATTTAATTTTCGGAGCATGGGCCTCAATAGCCGGGACAGCCCTCAGCCTTATTATCCGACTAGAATTGAGCCAGCCAGGGAGTCTCATTGGAGACGACCAAAC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK030-19"
    ##   ..$ name    : chr "Strigamia acuminata"
    ##   ..$ gene    : chr "KROK030-19"
    ##   ..$ sequence: chr "AACAATATACCTAATCTTCGGAACTTGAGCCGCAATAGCAGGAACTGCCCTAAGCCTAATCATTCGAATAGAACTAAGACAACCAGGAACCTTAATTGGAGACGACCAGAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK031-19"
    ##   ..$ name    : chr "Strigamia transsilvanica"
    ##   ..$ gene    : chr "KROK031-19"
    ##   ..$ sequence: chr "AACTATATATCTAATCTTCGGAACCTGAGCCGCAATAGCAGGGACCGCACTAAGCCTAATCATTCGAATAGAACTAAGCCAACCCGGAACACTTATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK032-19"
    ##   ..$ name    : chr "Dicellophilus carniolensis"
    ##   ..$ gene    : chr "KROK032-19"
    ##   ..$ sequence: chr "AACCATGTACCTCATATTTGGAGCCTGAGCCGCAATAGCTGGTACTGCCCTAAGATTATTGATCCGATTAGAGCTAAGACAGCCCGGAACCCTAATCGGGGATGACCAAAC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK035-19"
    ##   ..$ name    : chr "Eupolybothrus tridentinus"
    ##   ..$ gene    : chr "KROK035-19"
    ##   ..$ sequence: chr "AAGATATTGGAACAATATACTTTATCTTCGGGATCTGAGCCTCTATAGTAGGAACAGCCCTAAGTCTACTAATTCGGTTAGAATTAAGCCAACCAGGAAGATTAATTGGAG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK036-19"
    ##   ..$ name    : chr "Harpolithobius gottscheensis"
    ##   ..$ gene    : chr "KROK036-19"
    ##   ..$ sequence: chr "AACAATATATTTTGTATTAGGAATCTGATCAGCAATAATCGGTACCGGTCTTAGAATTCTTATTCGATTGGAATTAAGACAACCTGGAAGATTAATTGGAGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK037-19"
    ##   ..$ name    : chr "Lithobius castaneus"
    ##   ..$ gene    : chr "KROK037-19"
    ##   ..$ sequence: chr "CACTATATACTTTATCTTCGGAATCTGGTCATCAATAATCGGTACCGCTCTTAGCCTATTAATTCGACTAGAATTAAGTCAGCCAGGAAGTCTAATTGGTGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK038-19"
    ##   ..$ name    : chr "Lithobius dentatus"
    ##   ..$ gene    : chr "KROK038-19"
    ##   ..$ sequence: chr "AACAATATACTTTATTTTAGGAATCTGATCTGCAATAATTGGAACAGGCTTAAGACTACTAATTCGACTTGAATTAAGCCAACCAGGAAGATTAATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK039-19"
    ##   ..$ name    : chr "Lithobius latro"
    ##   ..$ gene    : chr "KROK039-19"
    ##   ..$ sequence: chr "AACCATATATTTTGTATTAGGAATTTGATCAGCAATAATTGGTACAGGACTCAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK041-19"
    ##   ..$ name    : chr "Lithobius tenebrosus"
    ##   ..$ gene    : chr "KROK041-19"
    ##   ..$ sequence: chr "AACTATATACTTCATTCTAGGAATTTGATCAGCCATAATTGGCACAGGATTAAGAATTCTTATCCGATTAGAACTTAGTCAACCAGGAAGACTAATTGGGGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK042-19"
    ##   ..$ name    : chr "Lithobius validus"
    ##   ..$ gene    : chr "KROK042-19"
    ##   ..$ sequence: chr "AACTATATATTTTATCTTAGGAATCTGGTCAGCAATAATCGGAACAGGATTAAGCCTTCTCATTCGACTAGAATTAAGCCAACCAGGGAGATTAATTGGAGACGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK043-19"
    ##   ..$ name    : chr "Sigibius anici"
    ##   ..$ gene    : chr "KROK043-19"
    ##   ..$ sequence: chr "TACTATATATTTTGTGTTTGGAATTTGATCATCTATAATTGGAACTGCTCTTAGTCTTCTAATTCGTTTAGAATTAAGACAGCCAGGAAGATTAATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK044-19"
    ##   ..$ name    : chr "Lithobius carinthiacus"
    ##   ..$ gene    : chr "KROK044-19"
    ##   ..$ sequence: chr "AGATATTGGAACTATATATTTTATCTTCGGAACATGATCAGCTATAATCGGAACCTCCCTGAGACTTTTAATTCGTCTAGAATTAAGTCAGCCTGGGAGACTAATTGGAGA"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK046-19"
    ##   ..$ name    : chr "Lithobius dentatus"
    ##   ..$ gene    : chr "KROK046-19"
    ##   ..$ sequence: chr "ATATTGGAACAATATACTTTATTTTAGGAATCTGATCTGCAATAATTGGAACAGGCTTAAGACTACTAATTCGACTTGAATTAAGCCAACCAGGAAGATTAATTGGAGATG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK047-19"
    ##   ..$ name    : chr "Lithobius forficatus"
    ##   ..$ gene    : chr "KROK047-19"
    ##   ..$ sequence: chr "AACTATATATTTTGTGCTAGGAATTTGGTCAGCAATAATCGGTACTGGCCTTAGTCTTCTTATTCGATTGGAATTAAGCCAACCGGGGAGATTAATTGGAGACGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK048-19"
    ##   ..$ name    : chr "Eupolybothrus grossipes"
    ##   ..$ gene    : chr "KROK048-19"
    ##   ..$ sequence: chr "TACTATATACTTTATTTTTGGAATTTGAGCATCAATAGTTGGAACAGCATTAAGTCTTCTAATCCGGTTAGAATTAAGCCAGCCAGGAAGACTAATTGGTGACGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK050-19"
    ##   ..$ name    : chr "Cryptops parisi"
    ##   ..$ gene    : chr "KROK050-19"
    ##   ..$ sequence: chr "ATATTGGAACAATATACTTAATTTTTGGAGCTTGAGCAGCCATATTAGGAACATCTTTAAGCTTACTAATCCGAMTAGAATTAAGCCAACCAGGAACTTTAATTGGAGATG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK052-19"
    ##   ..$ name    : chr "Coelotes atropos"
    ##   ..$ gene    : chr "KROK052-19"
    ##   ..$ sequence: chr "AACTTTGTATTTAGTTTTTGGGGCTTGGTCTGCTATAGTTGGAACAGCTATAAGAGTATTAATTCGAATTGAATTAGGTCAATCAGGAAGTTTTTTGGGTGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK053-19"
    ##   ..$ name    : chr "Histopona luxurians"
    ##   ..$ gene    : chr "KROK053-19"
    ##   ..$ sequence: chr "AGATATTGGAACATTGTATTTAATTTTTGGGACGTGATCTGCTATAGTGGGAATAGCTATAAGTGTTCTTATTCGAATTGAATTAGGACAATCAGGAAGATTTTTGGGTGA"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK054-19"
    ##   ..$ name    : chr "Histopona torpida"
    ##   ..$ gene    : chr "KROK054-19"
    ##   ..$ sequence: chr "AACATTATATTTAATTTTTGGTGTGTGATCTGCTATAGTGGGGACTGCAATAAGAGTTATTATTCGAATTGAATTAGGTCAGTCTGGTAGTTTTTTAGGAGATGATCATCT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK055-19"
    ##   ..$ name    : chr "Inermocoelotes anoplus"
    ##   ..$ gene    : chr "KROK055-19"
    ##   ..$ sequence: chr "TTCTATGTATTTAATTTTTGGAGCTTGATCTGCTATAGTTGGTACCGCTATAAGAGTTTTAATCCGAATTGAATTAGGTCAATCAGGAAGATTTTTGGGTGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK056-19"
    ##   ..$ name    : chr "Inermocoelotes inermis"
    ##   ..$ gene    : chr "KROK056-19"
    ##   ..$ sequence: chr "AGATATTGGTACTTTGTATTTGATTTTTGGAGCTTGATCTGCTATAGTTGGTACAGCTATAAGAGTTTTGATTCGGATTGAATTAGGTCAACCAGGAAGATTTTTAGGTGA"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK057-19"
    ##   ..$ name    : chr "Tegenaria silvestris"
    ##   ..$ gene    : chr "KROK057-19"
    ##   ..$ sequence: chr "GACATTGTATTTAATTTTTGGTGCTTGGTCAGCTATAGTTGGAACTGCTATAAGAGTTTTAATTCGAATTGAATTGGGTCAGCCGGGGAGATTTATTGGTGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK058-19"
    ##   ..$ name    : chr "Amaurobius obustus"
    ##   ..$ gene    : chr "KROK058-19"
    ##   ..$ sequence: chr "AAGATATTGGAACATTATATTTAATTTTTGGAGCTTGAGCATCTATAGTTGGAATAGCTATAAGAGTTTTAATTCGAATTGAATTAGGACAATCAGGAAGTTTATTTGGAG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK059-19"
    ##   ..$ name    : chr "Comaroma simoni"
    ##   ..$ gene    : chr "KROK059-19"
    ##   ..$ sequence: chr "AAAAGATATTGGGACGTTATATTTTCTATTTGGGTCTTGAGCAGCGATAGTGGGGACAGGTATGAGAATACTAATTCGTATTGAATTAGGACAGAGGGGGAGTTTGTTAGG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK060-19"
    ##   ..$ name    : chr "Clubiona terrestris"
    ##   ..$ gene    : chr "KROK060-19"
    ##   ..$ sequence: chr "AAGTTTATATTTAATTTTTGGTACTTGGTCTGCTATGGTTGGAACAGCTATAAGAGTTTTAATTCGAATGGAATTAGGACAATCTGGTATATTTTTAGGAGATGATCATCT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK061-19"
    ##   ..$ name    : chr "Dasumia canestrinii"
    ##   ..$ gene    : chr "KROK061-19"
    ##   ..$ sequence: chr "AACTTTATATTTATTGTTTGGAGCTTGATCGGCTATAGCCGGAACTGCAATGAGAGTGCTTATTCGGGTTGAGTTGGGTCAGTTGGGGAGATTGTTGGGTGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK064-19"
    ##   ..$ name    : chr "Dysdera adriatica"
    ##   ..$ gene    : chr "KROK064-19"
    ##   ..$ sequence: chr "TACTTTATATTTGTTGTTTGGTGCTTGATCTGCTATAGTGGGGACAGCTATGAGTGTTTTGATTCGGGCTGAATTAGGGCAGGTGGGTGGTTTATTGGGAGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK065-19"
    ##   ..$ name    : chr "Dysdera ninnii"
    ##   ..$ gene    : chr "KROK065-19"
    ##   ..$ sequence: chr "AACGTTATATTTGTTGTTTGGTGCTTGGTCAGCTATGGTAGGGACTGCTATAAGAGTATTAATTCGAACTGAATTAGGGCAAGTGGGGAGTTTGTTGGGGGATGACCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK066-19"
    ##   ..$ name    : chr "Dysdera ninnii"
    ##   ..$ gene    : chr "KROK066-19"
    ##   ..$ sequence: chr "AACGTTATATTTGTTGTTTGGTGCTTGGTCAGCTATGGTAGGGACTGCTATAAGAGTATTAATTCGAACTGAATTAGGGCAAGTGGGGAGTTTGTTGGGGGATGACCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK067-19"
    ##   ..$ name    : chr "Haplodrassus silvestris"
    ##   ..$ gene    : chr "KROK067-19"
    ##   ..$ sequence: chr "AACTTTATATTTATTATTTGGATCTTGAGCTGCTATAGTAGGAACAGCAATAAGAGTATTAATTCGAATAGAATTAGGTCAATCTGGGAGATTGATGGGTGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK068-19"
    ##   ..$ name    : chr "Hahnia pusilla"
    ##   ..$ gene    : chr "KROK068-19"
    ##   ..$ sequence: chr "GTCGTTGTATTTGATTTTTGGAGCATGGTCGGCTATAGTAGGGACTGCAATAAGAGTTCTTATTCGAATTGAGTTGGGACAACCTGGTAGATTTATAGGAGATGACCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK069-19"
    ##   ..$ name    : chr "Robertus lividus"
    ##   ..$ gene    : chr "KROK069-19"
    ##   ..$ sequence: chr "AACTTTATATTTGATTTTTGGGGTGTGATCAGCTATAGTTGGTACAGCTATGAGTGTCCTAATTCGGGTAGAATTAGGACAATCTGGAAGATTGTTAGGGGATGATCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK070-19"
    ##   ..$ name    : chr "Ceratinella brevis"
    ##   ..$ gene    : chr "KROK070-19"
    ##   ..$ sequence: chr "GAGTTTATATTTTATTTTTGGAGCTTGAGCTGCTATAGTAGGGACAGCAATAAGAGTATTGATTCGTGTTGAGTTAGGACAAATTGGAAGATTATTAGGGGATGATCAGTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK072-19"
    ##   ..$ name    : chr "Diplocephalus picinus"
    ##   ..$ gene    : chr "KROK072-19"
    ##   ..$ sequence: chr "AAGTTTATATTTTATTTTTGGGGCTTGGGCTGCTATAGTTGGAACAGCGATAAGAGTTTTAATTCGGATTGAGTTAGGTCAAACTGGAAGATTATTGGGGGATGATCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK073-19"
    ##   ..$ name    : chr "Erigone autumnalis"
    ##   ..$ gene    : chr "KROK073-19"
    ##   ..$ sequence: chr "GATATTGGTAGTTTATATTTTATTTTTGGTGCATGATCTGCTATAGTAGGGACAGCGATAAGAGTTTTAATTCGAATTGAATTAGGTCAAACTGGTAGTTTATTAGGTGAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK074-19"
    ##   ..$ name    : chr "Maso sundevalli"
    ##   ..$ gene    : chr "KROK074-19"
    ##   ..$ sequence: chr "AAGTTTATATTTTGTGTTTGGTGCGTGAGCTGCCATAGTGGGTACGGCGATGAGAGTATTAATTCGAATTGAGTTGGGACAGACTGGTAGATTATTAGGGGATGACCAGTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK075-19"
    ##   ..$ name    : chr "Mermessus trilobatus"
    ##   ..$ gene    : chr "KROK075-19"
    ##   ..$ sequence: chr "AAGTTTATATTTTGTTTTTGGGGCTTGATCTGCTATAGTAGGTACAGCGATAAGAGTATTAATTCGAATTGAATTAGGACAAGTTGGTAGACTTTTAGGAGATGATCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK077-19"
    ##   ..$ name    : chr "Microneta viaria"
    ##   ..$ gene    : chr "KROK077-19"
    ##   ..$ sequence: chr "AAGTTTATATTTTGTATTTGGGGCTTGGTCTGCGATAGTTGGAACGGCAATAAGAGTATTAATTCGAGTTGAGTTAGGTCAAGTTGGTAGTTTGTTAGGAGATGATCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK079-19"
    ##   ..$ name    : chr "Tenuiphantes flavipes"
    ##   ..$ gene    : chr "KROK079-19"
    ##   ..$ sequence: chr "GACTTTATATTTTATTTTTGGAGCGTGAGCTGCTATAGTAGGAACTGCTATAAGAGTATTAATTCGGATTGAATTGGGGCAAACTGGAAGAATACTGGGGGATGACCAGTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK080-19"
    ##   ..$ name    : chr "Centrophantes roeweri"
    ##   ..$ gene    : chr "KROK080-19"
    ##   ..$ sequence: chr "TAGTTTATATTTTATTTTTGGGGCTTGATCTGCTATGGTTGGGACTGCTATAAGAGTTTTAATTCGAATTGAGCTTGGGCAAATTGGGAGAATGTTGGGAGATGACCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK082-19"
    ##   ..$ name    : chr "Tenuiphantes tenebricola"
    ##   ..$ gene    : chr "KROK082-19"
    ##   ..$ sequence: chr "AAGATATTGGAACTTTATATTTTATTTTTGGAGCGTGAGCTGCTATAGTAGGAACTGCTATAAGAGTATTAATTCGAATTGAGTTGGGACAAACTGGAAGTATATTAGGGG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK084-19"
    ##   ..$ name    : chr "Walckenaeria mitrata"
    ##   ..$ gene    : chr "KROK084-19"
    ##   ..$ sequence: chr "AAGTTTATATTTTATTTTTGGAGCTTGGGCTGCTATAGTAGGTACAGCAATAAGAGTATTAATTCGAATTGAATTAGGACAGATTGGGAGTTTATTGGGAGATGATCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK085-19"
    ##   ..$ name    : chr "Pardosa alacris"
    ##   ..$ gene    : chr "KROK085-19"
    ##   ..$ sequence: chr "TACTTTATATCTAATATTTGGAGTTTGATCGGCTATAATAGGGACTGCTATAAGAGTATTAATTCGAATAGAATTAGGAAATCCTGGGAGATTATTAGGTGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK086-19"
    ##   ..$ name    : chr "Trochosa terricola"
    ##   ..$ gene    : chr "KROK086-19"
    ##   ..$ sequence: chr "AAGATATTGGTACTTTGTATTTAATGTTTGGTGCATGATCTGCTATAGTGGGAACTGCTATAAGAGTGTTGATTCGTTTAGAATTAGGGAATTCTGGAAGTTTATTAGGGG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK087-19"
    ##   ..$ name    : chr "Zora nemoralis"
    ##   ..$ gene    : chr "KROK087-19"
    ##   ..$ sequence: chr "WAAGATATTGGTACTTTATATTTAATTTTTGGAGTTTGATCTGCTATGGTAGGAACAGCAATAAGAATGTTAATTCGATTGGAATTGGGACAAGTTGGAAGATTTATAGGC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK088-19"
    ##   ..$ name    : chr "Segestria senoculata"
    ##   ..$ gene    : chr "KROK088-19"
    ##   ..$ sequence: chr "GACATTATATTTAATTTTTGGGGCTTGAGCTGCTATAGCGGGGACTGCTATAAGTGTGTTGATTCGGGTTGAATTAGGGCAGGTTGGGAGTTTTTTGGGGGATGATCATCT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK089-19"
    ##   ..$ name    : chr "Robertus lividus"
    ##   ..$ gene    : chr "KROK089-19"
    ##   ..$ sequence: chr "TAAAGATATTGGAACTTTATATTTGATTTTTGGGGTGTGATCAGCTATAGTTGGTACAGCTATGAGTGTCCTAATTCGGGTAGAATTAGGACAATCTGGAAGATTGTTAGG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK090-20"
    ##   ..$ name    : chr "Clinopodes carinthiacus"
    ##   ..$ gene    : chr "KROK090-20"
    ##   ..$ sequence: chr "AACCATGTATCTAATTTTTGGTGCTTGGGCGGCAATAGCTGGAACAGCTTTAAGAATTATTGTCCGACTAGAGCTTAGTCAACCTGGGGCCCTAATCGGGGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK091-20"
    ##   ..$ name    : chr "Dicellophilus carniolensis"
    ##   ..$ gene    : chr "KROK091-20"
    ##   ..$ sequence: chr "TCGGGGATGACCAAACTTATAATGTAGTAGTAACAGCTCACGCCTTCGTAATAATTTTTTTCATAGTAATACCTATTATAATAGGAGGATTCGGCAATTGACTTCTACCTC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK092-20"
    ##   ..$ name    : chr "Schendyla armata"
    ##   ..$ gene    : chr "KROK092-20"
    ##   ..$ sequence: chr "GGGCCTCAATAGCAGGGACAGCCCTCAGCCTTATCATTCGACTCGAACTAAGCCAGCCAGGGAGTCTCATTGGGGACGACCAAACCTATAACGTTATTGTCACCGCCCATG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK095-20"
    ##   ..$ name    : chr "Schendyla tyrolensis"
    ##   ..$ gene    : chr "KROK095-20"
    ##   ..$ sequence: chr "ACTAGAATTGAGCCAGCCAGGGAGTCTCATTGGAGACGACCAAACCTATAATGTCATCGTCACTGCCCACGCTTTTGTAATAATTTTCTTTATAGTAATGCCCATTATAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK096-20"
    ##   ..$ name    : chr "Strigamia acuminata"
    ##   ..$ gene    : chr "KROK096-20"
    ##   ..$ sequence: chr "AACAATATACCTAATCTTCGGAACTTGAGCCGCAATAGCAGGAACAGCCCTAAGCCTAATCATTCGAATAGAATTAAGTCAACCGGGAAGACTAATTGGAGACGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK098-20"
    ##   ..$ name    : chr "Clinopodes carinthiacus"
    ##   ..$ gene    : chr "KROK098-20"
    ##   ..$ sequence: chr "AACCATGTATCTAATTTTTGGCGCTTGAGCAGCTATAGCTGGAACAGCTTTAAGAATTATTGTGCGACTAGAGCTCAGCCAACCCGGGGCCCTAATTGGGGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK100-20"
    ##   ..$ name    : chr "Clinopodes carinthiacus"
    ##   ..$ gene    : chr "KROK100-20"
    ##   ..$ sequence: chr "AACCATGTATCTAATTTTTGGTGCTTGGGCGGCAATAGCTGGAACAGCTTTAAGAATTATTGTCCGACTAGAGCTTAGTCAACCTGGGGCCCTAATCGGGGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK102-20"
    ##   ..$ name    : chr "Schendyla armata"
    ##   ..$ gene    : chr "KROK102-20"
    ##   ..$ sequence: chr "GAGCATGGGCCTCAATAGCAGGGACAGCCCTCAGCCTTATCATTCGACTCGAACTAAGCCAGCCAGGGAGTCTCATTGGGGACGACCAAACCTATAACGTTATTGTCACCG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK103-20"
    ##   ..$ name    : chr "Harpolithobius gottscheensis"
    ##   ..$ gene    : chr "KROK103-20"
    ##   ..$ sequence: chr "AACAATATATTTTGTATTAGGAATCTGATCAGCAATAATCGGTACCGGTCTTAGAATTCTTATTCGATTGGAATTAAGACAACCTGGAAGATTAATTGGAGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK104-20"
    ##   ..$ name    : chr "Lithobius dentatus"
    ##   ..$ gene    : chr "KROK104-20"
    ##   ..$ sequence: chr "AACAATATACTTTATTTTAGGAATTTGATCAGCTATAATTGGAACAGGACTTAGCTTATTAATTCGATTAGAACTTAGCCAACCAGGGAGATTAATTGGGGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK105-20"
    ##   ..$ name    : chr "Lithobius latro"
    ##   ..$ gene    : chr "KROK105-20"
    ##   ..$ sequence: chr "AACCATATATTTTGTATTAGGAATTTGATCAGCAATAATTGGTACAGGACTTAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK106-20"
    ##   ..$ name    : chr "Lithobius validus"
    ##   ..$ gene    : chr "KROK106-20"
    ##   ..$ sequence: chr "CAGCAATAATCGGAACAGGATTAAGCCTTCTCATTCGACTAGAATTAAGCCAACCAGGGAGATTAATTGGAGACGATCAAATTTATAACGTAATCGTAACAGCTCATGCAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK109-20"
    ##   ..$ name    : chr "Lithobius latro"
    ##   ..$ gene    : chr "KROK109-20"
    ##   ..$ sequence: chr "AACCATATATTTTGTATTAGGAATTTGATCAGCAATAATTGGTACAGGACTCAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK111-20"
    ##   ..$ name    : chr "Lithobius latro"
    ##   ..$ gene    : chr "KROK111-20"
    ##   ..$ sequence: chr "TTAGGGATTTGATCAGCAATAATTGGTACAGGACTCAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGTGTATAATGTTATTGTC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK120-20"
    ##   ..$ name    : chr "Cryptops parisi"
    ##   ..$ gene    : chr "KROK120-20"
    ##   ..$ sequence: chr "AACAATATACTTAATTTTTGGAGCTTGAGCAGCCATATTAGGAACATCTTTAAGCTTACTAATCCGACTAGAATTAAGCCAACCAGGAACTTTAATTGGAGATGACCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK121-20"
    ##   ..$ name    : chr "Cryptops parisi"
    ##   ..$ gene    : chr "KROK121-20"
    ##   ..$ sequence: chr "AACAATATACTTAATTTTTGGAGCTTGAGCAGCCATATTAGGAACATCTTTAAGCTTACTAATCCGACTAGAATTAAGCCAACCAGGAACTTTAATTGGAGATGACCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK124-20"
    ##   ..$ name    : chr "Cryptops parisi"
    ##   ..$ gene    : chr "KROK124-20"
    ##   ..$ sequence: chr "AACAATATACTTAATTTTTGGAGCTTGAGCAGCTATATTAGGAACATCTCTAAGCTTACTAATTCGAATAGAATTAAGCCAACCAGGAACCTTAATTGGAGACGATCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK126-20"
    ##   ..$ name    : chr "Cryptops hortensis"
    ##   ..$ gene    : chr "KROK126-20"
    ##   ..$ sequence: chr "AACTATATATTTAATATTTGGAGCTTGAGCATCCATACTGGGGACAGCCTTAAGCCTCTTGATCCGCCTAGAGTTAAGACAACCAGGAACCCTAATCGGAGACGACCAACT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK127-20"
    ##   ..$ name    : chr "Coelotes atropos"
    ##   ..$ gene    : chr "KROK127-20"
    ##   ..$ sequence: chr "GAGTATTAATTCGAATTGAATTAGGTCAATCAGGAAGTTTTTTGGGTGATGATCATTTATATAATGTTATTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATAGTGA"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK128-20"
    ##   ..$ name    : chr "Histopona luxurians"
    ##   ..$ gene    : chr "KROK128-20"
    ##   ..$ sequence: chr "AACATTGTATTTAATTTTTGGGACGTGATCTGCTATAGTGGGAATAGCTATAAGTGTTCTTATTCGAATTGAATTAGGACAATCAGGAAGATTTTTGGGTGATGATCACCT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK129-20"
    ##   ..$ name    : chr "Histopona luxurians"
    ##   ..$ gene    : chr "KROK129-20"
    ##   ..$ sequence: chr "AACATTGTATTTAATTTTTGGGACGTGATCTGCTATAGTGGGAATAGCTATAAGTGTTCTTATTCGAATTGAATTAGGACAATCAGGAAGATTTTTGGGTGATGATCACCT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK130-20"
    ##   ..$ name    : chr "Histopona torpida"
    ##   ..$ gene    : chr "KROK130-20"
    ##   ..$ sequence: chr "AACATTATATTTAATTTTTGGTGTGTGATCTGCTATAGTGGGGACTGCAATAAGAGTTATTATTCGAATTGAATTAGGTCAGTCTGGTAGTTTTTTAGGAGATGATCATCT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK131-20"
    ##   ..$ name    : chr "Inermocoelotes anoplus"
    ##   ..$ gene    : chr "KROK131-20"
    ##   ..$ sequence: chr "TTCTATGTATTTAATTTTTGGAGCTTGATSTGCTATAGTTGGTACCGCTATAAGAGTTTTAATCCGAATTGAATTAGGTCAATCAGGAAGATTTTTGGGTGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK132-20"
    ##   ..$ name    : chr "Inermocoelotes inermis"
    ##   ..$ gene    : chr "KROK132-20"
    ##   ..$ sequence: chr "TACTTTGTATTTGATTTTTGGAGCTTGATCTGCTATAGTTGGTACAGCTATAAGAGTTTTGATTCGGATTGAATTAGGTCAACCAGGAAGATTTTTAGGTGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK133-20"
    ##   ..$ name    : chr "Tegenaria silvestris"
    ##   ..$ gene    : chr "KROK133-20"
    ##   ..$ sequence: chr "CKTGGTCAWCWAATCATAMAKATWATRGGACATGGTAYWTAATMTTTGGTGCTTGGTCAGSMWTAGTTRGAGSTGSKATSAGAGTTTTAATTCGAATTGAATTGGGTCAGC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK134-20"
    ##   ..$ name    : chr "Amaurobius obustus"
    ##   ..$ gene    : chr "KROK134-20"
    ##   ..$ sequence: chr "AACATTATATTTAATTTTTGGAGCTTGAGCATCTATAGTTGGAATAGCTATAAGAGTTTTAATTCGAATTGAATTAGGACAATCAGGAAGTTTATTTGGAGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK135-20"
    ##   ..$ name    : chr "Comaroma simoni"
    ##   ..$ gene    : chr "KROK135-20"
    ##   ..$ sequence: chr "GACGTTATATTTTCTATTTGGGTCTTGAGCAGCGATAGTGGGGACAGGTATGAGAATACTAATTCGTATTGAATTAGGACAGAGGGGGAGTTTGTTAGGGGATGACCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK136-20"
    ##   ..$ name    : chr "Araneus diadematus"
    ##   ..$ gene    : chr "KROK136-20"
    ##   ..$ sequence: chr "GACTTTGTACTTAGTTTTTGGGGCATGAGCCGCTATGGTAGGGACAGCAATAAGTGTATTGATTCGAATTGAATTAGGTCAGCCTGGGAGATTTATTGGAGATGATCAACT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK137-20"
    ##   ..$ name    : chr "Clubiona terrestris"
    ##   ..$ gene    : chr "KROK137-20"
    ##   ..$ sequence: chr "AAGTTTATACTTAATTTTTGGTACTTGATCTGCTATGGTTGGAACAGCTATAAGAGTTTTAATTCGAATAGAATTAGGACAATCTGGTATATTTTTAGGAGATGATCATCT"| __truncated__
    ##   [list output truncated]

``` r
sequence_df<- as.data.frame(check2)
```

We want to extract the columns for “id” and “sequence”.

``` r
as.data.frame(sequence_df, col.names = c("id", "sequence"))
```

    ##           id                  name       gene
    ## 1 KROK002-19 Abax parallelepipedus KROK002-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             sequence
    ## 1 AACATTATACTTTATTTTTGGTGCATGATCAGGAATAGTCGGAACCTCTTTAAGAATGTTAATTCGACTTGAATTAGGAAATCCTGGATCACTAATTGGTGATGACCAAATTTATAATGTAATTGTTACTGCACATGCATTTGTAATAATTTTTTTTATAGTAATGCCTATTATAATTGGAGGTTTCGGAAACTGATTAGTTCCTTTAATACTAGGAGCTCCTGATATAGCATTCCCTCGAATAAATAACATGAGATTCTGACTGCTCCCCCCTTCTTTAACCCTTCTCCTTATAAGCAGCATAGTTGAGAGAGGAGCTGGCACAGGATGAACAGTTTACCCACCACTTTCTTCTAATATTGCCCATAGAGGAGCCTCAGTTGACCTAGCTATTTTTAGTCTACATTTAGCTGGAATTTCTTCAATTTTAGGAGCTGTAAATTTTATTACTACAATTATCAATATACGATCTGTAGGAATAACTTTTGACCGAATACCTTTATTTGTCTGATCAGTAGGAATTACTGCTCTGTTACTATTACTATCATTACCTGTATTAGCTGGAGCAATCACAATACTTCTAACAGATCGAAATTTAAATACTTCATTTTTTGATCCTGCAGGAGGTGGAGATCCAATTTTATACCAACATTTATTT
    ##         id.1             name.1     gene.1
    ## 1 KROK003-19 Cychrus attenuatus KROK003-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           sequence.1
    ## 1 AACTTTATATTTTATTTTTGGTGCTTGATCAGGGATAGTAGGAACTTCCCTAAGAATACTAATTCGAGCTGAACTAGGAAATCCAGGGTCCTTAATCGGAGATGATCAAATCTATAATGTTATTGTAACAGCTCATGCATTTGTAATGATTTTTTTTATAGTTATACCAATTATAATTGGAGGATTTGGTAATTGATTAGTTCCTTTAATATTAGGGGCTCCTGATATAGCTTTCCCTCGAATAAATAATATAAGATTTTGATTACTCCCCCCTTCTTTAACTCTTCTACTTATAAGTAGAATAGTGGAAAGTGGAGCAGGCACAGGTTGAACTGTGTACCCCCCCCTTTCATCTAGAATTGCCCACAGAGGAGCCTCGGTAGATTTAGCTATTTTTAGTTTACATTTAGCTGGTATTTCTTCTATTCTAGGAGCAGTAAATTTCATTACAACAATTATTAATATACGATCAGTAGGAATAACATTTGATCGAATACCTCTATTTGTATGAAGTGTTGGTATTACTGCTTTATTACTTTTATTATCATTACCAGTTTTAGCAGGTGCAATCACTATACTATTAACTGATCGAAATTTAAACACCTCTTTTTTTGATCCCGCTGGGGGAGGAGACCCTATTTTATATCAACATTTATTT
    ##         id.2                 name.2     gene.2
    ## 1 KROK004-19 Licinus hoffmannseggii KROK004-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           sequence.2
    ## 1 AACTTTATATTTCATTTTCGGGGCCTGAGCAGGAATAGTAGGTACTTCTTTAAGTATATTAATTCGAGCTGAATTAGGAAATCCAGGATCACTTATTGGTGATGATCAGATTTATAATGTTATTGTTACAGCTCATGCATTTGTAATAATTTTTTTCATAGTAATACCTATTATAATTGGGGGATTCGGAAACTGATTAGTTCCATTAATATTAGGAGCTCCTGATATAGCTTTCCCTCGAATAAATAATATAAGTTTTTGACTTCTTCCTCCTGCTTTAAGCCTACTTTTAATGAGAAGAGTAGTTGAAAGAGGAGCTGGCACCGGATGAACGGTGTACCCCCCCCTATCATCTAATATTGCCCATAGAGGTGCTTCCGTTGACTTAGCAATTTTCAGATTACACTTAGCGGGAGTATCTTCCATTTTAGGAGCTGTAAATTTTATTACCACTATTATTAATATACGATCAATAGGAATAACATTTGACCGAATACCATTATTTGTATGATCAGTAGGAATTACTGCTTTACTATTACTTTTATCATTACCAGTATTGGCTGGAGCTATTACAATACTTTTAACAGATCGAAATTTAAATACTTCATTTTTTGATCCTGCAGGAGGGGGAGACCCAATTCTTTATCAACATTTATTT
    ##         id.3                   name.3     gene.3
    ## 1 KROK005-19 Pterostichus burmeisteri KROK005-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           sequence.3
    ## 1 AACTTTATATTTTATTTTTGGTATATGAGCAGGAATAGTAGGTACTTCATTAAGTATATTAATTCGAGCTGAATTAGGTAATCCTGGATCATTAATTGGTGACGATCAAATTTATAATGTTATTGTTACTGCCCATGCATTTGTTATAATTTTCTTTATAGTAATACCTATTATAATTGGAGGATTTGGAAATTGATTAGTTCCTTTAATATTAGGAGCTCCTGATATAGCTTTTCCTCGAATAAATAATATAAGTTTTTGATTACTTCCTCCTTCATTAACACTCCTTTTAATAAGAAGTATAGTTGAAAACGGATCAGGAACAGGATGAACAGTTTATCCACCTTTATCATCAGGAATTGCACATGCAGGAGCTTCAGTTGATTTAGCTATTTTTAGTTTACATTTAGCTGGAATTTCCTCTATTTTAGGAGCTGTAAATTTTATTACTACAATTATTAATATACGATCAGTAGGAATAACATTTGATCGAATACCTTTATTTGTATGATCTGTTGGAATTACTGCTTTATTATTACTTCTTTCATTACCTGTATTAGCTGGTGCCATTACAATACTATTAACAGATCGAAATTTAAATACTTCTTTTTTTGATCCTGCAGGTGGTGGAGACCCTGTTTTATATCAACATTTATTT
    ##         id.4            name.4     gene.4
    ## 1 KROK007-19 Carabus croaticus KROK007-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   sequence.4
    ## 1 GATATTGGAACTTTATATTTCATTTTTGGTGCCTGATCCGGAATAGTAGGAACTTCATTAAGAATATTAATCCGGGCCGAATTAGGTAACCCCGGATCCTTAATTGGAGATGATCAAATTTATAATGTAATTGTAACAGCTCATGCTTTTGTAATAATTTTTTTTATAGTTATACCTATTATAATTGGGGGATTTGGAAATTGATTAGTGCCTTTAATACTTGGGGCACCAGATATAGCATTTCCTCGAATAAATAATATAAGATTTTGACTTCTTCCTCCTTCTTTAACTCTCCTCCTAATAAGAAGTATAGTTGAAAAGGGGGCAGGAACAGGATGAACAGTTTACCCCCCCCTATCTTCTGGAATTGCCCATAGAGGGGCATCTGTTGATTTAGCTATTTTTAGATTACATTTAGCAGGTATTTCTTCAATTTTAGGGGCTGTGAATTTTATTACAACAATTATTAATATACGATCAGTAGGAATAACTTTTGACCGAATACCTCTATTTGTATGATCTGTCGGAATTACTGCATTATTATTGTTACTTTCTTTACCAGTTTTAGCTGGAGCTATTACTATGCTTTTAACAGATCGAAACTTAAATACTTCCTTTTTTGACCCTGCAGGTGGGGGGGACCCTATTCTTTACCAACATCTATTT
    ##         id.5      name.5     gene.5
    ## 1 KROK008-19 Abax ovalis KROK008-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        sequence.5
    ## 1 AAGATATTGGAACACTATATTTTATTTTTGGTACATGATCAGGAATAGTAGGAACATCTTTAAGAATATTAATTCGAGCTGAATTAGGAAATCCAGGATCATTAATTGGTGACGACCAAATTTATAATGTAATTGTTACTGCTCATGCATTTGTAATAATTTTTTTTATAGTAATGCCCATTATAATTGGGGGATTTGGAAACTGATTAGTTCCTTTAATATTAGGAGCTCCTGATATAGCGTTCCCTCGAATGAATAACATGAGATTTTGACTGTTACCCCCTTCTCTGACCCTTCTCCTTATAAGCAGCATAGTTGAAAGAGGAACTGGCACAGGATGGACAGTCTACCCACCACTTTCTTCTAATATTGCCCATAGAGGAGCTTCAGTTGACTTAGCTATTTTTAGTTTACATCTAGCTGGAATTTCTTCAATTCTAGGAGCTGTAAATTTTATCACTACAATTATCAATATACGATCAATAGGAATAACTTTTGATCGAATACCTCTATTTGTCTGATCAGTAGGAATCACTGCTTTATTATTATTGTTGTCACTACCTGTATTAGCTGGAGCTATCACAATACTTTTAACTGATCGAAATTTAAATACTTCATTTTTTGATCCAGCAGGAGGTGGAGATCCTATTTTATA
    ##         id.6                 name.6     gene.6
    ## 1 KROK010-19 Notiophilus biguttatus KROK010-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           sequence.6
    ## 1 AACTTTATATTTTATCTTTGGGGCTTGGTCAGGGATAGTTGGAACTTCTTTAAGAATACTAATTCGAGCAGAATTAGGAAATCCTGGATCTTTAATTGGAGATGACCAAATTTATAATGTAATTGTTACAGCTCATGCTTTTGTCATAATTTTTTTTATAGTTATACCTATTATAATTGGAGGATTTGGTAATTGACTTGTACCTCTAATATTAGGAGCTCCTGATATAGCTTTTCCTCGAATAAATAATATGAGTTTCTGGTTACTTCCCCCCTCTTTAACTCTCCTCCTTACAAGAAGAATAGTGGAAAGAGGAGCAGGTACAGGTTGAACTGTGTACCCTCCCCTTTCTTCTGGAATTGCCCATAGAGGAGCTTCAGTTGATTTAGCAATTTTTAGCCTTCATTTAGCTGGAGTATCTTCTATTTTAGGAGCAGTAAATTTTATTACTACTATTATTAATATACGATCAGTTGGGATATCATTTGATCGAATACCCTTATTTGTGTGATCAGTTGGAATTACAGCTCTTTTATTACTTTTATCCTTACCTGTTTTAGCTGGAGCAATTACTATATTATTAACTGATCGAAACTTAAATACTTCTTTCTTTGACCCTGCTGGGGGAGGAGATCCTATTTTATATCAACACCTATAT
    ##         id.7            name.7     gene.7
    ## 1 KROK011-19 Carabus creutzeri KROK011-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           sequence.7
    ## 1 AACTTTATATTTTATTTTTGGTGCTTGATCAGGAATAGTGGGAACTTCTTTAAGAATACTAATTCGAGCTGAATTAGGTAACCCTGGATCCTTAATTGGAGATGATCAAATTTATAATGTTATTGTGACAGCTCATGCTTTTGTAATAATTTTTTTTATAGTTATACCTATTATAATTGGAGGATTTGGAAATTGATTAGTTCCTTTAATATTAGGAGCACCTGATATAGCATTTCCTCGAATAAATAATATAAGATTTTGATTATTACCCCCTTCTTTAACTCTACTCCTAATAAGTTCAATAGTAGAAAGTGGAGCAGGTACTGGGTGAACAGTATACCCCCCTTTGTCATCTGGAATTGCCCATAGAGGTGCTTCTGTAGATTTAGCTATTTTTAGATTACATCTAGCTGGGATTTCTTCAATTCTAGGGGCAGTAAATTTTATTACAACAATTATTAATATACGATCAGTAGGAATAACCTTTGATCGAATACCTTTATTTGTTTGATCTGTAGGTATTACAGCTTTATTACTTTTACTTTCTCTCCCAGTATTAGCAGGAGCTATTACTATACTTCTAACAGACCGTAATTTAAATACTTCTTTTTTCGATCCAGCTGGGGGAGGTGACCCAATTTTATACCAACATTTATTT
    ##         id.8        name.8     gene.8
    ## 1 KROK012-19 Molops piceus KROK012-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            sequence.8
    ## 1 GATATTGGAACATTATATTTTATTTTTGGAGCATGAGCAGGGATAGTAGGAACATCATTAAGAATATTGATTCGAGCTGAATTAGGAAGCCCAGGATCACTAATTGGAGATGATCAAATCTATAATGTAATTGTAACTGCACATGCATTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGAGGATTTGGTAACTGATTAGTTCCTTTAATGTTAGGAGCCCCTGATATAGCTTTTCCTCGAATAAACAATATAAGTTTTTGACTTCTCCCTCCATCTTTAACCCTCTTATTAATAAGTAGTATAGTCGAAAAGGGGGCTGGCACAGGATGAACTGTGTACCCTCCTCTCTCATCAACAATTGCCCATAGAGGAGCATCAGTAGATTTAGCTATTTTTAGATTACATTTAGCAGGAGTTTCATCTATTTTAGGTGCTGTAAATTTTATTACTACAATTATTAATATACGATCTGTAGGAATAACATTTGATCGCATACCTTTATTTGTTTGATCAGTAGGAATTACTGCTTTACTATTACTACTATCTCTTCCAGTATTAGCTGGAGCTATTACAATATTACTAACAGATCGAAATTTAAACACTTCTTTTTTTGATCCCGCAGGAGGAGGTGACCCTATTTTATATCAACATTTATTTTGATTTTTG
    ##         id.9            name.9     gene.9
    ## 1 KROK013-19 Trechus croaticus KROK013-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           sequence.9
    ## 1 AACCTTATATTTCATTTTTGGAGCTTGGGCAGGAATAGTAGGAACATCATTAAGAATATTAATTCGAGCTGAATTAGGAAATCCTGGTTCTTTAATTGGAGACGATCAAATTTATAATGTAATTGTAACTGCTCATGCATTTATTATAATTTTTTTTATAGTTATACCAATTATAATTGGAGGATTTGGAAATTGATTAGTACCATTAATACTAGGTGCTCCTGATATAGCTTTTCCACGAATAAACAATATAAGATTTTGACTACTTCCACCATCTTTAACTTTATTACTAATAAGATCTATAGTAGAAAGTGGTGCTGGAACAGGATGAACAGTTTACCCACCATTATCTTCAGGAATTGCTCATAGTGGGGCTTCAGTAGATTTAGCAATTTTTAGACTTCATTTAGCAGGAATTTCTTCAATTTTAGGAGCAGTAAATTTTATCACAACAATTATTAATATACGACCAATAGGAATAACTTTTGACCGTATACCTTTATTTGTTTGATCAGTTGGAATTACAGCATTATTGCTACTTTTATCTTTACCAGTTCTTGCAGGAGCAATCACAATATTATTAACAGACCGAAATTTAAATACTTCATTTTTTGATCCAGCAGGTGGGGGAGATCCAATTCTTTATCAACATTTATTT
    ##        id.10             name.10    gene.10
    ## 1 KROK014-19 Stenichnus collaris KROK014-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.10
    ## 1 TACCCTTTATTTTATTTTAGGAATTTGATCTGGAATATTAGGAACTTCTTTAAGTTTGCTAATTCGATTAGAATTAAGATCCCCAGGTATAATAATTGGAAATGATCAAACTTTTAATATAATTGTAACTTCTCATGCTTTTATTATAATTTTTTTTATAGTAATACCTATTATAATCGGAGGATTTGGAAATTGATTAGTCCCTTTAATATTAGGAGCCCCTGATATAGCTTTCCCTCGTATAAATAATATAAGATTTTGATTTCTTCCCCCTTCATTAATACTATTATTAATAAGAAGGATAGTAGAAAGAGGATCAGGAACAGGATGAACAGTTTACCCTCCTCTATCCTCAAATATTGCACATAGCGGATCTTCAGTAGATTTAACAATTTTTAGTCTTCATTTAGCAGGAATTTCATCTATTCTAGGAGCTGTAAATTTTATTACTACAATTATTAATATACGCTCACCTATAATAAAATTTGATAATTTATCTTTATTCATTTGAGCAGTATTTATTACTGCAATCTTATTATTACTATCTCTACCAGTATTAGCTGGAGCTATTACTATATTATTAACTGACCGCAATTTTAATACATCATTTTTTGATCCATCAGGAGGGGGAGACCCTATTTTATACCAACATTTATTT
    ##        id.11           name.11    gene.11
    ## 1 KROK015-19 Molops striolatus KROK015-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.11
    ## 1 AACATTATATTTCATTCTTGGGGCATGGTCAGGAATAGTAGGAACCTCCTTAAGAATATTAATTCGAGCTGAATTAGGAAATCCGGGGTCCTTGATTGGAGATGACCAGATCTATAATGTAATTGTAACTGCACATGCTTTTGTTATAATTTTTTTTATAGTAATGCCTATTATAATTGGGGGTTTTGGTAATTGATTGGTTCCTTTAATATTAGGAGCTCCTGATATAGCCTTTCCTCGGATAAATAATATGAGTTTTTGACTTCTTCCTCCATCTTTAACCCTTTTACTAGTGAGTAGCATAGTGGAAAAGGGAGTTGGTACAGGATGAACTGTATACCCTCCTCTCTCATCGACAATTGCTCATAGAGGAGCATCTGTAGATTTAGCTATTTTTAGCCTACATCTAGCAGGAATTTCATCTATTTTAGGTGCTGTAAATTTTATTACTACAATTATTAATATACGATCAGTGGGAATAACATTTGATCGTATACCTTTATTTGTATGATCAGTAGGAATTACTGCTTTGTTATTGCTTTTATCCCTCCCAGTATTAGCAGGAGCTATTACAATGTTATTAACAGATCGAAATTTAAATACTTCTTTTTTTGACCCCGCAGGAGGAGGAGACCCTATTTTATACCAACATTTATTT
    ##        id.12                       name.12    gene.12
    ## 1 KROK016-19 Pterostichus oblongopunctatus KROK016-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.12
    ## 1 AACTTTATATTTTATTTTTGGTGCGTGATCTGGAATAGTCGGAACTTCTTTAAGTATATTAATTCGAGCTGAATTAGGAAATCCTGGAGCTTTAATTGGTGATGATCAAATTTATAATGTTATTGTAACTGCTCATGCATTTGTTATAATTTTTTTCATAGTAATGCCTATTATAATTGGAGGGTTTGGAAATTGATTAGTTCCTTTAATATTAGGAGCCCCTGATATAGCCTTTCCTCGAATAAATAATATAAGTTTCTGATTATTACCTCCTTCATTAACTCTTCTTTTAATGAGAAGAATAGTCGAAAACGGAGCAGGTACAGGATGAACAGTTTACCCTCCCTTATCATCTGGAATTGCCCATGCAGGAGCTTCAGTTGATTTAGCTATTTTTAGTTTACATTTAGCAGGAGTATCTTCTATTCTTGGAGCTGTTAATTTTATTACTACAATTATTAATATACGATCAGTAGGAATAACATTTGATCGAATACCATTATTTGTATGATCAGTTGGAATTACAGCTTTATTATTACTTCTATCTTTACCTGTATTAGCTGGAGCTATTACTATATTATTAACAGATCGAAATTTAAATACCTCATTTTTTGACCCAGCTGGAGGAGGGGACCCAATTTTATATCAACATTTATTT
    ##        id.13       name.13    gene.13
    ## 1 KROK017-19 Molops piceus KROK017-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               sequence.13
    ## 1 AAGATATTGGAACATTATATTTTATTTTTGGAGCATGAGCAGGGATAGTAGGAACATCATTAAGAATATTGATTCGAGCTGAATTAGGAAGCCCAGGATCACTAATTGGAGATGATCAAATCTATAATGTAATTGTAACTGCACATGCATTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGAGGATTTGGTAACTGATTAGTTCCTTTAATGTTAGGAGCCCCTGATATAGCTTTTCCTCGAATAAACAATATAAGTTTTTGACTTCTCCCTCCATCTTTAACCCTCTTATTAATAAGTAGTATAGTCGAAAAGGGGGCTGGCACAGGATGAACTGTGTACCCTCCTCTCTCATCAACAATTGCCCATAGAGGAGCATCAGTAGATTTAGCTATTTTTAGATTACATTTAGCAGGAGTTTCATCTATTTTAGGTGCTGTAAATTTTATTACTACAATTATTAATATACGATCTGTAGGAATAACATTTGATCGCATACCTTTATTTGTTTGATCAGTAGGAATTACTGCTTTACTATTACTACTATCTCTTCCAGTATTAGCTGGAGCTATTACAATATTACTAACAGATCGAAATTTAAACACTTCTTTTTTTGATCCCGCAGGAGGAGGTGACCCTATTTTATATCAACATTTATTTTGATTTTTTGT
    ##        id.14       name.14    gene.14
    ## 1 KROK018-19 Molops piceus KROK018-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.14
    ## 1 AACATTATATTTTATTTTTGGAGCATGAGCAGGGATAGTAGGAACATCATTAAGAATATTGATTCGAGCTGAATTAGGAAGCCCAGGATCACTAATTGGAGATGATCAAATCTATAATGTAATTGTAACTGCACATGCATTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGAGGATTTGGTAACTGATTAGTTCCTTTAATGTTAGGAGCCCCTGATATAGCTTTTCCTCGAATAAACAATATAAGTTTTTGACTTCTCCCTCCATCTTTAACCCTCTTATTAATAAGTAGTATAGTCGAAAAGGGGGCTGGCACAGGATGAACTGTGTACCCTCCTCTCTCATCAACAATTGCCCATAGAGGAGCATCAGTAGATTTAGCTATTTTTAGATTACATTTAGCAGGAGTTTCATCTATTTTAGGTGCTGTAAATTTTATTACTACAATTATTAATATACGATCTGTAGGAATAACATTTGATCGCATACCTTTATTTGTTTGATCAGTAGGAATTACTGCTTTACTATTACTACTATCTCTTCCAGTATTAGCTGGAGCTATTACAATATTACTAACAGATCGAAATTTAAACACTTCTTTTTTTGATCCCGCAGGAGGAGGTGACCCTATTTTATATCAACATTTATTT
    ##        id.15             name.15    gene.15
    ## 1 KROK019-19 Carabus catenulatus KROK019-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.15
    ## 1 AACTTTATATTTTATTTTTGGTGCCTGATCAGGAATAGTGGGAACTTCATTAAGAATACTAATTCGAGCCGAATTAGGTAATCCCGGATCCTTAATTGGAGATGATCAAATTTATAACGTTATTGTTACAGCTCATGCTTTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGGGGATTTGGAAACTGACTAGTCCCATTAATACTAGGAGCCCCAGATATAGCCTTTCCTCGAATAAATAATATAAGTTTTTGATTATTGCCCCCTTCTCTGACTCTTCTCCTAATAAGAAGAATAGTGGAAAGGGGGGCAGGTACAGGATGAACAGTTTACCCTCCGCTGTCTTCTGGTATTGCCCATAGAGGGGCATCCGTAGATTTAGCAATTTTTAGACTACATTTGGCTGGGATCTCTTCTATTCTAGGGGCAGTAAATTTTATTACAACAATTATTAATATACGATCAGAAGGAATAACTTTTGACCGAATACCCCTATTTGTTTGATCCGTTGGTATTACTGCGTTATTGTTACTTTTATCTTTACCAGTATTAGCCGGAGCTATTACTATACTTTTAACAGACCGAAATCTTAACACGGCATTTTTTGATCCCGCAGGAGGAGGTGACCCAATTCTTTACCAACACTTATTT
    ##        id.16             name.16    gene.16
    ## 1 KROK020-19 Carabus irregularis KROK020-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.16
    ## 1 AACTTTATATTTTATTTTTGGTGCTTGATCAGGAATAGTGGGAACTTCTTTAAGAATACTAATTCGAGCTGAATTAGGTAACCCTGGATCCTTAATTGGAGATGATCAAATTTATAATGTTATTGTAACAGCTCACGCTTTTGTAATAATTTTTTTTATAGTTATACCCATTATAATTGGAGGATTTGGAAATTGATTGGTCCCTCTAATATTAGGAGCACCTGATATAGCATTTCCCCGAATAAATAATATAAGATTTTGACTACTACCTCCTTCTTTAACTCTCCTCCTAATAAGTTCTATAGTAGAAAGAGGAGCAGGTACAGGATGAACTGTATACCCTCCTTTATCATCTGGAATTGCTCATAGAGGTGCTTCTGTAGATTTAGCTATTTTCAGATTACATTTAGCCGGTATTTCCTCAATTCTAGGAGCAGTAAATTTTATTACAACTATTATTAATATACGATCAGTAGGAATAACTTTTGACCGAATGCCTTTATTTGTTTGGTCAGTAGGAATTACAGCTTTATTACTTTTACTTTCTCTACCAGTATTAGCAGGAGCTATTACAATACTTTTAACAGACCGTAATTTAAATACTTCATTTTTTGATCCTGCTGGGGGAGGTGATCCAATTTTATACCAACATTTATTT
    ##        id.17       name.17    gene.17
    ## 1 KROK021-19 Nebria dahlii KROK021-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       sequence.17
    ## 1 AACTTTATATTTTATTTTCGGTGCTTGAGCAAGAATGGTAGGAACTTCTTTAAGAATATTAATTCGAGCTGAGTTAGGAAATCCGGGATCTTTAATTGGAGATGATCAAATTTATAATGTTATCGTCACAGCTCACGCATTTGTAATAATTTTTTTTATAGTAATACCAATTATAATTGGAGGATTTGGAAACTGATTAGTCCCTTTAATGTTAGGAGCTCCAGATATAGCTTTCCCCCGAATAAATAACATAAGTTTTTGATTATTACCTCCTTCTTTAACTCTTCTCTTAATAAGATCTATAGTTGAAAGAGGAGCTGGAACAGGATGAACAGTATACCCCCCTCTGTCATCTAGAATTGCCCATAGAGGAGCATCTGTAGATTTAGCTATTTTTAGATTACATTTAGCAGGAATTTCTTCTATTTTAGGAGCTGTTAATTTTATTACTACAATTATTAATATACGATCTATAGGAATAACATTTGATCGAATACCTCTTTTTGTATGATCAGTAGGAATTACAGCATTATTATTATTACTATCTTTACCAGTTTTAGCAGGCGCAATTACAATACTTTTAACTGATCGAAATTTAAATACATCTTTTTTTGATCCTGCAGGAGGAGGAGACCCTATTTTATATCAACATTTATTTTGATTTTTTGGTC
    ##        id.18                name.18    gene.18
    ## 1 KROK022-19 Platynus scrobiculatus KROK022-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.18
    ## 1 AACTTTATATTTTATTTTTGGTGCATGATCAGGGATAGTAGGAACTTCATTAAGAATATTAATTCGATTAGAGTTAGGTAGTCCTGGGTCATTGATTGGAGACGATCAAATTTATAATGTTATTGTTACTGCCCATGCATTTATTATAATTTTTTTTATAGTAATACCTATTATAATTGGGGGATTTGGAAATTGATTAGTTCCTTTAATATTAGGAGCCCCTGATATAGCATTCCCTCGAATAAATAATATAAGTTTTTGACTTCTTCCCCCATCTTTAACATTGCTTTTAATGAGCAGAATAGTAGAAAGAGGTGCTGGAACTGGATGAACAGTTTACCCTCCCCTATCATCTGGAATTGCCCATGCTGGAGCTTCAGTTGATTTAGCTATTTTTAGATTACATCTAGCTGGAATTTCATCTATTTTAGGAGCTGTAAATTTTATTACTACTATTATTAATATACGATCAGTGGGAATAACTTTTGATCGAATACCTTTATTTGTTTGATCAGTTGGAATTACTGCTTTATTATTACTTTTATCTTTACCTGTTTTAGCAGGGGCTATTACAATATTATTAACAGATCGAAATTTAAATACTTCTTTTTTTGACCCCGCTGGAGGAGGAGACCCAATTTTATATCAACATTTATTT
    ##        id.19          name.19    gene.19
    ## 1 KROK023-19 Dima elateroides KROK023-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     sequence.19
    ## 1 GATATTGGAACATTATACTTCATTTTTGGAGCATGGGCCGGCATACTAGGCACTTCTCTCAGGCTCCTAATCCGGGCAGAACTAGGCAACCCTGGTTCATTAATTGGAAACGATCAAATCTACAACGTAATTGTTACTGCTCACGCATTCATTATAATCTTCTTCATAGTAATACCCATCATAATTGGAGGATTTGGAAATTGACTAGTACCCCTAATACTAGGAGCACCAGATATAGCCTTCCCCCGGATAAACAATATAAGATTCTGGTTCTTACCCCCCTCTCTTAGTTTACTTCTAATAAGAAGAATTGTAGAGAATGGGGCCGGTACAGGATGAACTGTTTACCCTCCATTATCTGCTAATATCGCACACAGAGGGTCTTCAGTAGATTTAGCAATTTTCAGACTACATTTAGCTGGAATCTCATCCATTCTAGGAGCAGTAAATTTTATCTCCACAGTAATCAATATACGATCACCTGGAATCACCTTTGACCGAATACCTCTATTTGTATGGGCAGTAGCTATTACAGCTCTCCTCCTTCTATTATCCCTACCAGTACTAGCTGGGGCTATTACAATATTACTAACAGATCGAAATCTAAATACTTCCTTTTTCGACCCCGCAGGAGGGGGTGACCCTATCCTGTA
    ##        id.20                 name.20    gene.20
    ## 1 KROK025-19 Clinopodes carinthiacus KROK025-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.20
    ## 1 AACCATGTATCTAATTTTTGGCGCTTGAGCAGCTATAGCTGGAACAGCTTTAAGAATTATTGTGCGACTAGAGCTCAGCCAACCCGGGGCCCTAATTGGGGATGACCAAATTTATAACGTAATTGTAACAGCCCATGCCTTTGTAATGATTTTCTTCATAGTAATACCAGTAATAATAGGAGGATTCGGAAATTGAATACTCCCCCTTATGTTAGGCGCCCCAGACATGGCCTTCCCCCGAATAAACAATCTCAGCTTCTGACTCCTCCCCCCCTCTTTAACCCTTCTCACAACATCAATAATAGTTGAAAGAGGTGCGGGCACCGGCTGAACCGTATACCCCCCGTTAGCTGCAAACATTTCTCACTCTGGACCCTCTGTTGATATAACAATTTTTTCTCTTCACCTAGCTGGAGTGTCCTCCATTCTAGCCTCAATTAATTTTATTACTACAATCATTAATATACGATCTAGCGGAATGGTTCTTGAACGAATTCCTTTATTTGTGTGGAGAGTAAAAATTACCGCAATTCTACTTTTGCTCTCCCTCCCAGTGTTAGCTGGAGCCATTACAATATTATTAACCGACCGAAACATTAATACAAGCTTCTTCGACCCTGCTGGGGGCGGGGACCCTATCTTATACCAACACCTATTC
    ##        id.21                    name.21    gene.21
    ## 1 KROK026-19 Dicellophilus carniolensis KROK026-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.21
    ## 1 AACCATGTACCTCATATTTGGAGCCTGAGCCGCAATAGCTGGTACTGCCCTAAGATTATTGATCCGATTAGAGCTAAGACAGCCCGGAACCCTAATCGGGGATGACCAAACTTATAATGTAGTAGTAACAGCTCACGCCTTCGTAATAATTTTTTTCATAGTAATACCTATTATAATAGGAGGATTCGGCAATTGACTTCTACCTCTCATGCTCGGAGCCCCAGATATGGCGTTCCCCCGCCTAAACAACATAAGATTTTGACTCCTCCCCCCATCTCTAACGCTCCTCCTCGCCTCTGCTGCAGTCGAAAGTGGGGCGGGGACCGGCTGAACCGTATATCCCCCCCTCTCGTCAGGACTAGCACACTCCGGCCCATCAGTAGACATAACAATCTTCTCCCTACATCTAGCAGGTGTATCTTCAATCCTCGGGGCCATCAACTTCATCACCACAGTAATTAATATACGCTCCAGAGGAATAGTTATAGAACGAGTCCCTCTCTTCGTCTGGGGAGTAATAATTACCGCCATCCTCCTACTCCTATCCCTCCCCGTCCTTGCAGGCGCAATCACAATGCTACTGACCGACCGAAACTTTAATACAAGTTTTTTTGACCCAGCCGGAGGCGGAGATCCAATCTTGTACCAACACTTATTT
    ##        id.22              name.22    gene.22
    ## 1 KROK029-19 Schendyla tyrolensis KROK029-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.22
    ## 1 AACCATATATTTAATTTTCGGAGCATGGGCCTCAATAGCCGGGACAGCCCTCAGCCTTATTATCCGACTAGAATTGAGCCAGCCAGGGAGTCTCATTGGAGACGACCAAACCTATAATGTCATCGTCACTGCCCACGCTTTTGTAATAATTTTCTTTATAGTAATGCCCATTATAATAGGGGGGTTTGGAAATTGACTCCTCCCCCTAATGCTCGGGGCCCCAGACATGGCCTTCCCCCGTCTTAATAACATAAGCTTTTGACTGCTCCCCCCCTCACTCACCCTTCTTCTCGCCTCCGCTGCAGTAGAAAGAGGGGCAGGCACGGGCTGAACCGTCTACCCCCCTCTCTCCTCCGGACTTGCCCACTCGGGGGCATCCGTAGACATAACCATCTTCTCCCTACATCTAGCCGGTATCTCCTCAATTTTAGGGGCAATCAATTTTATCACCACCGTCATTAACATACGAACAAGAGGAATAGTATTCGAACGAGTCCCCCTCTTCGTCTGAGGAGTTACCATTACAGCCACCCTCCTCCTATTGGCCCTCCCCGTACTAGCCGGAGCCATTACCATGCTCCTCACAGACCGAAACTTTAACACAAGCTTTTTTGACCCGGCAGGCGGAGGAGACCCAATCTTATACCAACATCTCTTC
    ##        id.23             name.23    gene.23
    ## 1 KROK030-19 Strigamia acuminata KROK030-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.23
    ## 1 AACAATATACCTAATCTTCGGAACTTGAGCCGCAATAGCAGGAACTGCCCTAAGCCTAATCATTCGAATAGAACTAAGACAACCAGGAACCTTAATTGGAGACGACCAGATCTACAACGTAGTGGTAACAGCACACGCCTTCGTAATAATTTTCTTTATGGTAATGCCCATTATAATAGGGGGATTCGGTAACTGAATACTCCCTCTAATACTAGGGGCCCCAGACATAGCATTCCCCCGAATAAACAACCTAAGATTCTGGTTACTCCCACCCTCCCTCACGCTATTAATAGCATCCATAGCCGTAGAGAGAGGAGCAGGAACGGGATGAACTGTATACCCCCCTCTAGCAGCAAATGTCTCCCACTCAGGCCCATCAGTGGACATAACCATTTTTTCCCTCCATCTAGCAGGAGTATCCTCAATCCTAGGCTCAATCAACTTCATCACAACAATTATTAACATACGAGCAAGAGGAATAGTTATTGAACGAATCCCCCTATTCGTATGAAGAGTAAAAATTACAGCCGTTCTACTCCTATTATCTCTCCCAGTACTAGCTGGTGCTATCACAATGCTTCTCACAGACCGAAATATTAACACAAGATTCTTCGACCCTGTTGGAGGGGGGGACCCCATCCTATACCAACACCTATTC
    ##        id.24                  name.24    gene.24
    ## 1 KROK031-19 Strigamia transsilvanica KROK031-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       sequence.24
    ## 1 AACTATATATCTAATCTTCGGAACCTGAGCCGCAATAGCAGGGACCGCACTAAGCCTAATCATTCGAATAGAACTAAGCCAACCCGGAACACTTATTGGAGATGATCAAATTTATAACGTAGTAGTAACAGCTCACGCCTTTGTAATAATTTTCTTTATAGTTATACCCATTATAATAGGAGGATTTGGAAATTGAATACTTCCCCTAATATTAGGAGCCCCAGATATGGCCTTCCCCCGAATAAACAACTTAAGATTTTGATTACTACCTCCAAGCCTAACCCTACTAATAGCATCAATAGCAGTAGAAAGAGGAGCAGGAACAGGATGAACAGTTTACCCCCCTCTAGCAACAAACATCTCCCACTCTGGCCCATCAGTAGACATAACAATTTTCTCCCTTCACCTAGCAGGAGTATCCTCAATTTTAGGATCAATCAATTTCATCACAACAATCATCAACATACGAGCAAGAGGAATAATCATCGAACGAATTCCCCTATTTGTATGAAGAGTAAAAATTACAGCAGTCCTTTTACTCTTATCTCTCCCCGTACTAGCAGGAGCAATTACCATATTACTCACAGACCGAAACATCAATACTAGATTCTTTGACCCTGTAGGAGGAGGAGACCCAATCCTCTACCAACACTTATTTTGATTTTTTGGCC
    ##        id.25                    name.25    gene.25
    ## 1 KROK032-19 Dicellophilus carniolensis KROK032-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.25
    ## 1 AACCATGTACCTCATATTTGGAGCCTGAGCCGCAATAGCTGGTACTGCCCTAAGATTATTGATCCGATTAGAGCTAAGACAGCCCGGAACCCTAATCGGGGATGACCAAACTTATAATGTAGTAGTAACAGCTCACGCCTTCGTAATAATTTTTTTCATAGTAATACCTATTATAATAGGAGGATTCGGCAATTGACTTCTACCTCTCATGCTCGGAGCCCCAGATATGGCGTTCCCCCGCCTAAACAACATAAGATTTTGACTCCTCCCCCCATCTCTAACGCTCCTCCTCGCCTCTGCTGCAGTCGAAAGTGGGGCGGGGACCGGCTGAACCGTATATCCCCCCCTCTCGTCAGGACTAGCACACTCCGGCCCATCAGTAGACATAACAATCTTCTCCCTACATCTAGCAGGTGTATCTTCAATCCTCGGGGCCATCAACTTCATCACCACAGTAATTAATATACGCTCCAGAGGAATAGTTATAGAACGAGTCCCTCTCTTCGTCTGGGGAGTAATAATTACCGCCATCCTCCTACTCCTATCCCTCCCCGTCCTTGCAGGCGCAATCACAATGCTACTGACCGACCGAAACTTTAATACAAGTTTTTTTGACCCAGCCGGAGGCGGAGATCCAATCTTGTACCAACACTTATTT
    ##        id.26                   name.26    gene.26
    ## 1 KROK035-19 Eupolybothrus tridentinus KROK035-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.26
    ## 1 AAGATATTGGAACAATATACTTTATCTTCGGGATCTGAGCCTCTATAGTAGGAACAGCCCTAAGTCTACTAATTCGGTTAGAATTAAGCCAACCAGGAAGATTAATTGGAGATGATCAAATCTATAATGTAATTGTTACAGCACATGCTTTCGTTATAATTTTCTTTATAGTTATACCAATTATAATTGGAGGATTTGGAAATTGATTAGTACCCTTAATATTAGGGGCACCAGATATAGCATTTCCACGATTAAATAATATAAGCTTCTGATTATTGCCTCCCTCATTATCACTACTTTTATGTTCTGCTGCAGTAGAAAGAGGGGCTGGTACAGGATGAACTGTTTATCCTCCCCTTTCATCTAATATCTCCCATAGTGGAGCTTCAGTTGATATAACCATTTTTTCATTACATTTAGCAGGAGTCTCCTCAATTTTAGGAGCTATTAACTTTATTTCAACAATTATTAATATACGAACAAGAGGAATATCATTTGAACGTGTTCCTCTATTTGTATGGTCTGTAAAAATTACAGCAATTTTACTTTTACTTTCATTACCTGTATTAGCCGGAGCAATTACTATATTATTAACTGATCGAAATTTAAATACCAGATTTTTTGACCCTACAGGAGGAGGAGACCCTATTTTATATCAACACTTATTTTGATT
    ##        id.27                      name.27    gene.27
    ## 1 KROK036-19 Harpolithobius gottscheensis KROK036-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.27
    ## 1 AACAATATATTTTGTATTAGGAATCTGATCAGCAATAATCGGTACCGGTCTTAGAATTCTTATTCGATTGGAATTAAGACAACCTGGAAGATTAATTGGAGATGACCAAATTTATAATGTAATTGTAACTGCACATGCTTTTATTATAATTTTTTTTATAGTTATACCCATTATAATTGGAGGATTTGGAAATTGATTGGTGCCACTAATATTAGGTGCTCCAGATATGGCATTTCCTCGAATAAATAATATAAGATTTTGATTACTCCCTCCATCTTTAACCCTACTTTTATGCTCTGCAGCAGTAGAAAGAGGAGCAGGAACCGGATGAACAGTATATCCTCCACTGTCTTCAAATATTTCTCACAGAGGAGCTTCTGTTGATATAACAATCTTCTCCCTTCATTTAGCTGGAGCCTCATCAATTTTAGGGGCTATTAATTTTATTTCAACTATTATTAATATACGATCCAGAGGAATATCATTTGAACGAGTTCCTCTTTTCGTATGATCAGTAAAAATTACTGTAATCTTACTTTTATTATCATTACCTGTATTAGCAGGAGCTATTACTATATTATTAACTGATCGTAATCTCAATACAAGATTTTTTGATCCTACCGGAGGAGGGGATCCAATTTTATATCAACATTTATTT
    ##        id.28             name.28    gene.28
    ## 1 KROK037-19 Lithobius castaneus KROK037-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       sequence.28
    ## 1 CACTATATACTTTATCTTCGGAATCTGGTCATCAATAATCGGTACCGCTCTTAGCCTATTAATTCGACTAGAATTAAGTCAGCCAGGAAGTCTAATTGGTGATGACCAAATTTATAATGTAATCGTTACAGCACACGCATTTGTAATAATCTTCTTTATGGTGATACCTATTATAATTGGAGGATTTGGTAATTGACTCATTCCATTAATACTAGGAGCACCAGACATGGCATTTCCTCGACTAAATAACATAAGATTTTGACTTTTACCCCCCTCCTTAACACTATTATTGTGTAGTGCAGCAGTAGAAAGAGGGGCAGGAACAGGATGAACAGTTTATCCACCCCTATCAGCTAACATTTCACATAGTGGGGGATCAGTAGATATAACCATTTTCTCACTACACCTAGCAGGAGTCTCTTCAATCTTAGGAGCAATTAACTTTATTTCCACCATCATTAATATACGAACTAGAGGGATATCATTCGAGCGAGTACCCCTCTTCGTATGATCCGTAAAAATTACCGTAATTCTTCTCCTCCTCTCCCTACCTGTATTAGCCGGAGCTATTACCATATTATTAACTGATCGAAATCTAAATACAAGA
    ##        id.29            name.29    gene.29
    ## 1 KROK038-19 Lithobius dentatus KROK038-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    sequence.29
    ## 1 AACAATATACTTTATTTTAGGAATCTGATCTGCAATAATTGGAACAGGCTTAAGACTACTAATTCGACTTGAATTAAGCCAACCAGGAAGATTAATTGGAGATGATCAAATCTATAATGTTATCGTTACAGCCCATGCCTTCATTATAATCTTCTTTATAGTTATACCTATTATAATTGGAGGATTTGGAAACTGACTTGTACCATTAATATTAGGAGCACCAGATATAGCATTTCCACGAATAAATAACATAAGATTTTGATTATTACCCCCTTCACTTACCCTCCTTCTATGCTCCGCTGCCGTTGAGAGAGGGGCTGGAACAGGYTGAACCGTTTATCCCCCCTTATCCTCTAATATTTCACACAGTGGGGCGTCAGTAGATATAACTATTTTTTCCCTTCACTTAGCAGGTGCTTCCTCCATTCTAGGTGCAATTAATTTTATTTCAACAATCATTAATATACGATCAAGAGGAATATCGTTTGAACGAGTGCCTTTATTCGTATGATCAGTTAAGATTACAGTAATTCTACTATTATTATCTTTACCTGTATTAGCTGGAGCAATTACAATACTCCTTACAGATCGAAACCTTAACACAAGATTTTTTGACCCTACTGGAGGGGGGGATCCTATCTTATATCAACACCTCTTTTGATTTTTTG
    ##        id.30         name.30    gene.30
    ## 1 KROK039-19 Lithobius latro KROK039-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.30
    ## 1 AACCATATATTTTGTATTAGGAATTTGATCAGCAATAATTGGTACAGGACTCAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGTGTATAATGTTATTGTCACAGCCCACGCATTCATTATAATTTTCTTTATAGTAATACCAATTATAATTGGTGGATTCGGAAATTGACTGGTACCCCTTATACTTGGTGCTCCAGATATGGCCTTCCCCCGAATAAATAATATAAGATTTTGGTTACTCCCCCCCTCTCTAACCCTACTTCTTTGCTCTGCTGCAGTAGAGAGAGGAGCAGGAACGGGCTGAACTGTATACCCCCCCTTATCAGCAAATATCTCCCATAGCGGGGCCTCAGTAGATATAACAATTTTTTCTCTACACTTAGCAGGGGCGTCATCAATCTTAGGAGCAATTAACTTTATTTCAACAATTATCAATATACGTACTAGTGGGATATCATTCGAACGAGTACCATTATTTGTATGATCTGTAAAGATTACAGTTATTTTACTTCTTCTTTCCCTTCCCGTTCTTGCCGGAGCTATTACTATACTCCTTACAGACCGAAACTTGAATACAAGATTCTTTGATCCCACAGGGGGAGGAGACCCCATCTTATACCAGCACCTATTT
    ##        id.31              name.31    gene.31
    ## 1 KROK041-19 Lithobius tenebrosus KROK041-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.31
    ## 1 AACTATATACTTCATTCTAGGAATTTGATCAGCCATAATTGGCACAGGATTAAGAATTCTTATCCGATTAGAACTTAGTCAACCAGGAAGACTAATTGGGGATGATCAAATTTATAATGTAATTGTAACAGCTCACGCATTCATTATAATTTTTTTTATAGTAATACCCATCATAATTGGAGGATTTGGTAACTGATTGGTGCCCTTAATATTAGGGGCACCAGATATAGCTTTCCCTCGACTAAATAATATAAGATTCTGATTACTCCCGCCTTCCCTAACATTATTATTATCCTCAGCCGCCGTAGAAAGAGGAGCTGGTACAGGATGAACCGTATACCCCCCTCTATCATCTAATATTTCCCATAGAGGAGCATCAGTAGATATAACTATTTTTTCTCTCCACTTAGCAGGGGCATCTTCAATCTTGGGAGCAATCAATTTTATCTCAACAATTATTAATATACGATCAAGAGGAATAACATTTGAACGTGTTCCCCTATTTGTGTGATCTGTAAAAATTACCGTAATCTTACTCCTCCTATCCCTGCCAGTATTAGCAGGAGCCATTACAATATTATTAACCGACCGAAACCTAAACACAAGATTCTTTGATCCCACTGGAGGAGGAGACCCAATTTTATACCAGCACTTATTC
    ##        id.32           name.32    gene.32
    ## 1 KROK042-19 Lithobius validus KROK042-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.32
    ## 1 AACTATATATTTTATCTTAGGAATCTGGTCAGCAATAATCGGAACAGGATTAAGCCTTCTCATTCGACTAGAATTAAGCCAACCAGGGAGATTAATTGGAGACGATCAAATTTATAACGTAATCGTAACAGCTCATGCATTTATTATAATTTTCTTCATAGTAATGCCAATCATAATTGGAGGATTTGGTAATTGATTAGTCCCACTAATATTAGGAGCCCCAGACATAGCATTCCCCCGATTAAATAACATAAGATTTTGACTTCTTCCACCCTCCCTCACACTACTTCTTTGTTCAGCAGCTGTTGAAAGAGGCGCAGGAACTGGATGAACCGTTTACCCACCTCTTTCTGCAAACATCTCACATAGAGGAGCATCAGTGGATATAACAATTTTTTCTCTACACTTAGCAGGTGCCTCCTCTATTCTAGGGGCCATTAATTTTATTTCTACAATTATTAATATACGAACAAGAGGAATATCATTCGAACGAGTTCCATTATTCGTCTGATCAGTAAAAATTACTGTTATTCTCCTTTTATTATCTTTACCAGTACTTGCAGGAGCAATTACCATATTATTAACCGATCGAAATTTAAACACAAGATTCTTCGACCCAACAGGAGGTGGGGATCCTATTTTATACCAGCATCTATTCTGATTTTTTGKCCCSGGAAAAATTTTAAAAA
    ##        id.33        name.33    gene.33
    ## 1 KROK043-19 Sigibius anici KROK043-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      sequence.33
    ## 1 TACTATATATTTTGTGTTTGGAATTTGATCATCTATAATTGGAACTGCTCTTAGTCTTCTAATTCGTTTAGAATTAAGACAGCCAGGAAGATTAATTGGAGATGATCAAATTTATAATGTTATTGTTACAGCACATGCATTTATTATAATCTTTTTTATAGTGATACCAATTATAATTGGTGGATTTGGAAATTGATTAATTCCATTAATATTAGGTGCCCCAGACATAGCCTTTCCCCGCCTGAATAACATAAGATTTTGGTTGCTACCACCTTCACTTACATTACTTCTTAGATCAGCAGCAGTAGAAAGAGGTGCAGGAACAGGTTGAACAGTTTATCCACCCCTGTCCGCTAATATTTCCCATAGAGGTGCATCAGTAGATATAACAATTTTTTCTCTTCACTTAGCTGGTGTATCTTCAATCTTAGGGGCTATTAACTTCATCTCAACAATTATTAATATACGAGCTAGAGGAATAACATTTGAACGAGTCCCCTTATTTGTGTGATCTGCAAAAATTACAGTTATTTTACTCCTACTCTCATTACCAGTATTAGCTGGTGCAATTACTATATTACTTACAGATCGAAATCTTAATACAAGATTTTTTGATCCTACAGGAGGAGGAGACCCTATTTTATATCAACACTTATTTTGATTTTTTGGT
    ##        id.34                name.34    gene.34
    ## 1 KROK044-19 Lithobius carinthiacus KROK044-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   sequence.34
    ## 1 AGATATTGGAACTATATATTTTATCTTCGGAACATGATCAGCTATAATCGGAACCTCCCTGAGACTTTTAATTCGTCTAGAATTAAGTCAGCCTGGGAGACTAATTGGAGATGATCAAATTTACAATGTAATTGTAACTGCCCACGCATTCGTAATAATCTTCTTCATAGTAATACCAATTATAATTGGAGGATTTGGTAACTGATTATTACCATTAATGTTAGGGGCCCCTGACATGGCTTTTCCCCGACTAAACAACATAAGATTTTGACTTCTCCCCCCTTCTCTTACTCTACTCCTATGTTCAGCTGCAGTAGAAAGAGGTGCAGGAACAGGATGAACAGTCTATCCACCCCTCTCCTCAAATATTTCCCATAGAGGAGCATCAGTTGATATAACAATCTTTTCTCTTCACCTAGCAGGTGCGTCATCAATTCTAGGGGCAATCAACTTTATCTCCACAATTATTAACATACGATCTAGAGGAATAACTTTTGAGCGAGTTCCTCTATTTGTATGGTCAGTTAAAATTACAGTTATTCTTCTTCTATTATCACTACCAGTTTTAGCTGGAGCTATTACAATATTACTCACAGACCGAAATATTAACACTAGATTCTTTGATCCTACTGGAGGAGGAGACCCAATTTTATATCAACACCTATTT
    ##        id.35            name.35    gene.35
    ## 1 KROK046-19 Lithobius dentatus KROK046-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 sequence.35
    ## 1 ATATTGGAACAATATACTTTATTTTAGGAATCTGATCTGCAATAATTGGAACAGGCTTAAGACTACTAATTCGACTTGAATTAAGCCAACCAGGAAGATTAATTGGAGATGATCAAATCTATAATGTTATCGTTACAGCCCATGCCTTCATTATAATCTTCTTTATAGTTATACCTATTATAATTGGAGGATTTGGAAACTGACTTGTACCATTAATATTAGGAGCACCAGATATAGCATTTCCACGAATAAATAACATAAGATTTTGATTATTACCCCCTTCACTTACCCTCCTTCTATGCTCCGCTGCCGTTGAGAGAGGGGCTGGAACAGGTTGAACCGTTTATCCCCCCTTATCCTCTAATATTTCACACAGTGGGGCGTCAGTAGATATAACTATTTTTTCCCTTCACTTAGCAGGTGCTTCCTCCATTCTAGGTGCAATTAATTTTATTTCAACAATCATTAATATACGATCAAGAGGAATATCGTTTGAACGAGTGCCTTTATTCGTATGATCAGTTAAGATTACAGTAATTCTATTATTATTATCTTTACCTGTATTAGCTGGAGCAATTACAATACTCCTTACAGATCGAAACCTTAACACAAGATTTTTTGACCCTACTGGAGGGGGGGATCCTATCTTATATCAACACCTCTTT
    ##        id.36              name.36    gene.36
    ## 1 KROK047-19 Lithobius forficatus KROK047-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.36
    ## 1 AACTATATATTTTGTGCTAGGAATTTGGTCAGCAATAATCGGTACTGGCCTTAGTCTTCTTATTCGATTGGAATTAAGCCAACCGGGGAGATTAATTGGAGACGATCAAATTTATAATGTTATTGTAACCGCTCATGCCTTTATTATAATTTTTTTTATAGTTATACCAATTATAATTGGGGGCTTCGGAAATTGACTTGTCCCACTAATACTGGGGGCACCAGACATGGCCTTTCCCCGAATAAATAATATAAGATTTTGACTCCTCCCCCCTTCCCTTACACTATTACTTTGTTCAGCAGCAGTAGAAAGAGGAGCGGGAACAGGATGAACCGTCTACCCTCCCCTATCTTCTAACATTTCTCATAGAGGGGCATCAGTAGACATAACAATCTTTTCATTACACCTCGCCGGTGCCTCATCAATCTTAGGGGCTATTAATTTTATCTCAACAATCATTAACATGCGGTCTAGAGGAATATCATTTGAGCGAGTACCTCTATTTGTATGGTCAGTAAAAATTACAGTAATCTTACTTCTTCTTTCCCTCCCAGTTTTAGCCGGAGCAATCACAATATTACTAACAGACCGAAATCTAAATACTAGATTCTTCGACCCAACAGGAGGAGGAGACCCTATTTTATACCAACATCTATTT
    ##        id.37                 name.37    gene.37
    ## 1 KROK048-19 Eupolybothrus grossipes KROK048-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.37
    ## 1 TACTATATACTTTATTTTTGGAATTTGAGCATCAATAGTTGGAACAGCATTAAGTCTTCTAATCCGGTTAGAATTAAGCCAGCCAGGAAGACTAATTGGTGACGATCAAATTTACAATGTAATCGTGACAGCTCATGCTTTCGTTATAATCTTCTTTATAGTTATACCAATTATAATTGGAGGATTTGGAAATTGGCTTGTACCTTTAATATTAGGTGCCCCTGATATAGCCTTCCCCCGTCTTAATAACATAAGATTTTGACTATTACCTCCTTCTCTTTCTTTACTGTTATGCTCAGCCGCAGTGGAAAGAGGAGCCGGAACAGGATGAACTGTTTACCCCCCCCTTTCATCAAACATCTCCCACAGAGGAGCGTCAGTTGATATAACCATTTTTTCTCTTCACCTAGCAGGAGTTTCTTCCATCCTAGGAGCGATTAACTTTATTTCGACTATTATTAACATACGAACTAGAGGAATATCATTTGAACGAGTTCCGCTTTTTGTTTGATCAGTAAAAATTACAGCAATTTTGCTTCTTTTATCCCTACCAGTTTTAGCAGGAGCAATTACAATATTACTTACTGATCGAAATATCAATACTAGATTTTTTGACCCTACAGGAGGAGGAGATCCTATTCTTTACCAACATCTATTC
    ##        id.38         name.38    gene.38
    ## 1 KROK050-19 Cryptops parisi KROK050-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            sequence.38
    ## 1 ATATTGGAACAATATACTTAATTTTTGGAGCTTGAGCAGCCATATTAGGAACATCTTTAAGCTTACTAATCCGAMTAGAATTAAGCCAACCAGGAACTTTAATTGGAGATGACCAATTATATAATGTTGTAGTAACAGCCCATGCTTTCGTTATAATTTTCTTTATAGTTATACCTATTATAATTGGCGGCTTTGGAAACTGGTTAGTACCTTTAATAATAGGTGCCCCAGACATAGCTTTTCCACGATTAAATAATATAAGCTTCTGACTATTACCACCTTCTTTAAGATTGCTATTAGGATCTAGCTTGTTAGAAAGTGGAGCAGGAACAGGATGAACAGTTTATCCACCTCTAGCCTCTTCTCTTGCCCACTCAGGTTGTTCAGTAGATATAACTATTTTTTCTTTGCATCTTGCAGGAATTTCTTCTATTTTAGGGGCTATTAATTTTATTACAACTATTCTTAATATACGGTCAAAAGGTATAGTATTTGAACGATTACCTCTATTTGCATGATCAGTATTAATCACAGCTATTCTACTCTTACTCTCTCTTCCTGTTTTAGCAGGAGCTATTACAATATTACTAACAGACCGAAATTTTAATACCTCATTTTTTGATCCAGCAGGAGGAGGAGACCCTATTCTTTACCAACATTTATTCTGATTTTTTGT
    ##        id.39          name.39    gene.39
    ## 1 KROK052-19 Coelotes atropos KROK052-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.39
    ## 1 AACTTTGTATTTAGTTTTTGGGGCTTGGTCTGCTATAGTTGGAACAGCTATAAGAGTATTAATTCGAATTGAATTAGGTCAATCAGGAAGTTTTTTGGGTGATGATCATTTATATAATGTTATTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATAGTGATACCTATTTTAATTGGAGGTTTTGGTAATTGATTAGTACCTTTGATATTAGGTGCTCCAGATATAGCTTTTCCTCGATTAAATAATTTAAGGTTTTGATTATTACCTCCTTCATTATTTTTATTGTTTATTTCTTCTATGGTTGAAATAGGTGTAGGAGCTGGATGGACGGTTTATCCACCATTGGCTTCTAGTATGGGTCATTCTGGAAGATCTGTTGATTTTGCTATTTTTTCTTTACATTTAGCTGGGGCTTCTTCTATTTTAGGAGCTATTAATTTTATTTCTACTATTTTTAATATACGGTCGAATGGAATGACTTTTGAAAAGGTTCCTTTATTTGTTTGATCCGTATTAATTACTGTTGTATTATTATTATTATCTTTGCCTGTATTAGCGGGTGCTATTACAATATTATTAACTGATCGAAATTTTAATACTTCATTTTTTGATCCAGCTGGAGGTGGTGATCCTATTTTATTTCAACATTTATTTTGATTTTTTGGTCAC
    ##        id.40             name.40    gene.40
    ## 1 KROK053-19 Histopona luxurians KROK053-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   sequence.40
    ## 1 AGATATTGGAACATTGTATTTAATTTTTGGGACGTGATCTGCTATAGTGGGAATAGCTATAAGTGTTCTTATTCGAATTGAATTAGGACAATCAGGAAGATTTTTGGGTGATGATCACCTTTATAATGTAATTGTTACTGCTCATGCTTTTGTTATAATCTTTTTTATAGTTATGCCTGTAATAATTGGAGGATTTGGAAATTGGTTAATTCCTTTAATATTAGGAACGCCAGATATGGCGTTTCCTCGAATAAATAATTTGAGATTTTGGTTATTACCCCCTTCTTTATTTTTGCTTTTTATTTCTTCTATAGTTGAAATAGGAGTTGGTTCAGGGTGAACTGTGTATCCGCCTTTAGCATCTTCTATTGGACATGTTGGTAGTTCTGTTGATTTTGCGATTTTTTCTTTACATTTGGCTGGAGCTTCTTCAATTATAGGGGCTATTAATTTTATTTCTACTATTTTAAATATACGTTCTCCATTCATGAGAATGGAAAAAGTTCCTTTATTTGTGTGGTCTGTTTTAATTACTGCTGTTCTGTTATTATTGTCTTTGCCAGTTTTAGCTGGAGCTATTACAATATTACTTACTGATCGTAATTTTAATACTTCTTTTTTTGACCCTGCTGGAGGAGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.41           name.41    gene.41
    ## 1 KROK054-19 Histopona torpida KROK054-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.41
    ## 1 AACATTATATTTAATTTTTGGTGTGTGATCTGCTATAGTGGGGACTGCAATAAGAGTTATTATTCGAATTGAATTAGGTCAGTCTGGTAGTTTTTTAGGAGATGATCATCTTTATAATGTAATTGTTACTGCTCATGCATTTGTGATGATTTTTTTTATAGTTATACCAATTATAATTGGAGGATTTGGAAATTGATTGGTTCCTTTAATGTTAGGTTCTCCAGATATAGCATTTCCTCGAATAAATAATTTAAGTTTTTGGCTGTTACCTCCGTCTTTATTTTTGCTTTTTGTGTCGGCCCTATCTGAGATAGGGGTGGGGGCTGGATGAACTGTTTATCCGCCTCTGGCTTCTTCTATTGGACATATAGGTAGTTCTGTCGATTTTGCTATTTTTTCTTTACATTTGGCTGGGGCTTCTTCAGTAATAGGAGCTATTAATTTTATTTCTACTATTTGAAATATGCGTTCTTATGAAATAAGAATGGATAAAGTACCTTTGTTTGTATGATCTGTTTTGATTACTGCTGTATTATTATTATTATCTTTACCAGTTTTAGCTGGGGCTATTACAATATTGCTTACTGATCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##        id.42                name.42    gene.42
    ## 1 KROK055-19 Inermocoelotes anoplus KROK055-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.42
    ## 1 TTCTATGTATTTAATTTTTGGAGCTTGATCTGCTATAGTTGGTACCGCTATAAGAGTTTTAATCCGAATTGAATTAGGTCAATCAGGAAGATTTTTGGGTGATGATCATTTATATAATGTTATTGTTACTGCTCATGCTTTTATTATAATTTTTTTTATAGTAATACCTATTTTAATTGGAGGTTTTGGGAATTGATTAATTCCTTTAATGTTAGGGGCGCCAGATATGGCTTTTCCTCGAATAAATAATTTGAGTTTTTGGTTGTTACCTCCTTCGTTGTTTTTATTATTTATTTCTTCTATGGTGGAGATAGGAGTAGGGGCTGGATGAACGATTTATCCTCCATTGGCTTCTATGATAGGGCATGCTGGAAGTTCTGTTGATTTTGTTATTTTTTCTTTGCATTTGGCTGGTGTTTCTTCTATTTTAGGAGCTATTAATTTTATTTCTACTATTTTTAATATACGATCTTATGGAATATCTTTTGAGAAGGTACCATTATTTGTTTGGTCGGTATTAATTACTGTTGTGTTATTATTATTATCTTTGCCTGTATTAGCGGGTGCTATTACAATATTGTTAACTGATCGTAATTTTAATACTTCATTTTTTGATCCAGCTGGAGGTGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.43                name.43    gene.43
    ## 1 KROK056-19 Inermocoelotes inermis KROK056-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   sequence.43
    ## 1 AGATATTGGTACTTTGTATTTGATTTTTGGAGCTTGATCTGCTATAGTTGGTACAGCTATAAGAGTTTTGATTCGGATTGAATTAGGTCAACCAGGAAGATTTTTAGGTGATGATCATTTATATAATGTAATTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATAGTAATACCTATTTTAATTGGAGGTTTTGGAAATTGATTAGTTCCTTTAATATTAGGGGCTCCAGATATAGCTTTTCCTCGAATAAATAATTTGAGTTTTTGATTATTACCTCCTTCATTATTTTTATTGTTTATTTCTTCAATAGTTGAAATAGGTGTAGGTGCTGGATGAACAATTTATCCTCCATTGGCTTCTATAATGGGCCATGCTGGAAGTTCTGTTGATTTTGTTATTTTTTCTTTACATTTAGCGGGGGCTTCCTCTATTTTAGGAGCTATTAATTTTATTTCTACTATTTTTAATATACGGTCATATGGAATAACTTTCGAGAAAGTTCCTTTATTTGTGTGGTCAGTATTGATTACTGTTGTATTATTATTGTTGTCTTTACCTGTATTAGCAGGGGCTATTACAATATTATTAACTGATCGTAACTTTAATACTTCGTTTTTTGATCCAGCTGGAGGTGGTGATCCTATTTTATTTCAACATTTGTTT
    ##        id.44              name.44    gene.44
    ## 1 KROK057-19 Tegenaria silvestris KROK057-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.44
    ## 1 GACATTGTATTTAATTTTTGGTGCTTGGTCAGCTATAGTTGGAACTGCTATAAGAGTTTTAATTCGAATTGAATTGGGTCAGCCGGGGAGATTTATTGGTGATGATCATTTGTATAATGTAATTGTTACGGCTCATGCTTTTGTTATAATTTTTTTTATAGTAATACCAATTTTAATTGGTGGGTTTGGAAATTGATTAGTGCCTTTAATATTAGGGGCGCCTGATATGGCTTTTCCTCGGATAAATAATTTAAGTTTTTGATTATTACCTCCTTCTTTATTTATATTATTTATTTCTTCTATAGTAGATATGGGAGTAGGAGCAGGATGGACTATTTATCCTCCTTTAGCATCTTCTCTTGGTCACATAGGAAGATCTATGGATTTTGCTATTTTTTCTTTACATTTGGCTGGGGCTTCTTCAATTATAGGGGCTATTAATTTTATTTCTACTATTTTAAATATACGTTCAATTGGGATAAAGATAGAGAGGGTCCCGTTGTTTGTTTGGTCAGTATTAATCACTGCTATTTTATTGTTATTATCTTTACCTGTATTAGCAGGTGCTATTACTATATTGTTAACTGATCGAAATTTTAATACTTCATTTTTTGACCCTGCAGGGGGAGGGGATCCAATTTTATTTCAACATTTGTTT
    ##        id.45            name.45    gene.45
    ## 1 KROK058-19 Amaurobius obustus KROK058-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    sequence.45
    ## 1 AAGATATTGGAACATTATATTTAATTTTTGGAGCTTGAGCATCTATAGTTGGAATAGCTATAAGAGTTTTAATTCGAATTGAATTAGGACAATCAGGAAGTTTATTTGGAGATGATCATTTATATAATGTAATTGTAACAGCTCATGCTTTTGTAATAATTTTTTTTATAGTTATACCAATTATAATTGGGGGATTTGGAAATTGAATAGTTCCTTTAATATTAGGAGCTCCTGATATAGCTTTCCCTCGTATAAATAATTTAAGTTTTTGATTATTACCTCCTTCTTTATTATTATTAATTATTTCTTCTATAGTAGAAATAGGAGTAGGAGCAGGTTGGACTATTTATCCTCCATTAGCTTCTATTATAGGACATTCCGGAGGTGCTGTAGATTTTGCTATTTTTTCTTTACATTTAGCTGGTGCTTCATCAATTATAGGGGCTATTAATTTTATTTCTACTATTATTAATATACGATTATTAGGAATAACTATAGAGAAAGTTCCTTTATTTGTTTGGTCAATTTTTATTACTGTAATTTTATTGTTATTATCTTTACCTGTTTTAGCGGGTGCTATTACTATATTGTTAACTGATCGAAATTTTAATACTTCTTTTTTTGATCCTGCTGGAGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##        id.46         name.46    gene.46
    ## 1 KROK059-19 Comaroma simoni KROK059-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      sequence.46
    ## 1 AAAAGATATTGGGACGTTATATTTTCTATTTGGGTCTTGAGCAGCGATAGTGGGGACAGGTATGAGAATACTAATTCGTATTGAATTAGGACAGAGGGGGAGTTTGTTAGGGGATGACCAATTATATAATGTGATTGTTACTGCTCATGCTTTTGTGATAATTTTTTTTATGGTTATGCCCATTCTAATTGGGGGGTTTGGGAATTGATTGGTGCCGTTAATATTGGGGGCCCCTGATATGGCTTTTCCTCGTATGAATAATTTGAGGTTTTGGTTGCTCCCCCCCTCTTTGGTTATGTTGTTTATTTCTTCTATGGTTGAGATGGGAGTAGGGGCCGGGTGGACTATTTATCCCCCTTTGGCCTCCTTGGAGGGGCATTCGGGGAGAGCTGTGGATTTTGCTATTTTTTCTTTGCATTTAGCGGGGGCTTCTTCAATTATGGGGGCTATTAATTTTATTACTACTATTTTTAATATGCGTAGGGCAGGGATAAGGTTAGAGAAGGTACCTTTGTTTGTATGGTCGGTTTTAATTACAGCTGTTTTATTGTTGTTGTCTCTGCCCGTTCTAGCGGGGGCTATTACAATGCTGTTGACTGATCGAAACTTTAATACGTCATTTTTTGACCCTTCAGGGGGGGGGGACCCAATTTTATTTCAGCACTTGTTT
    ##        id.47             name.47    gene.47
    ## 1 KROK060-19 Clubiona terrestris KROK060-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.47
    ## 1 AAGTTTATATTTAATTTTTGGTACTTGGTCTGCTATGGTTGGAACAGCTATAAGAGTTTTAATTCGAATGGAATTAGGACAATCTGGTATATTTTTAGGAGATGATCATCTATATAATGTAGTAGTTACGGCTCATGCTTTTGTTATAATTTTTTTTATGGTTATACCAATTATAATTGGTGGATTTGGAAATTGAATAGTTCCAATGATATTAGGGGTAGCTGATATAGCTTTTCCTCGAATAAATAATTTAAGTTTTTGACTATTACCTCCTTCTTTATTGTTATTATTTATTTCGTCTATGGTTGAAATAGGAGTTGGTGCGGGCTGAACAGTATATCCTCCTTTAGCCTCTACTGTGGGACATATGGGGAGAGCTATGGATTTTGCTATTTTTTCGTTACATTTAGCTGGTGCTTCTTCTATTATAGGTGCAGTAAATTTTATTACTACAATTATTAATATACGATCTGTAGGAATAAGAATGGAAAAAATTCCTTTATTTGTTTGATCTGTGTTGATTACAGCAGTTCTTTTATTGTTATCATTACCTGTATTAGCAGGTGCTATTACTATATTATTAACAGATCGAAATTTTAATACTTCTTTCTTTGATCCTGCTGGAGGAGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.48             name.48    gene.48
    ## 1 KROK061-19 Dasumia canestrinii KROK061-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.48
    ## 1 AACTTTATATTTATTGTTTGGAGCTTGATCGGCTATAGCCGGAACTGCAATGAGAGTGCTTATTCGGGTTGAGTTGGGTCAGTTGGGGAGATTGTTGGGTGATGATCATTTGTATAATGTTGTGGTTACAGCACATGCATTAGTGATGATTTTTTTTATAGTGATACCTATTATAATTGGGGGTTTTGGGAATTGGTTGGTTCCTTTGATGCTGGGCGCGCCGGATATGGCGTTTCCTCGAATAAATAATTTAAGTTTTTGGTTGTTGCCCCCTTCGTTGATTTTGTTGATTTTATCTTCTATGGDGGAAACAGGGGTGGGGGCCGGATGGACAATTTATCCCCCATTATCTGCTTCTTTGGGGCATGGGGGTGTATCAGTGGATTTAGCGATTTTTTCTTTACATTTGGCGGGAGCGTCTTCTATTATAGGGGCTATTAATTTTATTTCTACGATTATTAATATGCGTATATACGGTATAAGAATAGATAGGGTTCCTTTGTTTGTGTGATCTGTTTTGGTTACAGCAATTCTTTTGCTTTTGTCGTTGCCGGTTTTAGCGGGCGCTATTACTATGTTGTTGACGGACCGAAATTTTAATACTTCTTTTTTTGATCCCSCCGGAGGAGGAGATCCTATTTTGTTTCAACATTTGTTT
    ##        id.49           name.49    gene.49
    ## 1 KROK064-19 Dysdera adriatica KROK064-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.49
    ## 1 TACTTTATATTTGTTGTTTGGTGCTTGATCTGCTATAGTGGGGACAGCTATGAGTGTTTTGATTCGGGCTGAATTAGGGCAGGTGGGTGGTTTATTGGGAGATGATCATTTGTTCAATGTTGTTGTAACCGCTCATGCGTTGGTTATGATTTTTTTTATGGTAATGCCTATTATAATTGGGGGGTTTGGAAATTGGTTGGTTCCGTTAATGATTGGGGCCCCCGATATAGCTTTTCCACGTATAAATAATTTAAGCTTTTGACTTCTACCCCCATCGTTAGTGTTATTGGTAATTTCTTCTATAGTTGAAATAGGGGTAGGGGCGGGTTGAACTATTTATCCACCTCTTTCTGGGAGAGTAGGGCATTTTGGTGTATCTGTAGATTTGGCTATTTTTAGTCTTCATTTAGCGGGAGCGTCTTCTATTATGGGGGCTATTAATTTTATTTCGACGATTTTTAATATGCGATCTGTTGGTATAACTATAGAGAGGGTACCTTTGTTTGTGTGGTCTGTGTTGGTTACTGCTATTTTGTTGCTTTTATCTCTTCCTGTTTTAGCAGGGGCTATTACTATATTATTGACGGATCGAAATTTTAATACATCGTTTTTTGACCCCGCGGGGGGCGGGGATCCAATTTTGTTTCAGCATTTATTT
    ##        id.50        name.50    gene.50
    ## 1 KROK065-19 Dysdera ninnii KROK065-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.50
    ## 1 AACGTTATATTTGTTGTTTGGTGCTTGGTCAGCTATGGTAGGGACTGCTATAAGAGTATTAATTCGAACTGAATTAGGGCAAGTGGGGAGTTTGTTGGGGGATGACCATTTATTTAATGTGATTGTGACGGCTCATGCTCTGGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGAGGGTTTGGGAATTGGCTGGTTCCTTTGATGTTAGGTGCTCCTGATATGGCTTTTCCTCGTATGAATAATTTGAGTTTTTGGTTATTACCACCTTCTTTAATTCTTTTGGTTCTGTCCTCTATGGTTGAGATGGGGGTTGGGGCGGGTTGAACAATTTATCCACCTTTGTCTGGTGGAGTGGGTCATAGAGGGATTTCGGTAGATTTAGCAATTTTTAGATTACATTTGGCCGGGGCGTCATCTATTATAGGGGCTATTAATTTTATTTCTACTATTTTTAATATACGGTCATATGGTATAGGTATAGAGAGGGTTCCTTTATTTGTGTGATCTGTATTAGTTACGGCAGTATTATTATTGTTATCATTGCCGGTATTAGCGGGAGCTATTACTATATTGTTAACAGATCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##        id.51        name.51    gene.51
    ## 1 KROK066-19 Dysdera ninnii KROK066-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.51
    ## 1 AACGTTATATTTGTTGTTTGGTGCTTGGTCAGCTATGGTAGGGACTGCTATAAGAGTATTAATTCGAACTGAATTAGGGCAAGTGGGGAGTTTGTTGGGGGATGACCATTTATTTAATGTGATTGTGACGGCTCATGCTCTGGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGAGGGTTTGGGAATTGGCTGGTTCCTTTGATGTTAGGTGCTCCTGATATGGCTTTTCCTCGTATGAATAATTTGAGTTTTTGGTTATTACCACCTTCTTTAATTCTTTTGGTTCTGTCCTCTATGGTTGAGATGGGGGTTGGGGCGGGTTGAACAATTTATCCACCTTTGTCTGGTGGAGTGGGTCATAGAGGGATTTCGGTAGATTTAGCAATTTTTAGATTACATTTGGCCGGGGCGTCATCTATTATAGGGGCTATTAATTTTATTTCTACTATTTTTAATATACGGTCATATGGTATAGGTATAGAGAGGGTTCCTTTATTTGTGTGATCTGTATTAGTTACGGCAGTATTATTATTGTTATCATTGCCGGTATTAGCGGGAGCTATTACTATATTGTTAACAGATCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##        id.52                 name.52    gene.52
    ## 1 KROK067-19 Haplodrassus silvestris KROK067-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.52
    ## 1 AACTTTATATTTATTATTTGGATCTTGAGCTGCTATAGTAGGAACAGCAATAAGAGTATTAATTCGAATAGAATTAGGTCAATCTGGGAGATTGATGGGTGATGATCATTTATATAATGTAATTGTAACTGCTCATGCATTTGTCATAATTTTTTTTATAGTAATACCTATTTTAATTGGAGGTTTTGGTAATTGATTAATTCCTTTAATGTTAGGAGCTCCTGATATAGCTTTTCCTCGAATAAATAATTTAAGATTTTGATTATTACCACCTTCTTTAATTATATTATTTGCATCATCTATAGTAGAAATAGGAGTTGGTGCGGGTTGAACTGTTTATCCACCATTAGCTTCTTCTGTTGGTCATATGGGAAGAGCAATAGATTTTGCTATTTTTTCTTTACATTTAGCTGGAGCATCATCTATTATAGGTGCTATTAATTTTATTTCTACTGTAATTAATATACGATCTATTGGAATAAGTATAGAAAAAATTCCTTTGTTTGTTTGATCTGTTTTTATTACAGCAGTATTATTATTATTATCTTTACCTGTATTAGCAGGTGCTATTACTATATTATTAACAGATCGTAATTTTAATACTTCTTTTTTTGATCCAGCTGGGGGAGGAGATCCTATTTTATTTCAACATTTGTTT
    ##        id.53        name.53    gene.53
    ## 1 KROK068-19 Hahnia pusilla KROK068-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.53
    ## 1 GTCGTTGTATTTGATTTTTGGAGCATGGTCGGCTATAGTAGGGACTGCAATAAGAGTTCTTATTCGAATTGAGTTGGGACAACCTGGTAGATTTATAGGAGATGACCATTTATATAATGTTATTGTTACAGCTCATGCATTTGTTATAATTTTTTTTATAGTAATACCAATTATGATTGGTGGTTTTGGTAATTGATTAGTTCCTTTAATATTAGGGGCTCCTGATATAGCTTTTCCTCGAATAAATAATTTAAGATTTTGATTATTACCTTCATCTTTAATTTTATTATTTGTATCATCTATAGTGGAGATAGGGGTTGGTGCTGGTTGGACTATTTATCCTCCTTTGGCTTCTTTGATGGGTCATGCTGGGAGTTCTGTGGATTTTGCTATTTTTTCTTTACATTTAGCTGGAGCTTCTTCAATTATGGGGGCTATTAATTTTATTACTACTATTATTAATATACGTTCTTATGGAATAACAATAGAAAAAGTTCCTTTGTTTGTATGATCGGTTTTTATTACTGCTATTTTATTATTGCTTTCTTTACCAGTATTAGCTGGGGCTATTACTATGCTTTTAACGGATCGAAATTTTAATACTTCATTTTTTGATCCTGCTGGGGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##        id.54          name.54    gene.54
    ## 1 KROK069-19 Robertus lividus KROK069-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.54
    ## 1 AACTTTATATTTGATTTTTGGGGTGTGATCAGCTATAGTTGGTACAGCTATGAGTGTCCTAATTCGGGTAGAATTAGGACAATCTGGAAGATTGTTAGGGGATGATCAATTATATAATGTAATTGTAACTGCTCATGCTTTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGGGGGTTTGGAAATTGATTAGTTCCTTTAATGTTAGGGGCTCCAGATATAGCTTTCCCTCGAATAAATAATTTAAGATTTTGATTATTACCTCCTTCTTTATTTCTATTATTTATTTCTTCTATAATTGAAATAGGAGTAGGTGCTGGGTGAACAATTTATCCTCCTTTATCTTCTTTAGAGGGTCATTCAGGAAGATCAGTTGATTTTGCGATTTTTTCTCTTCATCTTGCAGGTGCTTCTTCTATTATAGGGGCTGTAAATTTTATTTCTACTATTTTAAATATACGTGTGTATGGAATATCTATAGAAAAAGTTACTTTATTTGTATGATCAGTTTTAATTACTGCTATTCTTTTATTATTATCGTTACCTGTTTTAGCAGGAGCTATTACTATGTTATTAACTGATCGAAATTTTAATACTTCTTTTTTTGATCCTTCTGGAGGAGGAGATCCAATTTTATTTCAACATTTATTT
    ##        id.55            name.55    gene.55
    ## 1 KROK070-19 Ceratinella brevis KROK070-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.55
    ## 1 GAGTTTATATTTTATTTTTGGAGCTTGAGCTGCTATAGTAGGGACAGCAATAAGAGTATTGATTCGTGTTGAGTTAGGACAAATTGGAAGATTATTAGGGGATGATCAGTTGTATAATGTTATTGTTACGGCTCATGCTTTTGTTATAATTTTTTTTATGGTGATACCTATTTTAATTGGTGGTTTTGGGAATTGGTTGGTTCCTTTAATGTTGGGGGCACCTGATATAGCTTTTCCTCGAATAAATAATTTAAGATTTTGATTATTACCTCCTTCTTTATTATTATTATTTATTTCTAGAATAGATGAGATGGGGGTAGGAGCGGGGTGAACTATTTATCCTCCTCTTGCTTCTTTAGAAGGGCATTCTGGAAGATCAGTAGATTTTGCTATTTTTTCTTTACATTTAGCAGGAGCGTCATCAATTATAGGTGCTATTAATTTTATTTCTACTATTTTAAACATACGGGGGTATGGGATAACAATAGAAAAAGTTCCTTTATTTGTTTGATCTGTTTTAATTACGGCTGTTTTATTACTTTTGTCTTTACCAGTATTAGCTGGGGCGATTACTATGCTTTTAACAGATCGAAATTTTAATACATCATTTTTTGATCCAGCGGGTGGAGGGGATCCGGTTTTATTTCAACATTTATTT
    ##        id.56               name.56    gene.56
    ## 1 KROK072-19 Diplocephalus picinus KROK072-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.56
    ## 1 AAGTTTATATTTTATTTTTGGGGCTTGGGCTGCTATAGTTGGAACAGCGATAAGAGTTTTAATTCGGATTGAGTTAGGTCAAACTGGAAGATTATTGGGGGATGATCAATTATATAATGTTATTGTTACAGCTCATGCATTTGTTATAATTTTTTTTATAGTAATACCTATTTTGATTGGGGGGTTTGGGAATTGGTTAGTTCCTCTTATGTTAGGGGCACCGGATATAGCTTTTCCTCGTATAAACAATTTAAGTTTTTGATTATTACCTCCTTCCTTATTTTTGTTATTTATTTCTAGAATAGATGAGATAGGAGTTGGGGCAGGATGGACTGTGTATCCGCCGTTAGCATCTTTAGATGGGCATCCGGGTAGATCAGTTGATTTTGCAATTTTTTCTTTACATCTAGCTGGAGCATCTTCAATTATAGGGGCTATTAATTTTATTTCTACTATTTTAAACATACGGGGGTATGGGATATCTATAGATAGGGTTCCTTTATTTGTTTGGTCTGTCTTAATTACTGCTATTTTATTACTTTTGTCTTTACCAGTATTAGCGGGGGCGATTACGATACTTTTAACAGATCGTAATTTTAATACTTCATTTTTTGACCCTTCWGGAGGAGGGGATCCTGTTCTATTTCAACAYTTATTT
    ##        id.57            name.57    gene.57
    ## 1 KROK073-19 Erigone autumnalis KROK073-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  sequence.57
    ## 1 GATATTGGTAGTTTATATTTTATTTTTGGTGCATGATCTGCTATAGTAGGGACAGCGATAAGAGTTTTAATTCGAATTGAATTAGGTCAAACTGGTAGTTTATTAGGTGATGACCAATTATATAATGTTATTGTTACTGCTCATGCTTTTATTATAATTTTTTTTATAGTAATACCTATTTTAATTGGAGGGTTTGGAAATTGGTTAGTACCATTAATGTTGGGTGCTCCTGATATAGCTTTTCCTCGAATAAATAATTTAAGTTTTTGGTTATTACCCCCTTCTTTATTATTATTATTTATTTCTAGAATAGACGAAATAGGAGTAGGAGCAGGTTGAACTATTTACCCTCCGTTGGCTTCATTAGAAGGGCATTCTGGTAGATCTGTTGATTTTGCTATTTTTTCTCTTCATTTAGCTGGAGCTTCTTCTATTATAGGGGCTATTAATTTTATTTCTACAATTTTTAATATACGAGGATATGGCATAACTATAGAGAAGATTCCTTTATTTGTTTGGTCTGTATTAATCACAGCTGTTTTGTTATTATTATCTCTTCCCGTTTTAGCAGGAGCTATTACTATGTTGTTAACAGATCGTAATTTTAATACCTCTTTTTTTGATCCTGCGGGAGGGGGTGATCCAGTTTTATTTCAACATTTATTC
    ##        id.58         name.58    gene.58
    ## 1 KROK074-19 Maso sundevalli KROK074-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.58
    ## 1 AAGTTTATATTTTGTGTTTGGTGCGTGAGCTGCCATAGTGGGTACGGCGATGAGAGTATTAATTCGAATTGAGTTGGGACAGACTGGTAGATTATTAGGGGATGACCAGTTGTATAACGTTATTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATGGTTATACCTATTTTAATTGGGGGGTTTGGGAATTGGTTAGTACCGTTGATGTTGGGAGCTCCAGATATAGCTTTTCCCCGCATAAACAACTTGAGATTTTGATTGTTGCCCCCTTCTTTATTATTATTATTTATTTCTAGAATAGATGAGATAGGGGTGGGGGCAGGTTGAACTGTTTATCCACCGCTTGCTTCTTTAGAGGGGCATTCTGGGAGTTCAGTAGATTTTGCTATTTTTTCTCTTCATTTAGCTGGGGCATCGTCTATTATGGGGGCTATTAATTTTATTTCTACTATTATTAATATGCGGGGTTATGGTATAACTATAGAAAAGGTCCCCTTATTTGTATGGTCTGTATTAATTACAGCAGTATTATTGTTGTTATCTTTGCCAGTTTTAGCAGGAGCGATTACTATGCTTTTAACAGATCGAAACTTTAATACTTCTTTTTTTGACCCTGCGGGAGGAGGGGATCCTGTTTTGTTTCAACWSTTATTT
    ##        id.59              name.59    gene.59
    ## 1 KROK075-19 Mermessus trilobatus KROK075-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.59
    ## 1 AAGTTTATATTTTGTTTTTGGGGCTTGATCTGCTATAGTAGGTACAGCGATAAGAGTATTAATTCGAATTGAATTAGGACAAGTTGGTAGACTTTTAGGAGATGATCAATTATATAATGTTATTGTTACAGCTCATGCTTTTATTATAATTTTTTTTATAGTTATGCCTATTTTAATTGGAGGATTTGGTAATTGATTAGTTCCTTTAATATTAGGTGCGCCTGATATAGCTTTTCCTCGAATAAATAATTTAAGATTTTGATTATTGCCCCCTTCTTTATTATTGTTATTTATTTCAAGAATAGATGAAATGGGTGTTGGGGCTGGATGAACTGTTTATCCCCCTTTAGCTTCTTTAGAAGGTCATTCTGGTAGATCAGTGGATTTTGCAATTTTTTCTTTACATTTAGCTGGGGCTTCTTCAATTATAGGAGCTATTAATTTTATTTCTACAATTTTAAATATACGAGGGTATGGTATAACAATAGAAAAAGTACCTTTATTTGTATGATCTGTATTAATTACTGCTGTTTTGTTATTATTATCTTTACCTGTTTTAGCAGGTGCTATTACTATACTTTTAACTGATCGAAATTTTAATACTTCTTTTTTTGATCCTTCTGGAGGGGGAGATCCTGTATTGTTTCAACATTTGTTT
    ##        id.60          name.60    gene.60
    ## 1 KROK077-19 Microneta viaria KROK077-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.60
    ## 1 AAGTTTATATTTTGTATTTGGGGCTTGGTCTGCGATAGTTGGAACGGCAATAAGAGTATTAATTCGAGTTGAGTTAGGTCAAGTTGGTAGTTTGTTAGGAGATGATCAATTATATAATGTAATTGTTACGGCTCACGCTTTTGTTATAATTTTTTTTATAGTGATACCAATTTTAATTGGGGGATTTGGTAATTGGTTAGTTCCTTTAATATTAGGGGCTCCAGATATAGCTTTCCCTCGGATAAATAATTTGAGATTTTGACTTTTACCCCCCTCTTTATTTTTATTGTTTATTTCAAGTATAGATGAGATAGGGGTAGGGGCAGGTTGGACAGTTTATCCTCCTCTTTCTTCATTAGATGGGCATTCGGGGAGTTCAGTGGATTTTGCTATTTTTTCTTTACATTTAGCTGGGGCATCTTCTATTATGGGGGCTATTAATTTTATTTCTACTATTTTAAATATACGAGGGTATGGGATAAGCATAGATAGGGTTCCTTTATTTGTTTGGTCTGTATTAATTACGGCTGTTCTTTTATTGTTATCTTTGCCAGTGTTAGCAGGGGCGATTACGATGTTGTTAACAGATCGAAATTTCAATACATCWTTTTTTGATCCTGCTGGAGGGGGGGATCCTGTTTTGTTTCAACWCTTATTT
    ##        id.61               name.61    gene.61
    ## 1 KROK079-19 Tenuiphantes flavipes KROK079-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.61
    ## 1 GACTTTATATTTTATTTTTGGAGCGTGAGCTGCTATAGTAGGAACTGCTATAAGAGTATTAATTCGGATTGAATTGGGGCAAACTGGAAGAATACTGGGGGATGACCAGTTGTATAATGTTATTGTAACTGCACATGCTTTTGTAATAATTTTTTTTATAGTTATACCTATTTTGATTGGAGGATTCGGTAATTGATTAGTTCCTTTAATACTAGGGGCTCCTGATATAGCTTTTCCTCGTATAAATAATTTAAGATTTTGACTTTTACCCCCTTCTCTATTATTATTATTTATTTCAAGTATAGTTGAGATGGGAGTTGGGGCAGGGTGGACAGTGTATCCGCCTCTTGCCTCTTTAGAGGGACATGCAGGAAGTTCTGTTGATTTTGCTATTTTTTCTTTACATTTAGCTGGGGCTTCTTCTATTATAGGGGCAATTAATTTTATTTCCACTATTATTAATATGCGTGGATACGGTGTATCAATGGAAAAGGTTCCGTTATTTGTATGATCTGTTTTAATTACTGCGGTTCTTTTGTTGTTATCATTACCTGTTTTAGCTGGTGCTATTACTATACTTTTAACTGATCGAAATTTTAATACTTCGTTTTTTGATCCTGCAGGAGGAGGAGATCCTGTGTTATTTCAACATTTATTT
    ##        id.62               name.62    gene.62
    ## 1 KROK080-19 Centrophantes roeweri KROK080-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.62
    ## 1 TAGTTTATATTTTATTTTTGGGGCTTGATCTGCTATGGTTGGGACTGCTATAAGAGTTTTAATTCGAATTGAGCTTGGGCAAATTGGGAGAATGTTGGGAGATGACCAATTGTATAATGTTATTGTGACTGCTCATGCGTTTGTTATAATTTTTTTTATAGTTATGCCAATTTTAATTGGGGGGTTCGGGAATTGGTTAGTTCCTTTAATATTGGGGGCTCCAGATATGGCTTTTCCTCGTATAAATAATTTGAGTTTTTGGTTACTACCTCCTTCTTTGTTTTTGTTGTTTATTTCGTCAATAGTGGAAATAGGAGTAGGAGCTGGTTGGACAATTTATCCACCTTTAGCTTCTTTAGAAGGGCATTCTGGGAGATCAGTTGATTTTGCTATTTTTTCTCTTCATTTAGCTGGGGTTTCTTCTATTATAGGGGCTATTAATTTTATTTCAACTATTATCAATATACGCACTTATGGAATAACGATAGAAAAGGTATCTTTATTTGTATGGTCGGTTTTAATTACTGCTGTACTTTTATTATTATCTTTACCAGTTTTAGCTGGGGCTATTACAATATTATTAACTGATCGAAATTTTAATACGTCTTTTTTTGACCCAGCAGGAGGAGGGGATCCTGTGTTATTTCAACATTTATTT
    ##        id.63                  name.63    gene.63
    ## 1 KROK082-19 Tenuiphantes tenebricola KROK082-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               sequence.63
    ## 1 AAGATATTGGAACTTTATATTTTATTTTTGGAGCGTGAGCTGCTATAGTAGGAACTGCTATAAGAGTATTAATTCGAATTGAGTTGGGACAAACTGGAAGTATATTAGGGGATGATCAGTTGTATAATGTTATTGTTACTGCTCATGCTTTTGTTATAATTTTTTTTATAGTTATACCTATTTTAATTGGGGGATTTGGAAATTGGTTAGTACCTTTAATACTTGGTGCTCCTGACATGGCTTTTCCTCGAATAAATAATTTAAGATTCTGGCTTTTACCTCCTTCTTTATTATTATTATTTATTTCAAGTATAGTTGAAATAGGAGTTGGGGCAGGATGAACAGTGTATCCTCCACTTGCTTCTTTAGAAGGACATGCGGGAAGCTCTGTTGATTTTGCTATTTTTTCTCTTCATTTAGCTGGGGCTTCTTCTATTATAGGAGCAATTAATTTTATTTCTACTATTTTTAATATACGTGGATATGGTGTGTCAATGGAAAAGGTTCCATTGTTTGTATGATCTGTTTTGATTACTGCTGTTCTTTTATTGTTGTCATTACCTGTTTTAGCAGGTGCTATTACTATACTTTTAACTGACCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCCGTGTTATTTCAACACTTATTTTGATTTTTTGT
    ##        id.64              name.64    gene.64
    ## 1 KROK084-19 Walckenaeria mitrata KROK084-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.64
    ## 1 AAGTTTATATTTTATTTTTGGAGCTTGGGCTGCTATAGTAGGTACAGCAATAAGAGTATTAATTCGAATTGAATTAGGACAGATTGGGAGTTTATTGGGAGATGATCAATTATATAATGTTGTTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATAGTAATGCCTATTTTGATTGGGGGATTTGGAAATTGGTTAGTCCCTTTAATGTTAGGGGCACCTGATATAGCTTTTCCTCGTATAAATAATTTAAGATTTTGGTTACTTCCACCTTCTTTATTATTATTGTTTATTTCTAGTATAGATGAAATAGGGGTCGGGGCAGGATGAACTATCTATCCACCCCTTGCTTCTTTGGAGGGGCACTCTGGAAGATCAGTAGATTTTGCTATTTTTTCTTTACATTTAGCTGGGGCGTCATCAATTATAGGGGCTATTAATTTTATTTCAACAATTTTAAATATGCGCGGGTATGGGATAACTATAGAGAGGGTCCCTTTATTCGTTTGATCTGTTCTAATTACAGCTGTATTATTATTATTATCTTTACCTGTTTTAGCAGGAGCTATTACTATATTATTGACAGATCGAAATTTCAATACTTCATTTTTTGATCCTTCTGGGGGAGGGGATCCAGTTTTATTTCAACATTTGTTT
    ##        id.65         name.65    gene.65
    ## 1 KROK085-19 Pardosa alacris KROK085-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.65
    ## 1 TACTTTATATCTAATATTTGGAGTTTGATCGGCTATAATAGGGACTGCTATAAGAGTATTAATTCGAATAGAATTAGGAAATCCTGGGAGATTATTAGGTGATGATCATTTATATAATGTTATAGTTACTGCTCATGCTTTTGTAATAATTTTTTTTATAGTGATACCAATTCTTATTGGAGGTTTTGGGAATTGATTAATTCCTTTAATATTAGGAGCTCCAGATATATCATTTCCTCGAATAAATAATCTTTCTTTTTGATTATTACCTCCTTCTTTATTTTTATTATCTATATCTTCTATAGTGGAGATAGGAGTTGGTGCTGGATGAACTGTTTATCCTCCTTTAGCATCTACGGTTGGTCATATAGGAAGTTCAATAGATTTTGCTATTTTTTCTCTTCATTTGGCTGGAGCTTCTTCTATTATAGGGGCTGTAAATTTTATTTCTACTATTATAAATATACGGATAATAGGAATATCTTTAGAAAAAGTTCCTCTTTTTGTTTGATCAGTTTTAATTACAGCAGTATTATTATTACTTTCTTTACCTGTTTTAGCAGGTGCTATTACTATATTATTAACAGATCGAAATTTTAATACTTCTTTTTTTGATCCTGCTGGTGGAGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.66            name.66    gene.66
    ## 1 KROK086-19 Trochosa terricola KROK086-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    sequence.66
    ## 1 AAGATATTGGTACTTTGTATTTAATGTTTGGTGCATGATCTGCTATAGTGGGAACTGCTATAAGAGTGTTGATTCGTTTAGAATTAGGGAATTCTGGAAGTTTATTAGGGGATGATCATTTATATAATGTTATGGTTACAGCTCATGCTTTTGTGATGATTTTTTTTATAGTAATACCAATTCTTATTGGAGGTTTTGGAAATTGATTAATTCCTTTAATATTAGGTGCTCCTGATATATCGTTTCCTCGAATAAATAATCTTTCTTTTTGGTTATTACCTCCTTCTTTATTTTTATTATCTATGTCTTCTATGGTGGAAATAGGAGTGGGGGCTGGTTGAACAGTTTATCCTCCTTTAGCATCTAGAGTGGGTCATATAGGGAGTTCTATAGATTTTGCTATTTTTTCTCTTCATTTAGCTGGTGCTTCTTCTATTATAGGAGCAGTAAATTTTATTTCTACTATTATTAATATACGAATATTAGGTATATCTATGGATAAAGTACCTTTATTTGTTTGATCAGTTTTGATTACGGCTGTTTTATTATTATTATCTTTACCTGTTTTAGCGGGTGCTATTACTATACTATTAACTGATCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##        id.67        name.67    gene.67
    ## 1 KROK087-19 Zora nemoralis KROK087-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     sequence.67
    ## 1 WAAGATATTGGTACTTTATATTTAATTTTTGGAGTTTGATCTGCTATGGTAGGAACAGCAATAAGAATGTTAATTCGATTGGAATTGGGACAAGTTGGAAGATTTATAGGCGATGATCATTTATATAATGTAATTGTTACTGCTCATGCTTTTGTTATAATTTTTTTTATAGTTATGCCAATTATAATTGGAGGATTTGGAAATTGATTAATTCCTTTAATGTTAGGGGCTCCTGATATAGCTTTTCCTCGAATAAATAACTTAAGTTTTTGATTATTACCACCTTCTTTGTTATTATTAATAATTTCTTCTATAGTTGAAATAGGAGTTGGTGCTGGTTGAACGGTTTATCCTCCGTTAGCTTCTATTATAGGTCATTCTGGTAGTTCTGTGGATTTTGCTATTTTTTCTTTACATCTAGCTGGTGCATCTTCTATTATAGGTTCTATTAATTTTATTACTACTGTAATTAATATACGATCTATTGGTATAACTATAGAAAAGGTTCCTTTATTTGTGTGATCAGTTGTAATTACTGCTGTTCTTTTATTATTATCATTACCAGTATTAGCTGGTGCAATTACTATATTATTGACTGATCGTAATTTTAATACTTCTTTTTTTGACCCTGCTGGGGGGGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.68              name.68    gene.68
    ## 1 KROK088-19 Segestria senoculata KROK088-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.68
    ## 1 GACATTATATTTAATTTTTGGGGCTTGAGCTGCTATAGCGGGGACTGCTATAAGTGTGTTGATTCGGGTTGAATTAGGGCAGGTTGGGAGTTTTTTGGGGGATGATCATCTATATAACGTGGTAGTAACTGCTCACGCGTTGGTAATGATTTTTTTTATAGTTATGCCGATTCTTATTGGGGGGTTTGGGAATTGGTTGGTTCCTTTGATGTTAGGTGCGCCGGATATGGCTTTTCCTCGTATGAATAACTTGAGATTTTGGTTACTTCCCCCCTCTTTAATATTGTTATTATCATCTTCATTGATGGAGAGAGGGGTGGGGGCGGGATGGACAATTTATCCTCCTTTATCTGCCAGTATGGGGCATTCTGGTTATGCTATGGATTTTGCTATTTTTTCGTTGCATTTGGCTGGGGCGTCTTCAATTATAGGAGCTATTAATTTTATTTCTACTGTATTGAATATGCGCTCATTTGGAATGAGAATAGAGAAAGTGCCTTTGTTTGTTTGGTCTGTGTTTATTACTGCTATTTTGTTACTATTGTCGTTGCCTGTGTTAGCGGGAGCAATTACTATATTATTGACTGATCGAAATTTTAATACTTCTTTTTTTGATCCGGCGGGGGGAGGAGATCCTATTTTGTTTCAGCATCTTTTT
    ##        id.69          name.69    gene.69
    ## 1 KROK089-19 Robertus lividus KROK089-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      sequence.69
    ## 1 TAAAGATATTGGAACTTTATATTTGATTTTTGGGGTGTGATCAGCTATAGTTGGTACAGCTATGAGTGTCCTAATTCGGGTAGAATTAGGACAATCTGGAAGATTGTTAGGGGATGATCAATTATATAATGTAATTGTAACTGCTCATGCTTTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGGGGGTTTGGAAATTGATTAGTTCCTTTAATGTTAGGGGCTCCAGATATAGCTTTCCCTCGAATAAATAATTTAAGATTTTGATTATTACCTCCTTCTTTATTTCTATTATTTATTTCTTCTATAATTGAAATAGGAGTAGGTGCTGGGTGAACAATTTATCCTCCTTTATCTTCTTTAGAGGGTCATTCAGGAAGATCAGTTGATTTTGCGATTTTTTCTCTTCATCTTGCAGGTGCTTCTTCTATTATAGGGGCTGTAAATTTTATTTCTACTATTTTAAATATACGTGTGTATGGAATATCTATAGAAAAAGTTACTTTATTTGTATGATCAGTTTTAATTACTGCTATTCTTTTATTATTATCGTTACCTGTTTTAGCAGGAGCTATTACTATGTTATTAACTGATCGAAATTTTAATACTTCTTTTTTTGATCCTTCTGGAGGAGGAGATCCAATTTTATTTCAACATTTATTT
    ##        id.70                 name.70    gene.70
    ## 1 KROK090-20 Clinopodes carinthiacus KROK090-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.70
    ## 1 AACCATGTATCTAATTTTTGGTGCTTGGGCGGCAATAGCTGGAACAGCTTTAAGAATTATTGTCCGACTAGAGCTTAGTCAACCTGGGGCCCTAATCGGGGATGACCAAATCTATAATGTAATTGTAACAGCCCATGCCTTTGTAATGATTTTCTTTATAGTTATACCAGTAATAATAGGGGGCTTTGGAAATTGAATGCTCCCGCTCATGCTAGGCGCCCCAGATATAGCCTTTCCACGAATAAATAATCTTAGCTTCTGACTTCTGCCCCCCTCTTTAACCCTTCTTACAACATCAATAATAGTTGAAAGAGGGGCAGGCACCGGCTGAACCGTGTACCCCCCATTAGCTGCAAATATTTCCCACTCAGGGCCCTCTGTTGATATAACAATTTTTTCTCTACACCTAGCTGGTGTCTCCTCTATTCTAGCTTCAATTAATTTTATTACTACAATTATTAATATACGATCTAGTGGCATAGTTCTTGAGCGAATCCCTTTGTTTGTATGAAGAGTAAAAATTACCGCAATCCTACTTTTGCTCTCTCTCCCCGTGTTAGCTGGAGCCATTACAATACTATTAACCGACCGAAACATTAATACAAGTTTCTTCGACCCTGCTGGTGGAGGGGATCCTATCCTATACCAACACCTATTC
    ##        id.71                    name.71    gene.71
    ## 1 KROK091-20 Dicellophilus carniolensis KROK091-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       sequence.71
    ## 1 TCGGGGATGACCAAACTTATAATGTAGTAGTAACAGCTCACGCCTTCGTAATAATTTTTTTCATAGTAATACCTATTATAATAGGAGGATTCGGCAATTGACTTCTACCTCTCATGCTCGGAGCCCCAGATATGGCGTTCCCCCGCCTAAACAACATAAGATTTTGACTCCTCCCCCCATCTCTAACGCTCCTCCTCGCCTCTGCTGCAGTCGAAAGTGGGGCGGGGACCGGCTGAACCGTATATCCCCCCCTCTCGTCAGGACTAGCACACTCCGGCCCATCAGTAGACATAACAATCTTCTCCCTACATCTAGCAGGTGTATCTTCAATCCTCGGGGCCATCAACTTCATCACCACAGTAATTAATATACGCTCCAGAGGAATAGTTATAGAACGAGTCCCTCTCTTCGTCTGGGGAGTAATAATTACCGCCATCCTCCTACTCCTATCCCTCCCCGTCCTTGCAGGCGCAATCACAATGCTACTGACCGACC
    ##        id.72          name.72    gene.72
    ## 1 KROK092-20 Schendyla armata KROK092-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                sequence.72
    ## 1 GGGCCTCAATAGCAGGGACAGCCCTCAGCCTTATCATTCGACTCGAACTAAGCCAGCCAGGGAGTCTCATTGGGGACGACCAAACCTATAACGTTATTGTCACCGCCCATGCCTTTGTAATAATTTTCTTCATAGTAATACCTATCATAATAGGAGGGTTCGGAAACTGACTCCTCCCATTAATACTCGGGGCCCCAGATATGGCCTTCCCCCGGCTAAATAACATAAGTTTTTGACTCCTCCCCCCGTCCCTCACCCTTCTCCTCGCCTCCGCTGCCGTAGAAAGTGGCGCAGGGACGGGCTGAACTGTCTACCCCCCCCTCTCCTCCGGCCTCGCCCACTCAGGCGCATCCGTGGACATAACCATTTTCTCGCTCCACCTAGCAGGCATCTCCTCAATCTTAGGCGCAATCAATTTTATCACCACCGTCATTAATATACGAACAAGAGGCATAGTATTCGAGCGCGTTCCCCTTTTCGTATGAGGCGTTACCATCACCGCGACGCTTCTCCTCCTGGCCCTCCCTGTTCTAGCCGGGGCCATCACGATACTCCTCACAGATCGAAACTTTAACACAAGCTTTTTTGACCCTGCCGGGGGAGGAGACCCAATTCTCTACCAACACCTCTTC
    ##        id.73              name.73    gene.73
    ## 1 KROK095-20 Schendyla tyrolensis KROK095-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        sequence.73
    ## 1 ACTAGAATTGAGCCAGCCAGGGAGTCTCATTGGAGACGACCAAACCTATAATGTCATCGTCACTGCCCACGCTTTTGTAATAATTTTCTTTATAGTAATGCCCATTATAATAGGGGGGTTTGGAAATTGACTCCTCCCCCTAATGCTCGGGGCCCCAGACATGGCCTTCCCCCGTCTTAATAACATAAGCTTTTGACTGCTCCCCCCCTCACTCACCCTTCTTCTCGCCTCCGCTGCAGTAGAAAGAGGGGCAGGCACGGGCTGAACCGTCTACCCCCCTCTCTCCTCCGGACTTGCCCACTCGGGGGCATCCGTAGACATAACCATCTTCTCCCTACATCTAGCCGGTATCTCCTCAATTTTAGGGGCAATCAATTTTATCACCACCGTCATTAACATACGAACAAGAGGAATAGTATTCGAACGAGTCCCCCTCTTCGTCTGAGGAGTTACCATTACAGCCACCCTCCTCCTATTGGCCCTCCCCGTACTAGCCGGAGCCATTACCATGCTCCTCACAGACCGAAACTTTAACACAAGCTTTTTTGACCCAGCAGGCGGAGGAGACCCAATCTTATACCAACATCTCTTC
    ##        id.74             name.74    gene.74
    ## 1 KROK096-20 Strigamia acuminata KROK096-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.74
    ## 1 AACAATATACCTAATCTTCGGAACTTGAGCCGCAATAGCAGGAACAGCCCTAAGCCTAATCATTCGAATAGAATTAAGTCAACCGGGAAGACTAATTGGAGACGACCAAATCTATAACGTAGTAGTAACAGCACATGCCTTCGTAATAATTTTTTTCATAGTAATACCAATCATAATAGGAGGATTCGGTAACTGAATACTCCCACTAATATTAGGAGCCCCAGACATAGCATTTCCCCGAATAAACAACCTAAGATTCTGATTATTACCACCCTCACTTACATTATTAATAGCCTCAATAGCAGTAGAAAGAGGGGCAGGAACAGGATGAACTGTATACCCGCCCCTAGCAACAAACATCTCCCACTCAGGCCCATCTGTTGACATAACTATTTTTTCTCTTCACCTAGCAGGAGTCTCATCAATCCTTGGCTCAATTAATTTCATTACAACTATTATCAACATACGAGCAAGAGGAATAATCATTGAACGAATCCCATTATTCGTATGAAGAGTAAAAATCACAGCTGTTCTACTCCTATTATCTTTACCAGTACTAGCAGGAGCCATCACAATACTTCTTACAGACCGAAACATTAACACAAGCTTCTTTGACCCTGTTGGGGGAGGGGACCCAATTCTTTACCAACACTTATTT
    ##        id.75                 name.75    gene.75
    ## 1 KROK098-20 Clinopodes carinthiacus KROK098-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              sequence.75
    ## 1 AACCATGTATCTAATTTTTGGCGCTTGAGCAGCTATAGCTGGAACAGCTTTAAGAATTATTGTGCGACTAGAGCTCAGCCAACCCGGGGCCCTAATTGGGGATGACCAAATTTATAACGTAATTGTAACAGCCCATGCCTTTGTAATGATTTTCTTCATAGTAATACCAGTAATAATAGGAGGATTCGGAAATTGAATACTCCCCCTTATGTTAGGCGCCCCAGACATGGCCTTCCCCCGAATAAACAATCTCAGCTTCTGACTCCTCCCCCCCTCTTTAACCCTTCTCACAACATCAATAATAGTTGAAAGAGGTGCGGGCACCGGCTGAACCGTATACCCCCCGTTAGCTGCAAACATTTCTCACTCTGGACCCTCTGTTGATATAACAATTTTTTCTCTTCACCTAGCTGGAGTGTCCTCCATTCTAGCCTCAATTAATTTTATTACTACAATCATTAATATACGATCTAGCGGAATGGTTCTTGAACGAATTCCTTTATTTGTGTGGAGAGTAAAAATTACCGCAATTCTACTTTTGCTCTCCCTCCCAGTGTTAGCTGGAGCCATTACAATATTATTAACCGACCGAAACATTAATACAAGCTTCTTCGACCCTGCTGGGGGCGG
    ##        id.76                 name.76    gene.76
    ## 1 KROK100-20 Clinopodes carinthiacus KROK100-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.76
    ## 1 AACCATGTATCTAATTTTTGGTGCTTGGGCGGCAATAGCTGGAACAGCTTTAAGAATTATTGTCCGACTAGAGCTTAGTCAACCTGGGGCCCTAATCGGGGATGACCAAATCTATAATGTAATTGTAACAGCCCATGCCTTTGTAATGATTTTCTTTATAGTTATACCAGTAATAATAGGGGGCTTTGGAAATTGAATGCTCCCGCTCATGCTAGGCGCCCCAGATATAGCCTTTCCACGAATAAATAATCTTAGCTTCTGACTTCTGCCCCCCTCTTTAACCCTTCTTACAACATCAATAATAGTTGAAAGAGGGGCAGGCACCGGCTGAACCGTGTACCCCCCATTAGCTGCAAATATTTCCCACTCAGGGCCCTCTGTTGATATAACAATTTTTTCTCTACACCTAGCTGGTGTCTCCTCTATTCTAGCTTCAATTAATTTTATTACTACAATTATTAATATACGATCTAGTGGCATAGTTCTTGAGCGAATCCCTTTGTTTGTATGAAGAGTAAAAATTACCGCAATCCTACTTTTGCTCTCTCTCCCCGTGTTAGCTGGAGCCATTACAATACTATTAACCGACCGAAACATTAATACAAGTTTCTTCGACCCTGCTGGTGGAGGGGATCCTATCCTATACCAACACCTATTC
    ##        id.77          name.77    gene.77
    ## 1 KROK102-20 Schendyla armata KROK102-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             sequence.77
    ## 1 GAGCATGGGCCTCAATAGCAGGGACAGCCCTCAGCCTTATCATTCGACTCGAACTAAGCCAGCCAGGGAGTCTCATTGGGGACGACCAAACCTATAACGTTATTGTCACCGCCCATGCCTTTGTAATAATTTTCTTCATAGTAATACCTATCATAATAGGAGGGTTCGGAAACTGACTCCTCCCATTAATACTCGGGGCCCCAGATATGGCCTTCCCCCGGCTAAATAACATAAGTTTTTGACTCCTCCCCCCGTCCCTCACCCTTCTCCTCGCCTCCGCTGCCGTAGAAAGTGGCGCAGGGACGGGCTGAACTGTCTACCCCCCCCTCTCCTCCGGCCTCGCCCACTCAGGCGCATCCGTGGACATAACCATTTTCTCGCTCCACCTAGCAGGCATCTCCTCAATCTTAGGCGCAATCAATTTTATCACCACCGTCATTAATATACGAACAAGAGGCATAGTATTCGAGCGCGTTCCCCTTTTCGTATGAGGCGTTACCATCACCGCGACGCTTCTCCTCCTGGCCCTCCCTGTTCTAGCCGGGGCCATCACGATACTCCTCACAGATCGAAACTTTAACACAAGCTTTTTTGACCCTGCCGGGGGAGGAGACCCAATTCTCTACCAA
    ##        id.78                      name.78    gene.78
    ## 1 KROK103-20 Harpolithobius gottscheensis KROK103-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            sequence.78
    ## 1 AACAATATATTTTGTATTAGGAATCTGATCAGCAATAATCGGTACCGGTCTTAGAATTCTTATTCGATTGGAATTAAGACAACCTGGAAGATTAATTGGAGATGACCAAATTTATAATGTAATTGTAACTGCACATGCTTTTATTATAATTTTTTTTATAGTTATACCCATTATAATTGGAGGATTTGGAAATTGATTGGTGCCACTAATATTAGGTGCTCCAGATATGGCATTTCCTCGAATAAATAATATAAGATTTTGATTACTCCCTCCATCTTTAACCCTACTTTTATGCTCTGCAGCAGTAGAAAGAGGAGCAGGAACCGGATGAACAGTATATCCTCCACTGTCTTCAAATATTTCTCACAGAGGAGCTTCTGTTGATATAACAATCTTCTCCCTTCATTTAGCTGGAGCCTCATCAATTTTAGGGGCTATTAATTTTATTTCAACTATTATTAATATACGATCCAGAGGAATATCATTTGAACGAGTTCCTCTTTTCGTATGATCAGTAAAAATTACTGTAATCTTACTTTTATTATCATTACCTGTATTAGCAGGAGCTATTACTATATTATTAACTGATCGTAATCTCAATACAAGATTTTTTGATCCTACCGGAGGAGGGGATCCAATTTTAT
    ##        id.79            name.79    gene.79
    ## 1 KROK104-20 Lithobius dentatus KROK104-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   sequence.79
    ## 1 AACAATATACTTTATTTTAGGAATTTGATCAGCTATAATTGGAACAGGACTTAGCTTATTAATTCGATTAGAACTTAGCCAACCAGGGAGATTAATTGGGGATGATCAAATTTATAATGTCATCGTAACAGCTCATGCTTTTATTATAATCTTTTTTATAGTAATACCAATTATAATTGGAGGATTTGGGAATTGATTAGTACCTTTAATATTAGGAGCTCCTGATATAGCATTCCCCCGAATAAATAATATAAGATTTTGGCTATTACCTCCCTCCCTTACACTTCTTCTTTGCTCAGCCGCTGTAGAAAGTGGAGCTGGAACAGGTTGAACAGTCTACCCTCCCTTATCATCTAATATTTCCCATAGTGGGGCATCAGTAGATATAACAATCTTTTCACTACACTTAGCAGGTGCATCATCAATTCTTGGAGCTATTAATTTTATCTCAACAATTATTAATATACGATCAAGAGGAATATCATTTGAACGAGTCCCTTTATTCGTGTGATCCGTTAAAATCACAGTAATTCTATTATTATTATCCTTACCAGTACTAGCTGGGGCAATCACAATATTATTAACAGATCGTAATCTAAATACAAGATTCTTTGACCCTACAGGGGGAGGAGATC
    ##        id.80         name.80    gene.80
    ## 1 KROK105-20 Lithobius latro KROK105-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        sequence.80
    ## 1 AACCATATATTTTGTATTAGGAATTTGATCAGCAATAATTGGTACAGGACTTAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGTGTATAATGTTATTGTCACAGCCCACGCATTCATTATAATTTTCTTTATAGTAATACCAATTATAATTGGTGGATTCGGAAATTGACTGGTACCCCTTATACTTGGTGCTCCAGATATGGCCTTCCCCCGAATAAATAATATAAGATTTTGGTTACTCCCCCCCTCTCTAACCCTACTTCTTTGCTCTGCTGCAGTAGAGAGAGGAGCAGGAACGGGCTGAACTGTATACCCCCCCTTATCAGCAAATATCTCCCATAGCGGGGCCTCAGTAGATATAACAATTTTTTCTCTACACTTAGCAGGGGCGTCATCAATCTTAGGAGCAATTAACTTTATTTCAACAATTATCAATATACGTACTAGTGGGATATCATTCGAACGAGTACCATTATTTGTATGATCTGTAAAGATTACAGTTATTTTACTTCTTCTTTCCCTTCCCGTTCTTGCCGGAGCTATTACTATACTCCTTACAGACCGAAACTTGAATACAAGATTCTTTGATCCCACAGGGGGAGGAGACCCCATCTTATACCAGCACCTAT
    ##        id.81           name.81    gene.81
    ## 1 KROK106-20 Lithobius validus KROK106-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             sequence.81
    ## 1 CAGCAATAATCGGAACAGGATTAAGCCTTCTCATTCGACTAGAATTAAGCCAACCAGGGAGATTAATTGGAGACGATCAAATTTATAACGTAATCGTAACAGCTCATGCATTTATTATAATTTTCTTCATAGTAATGCCAATCATAATTGGAGGATTTGGTAATTGATTAGTCCCACTAATATTAGGAGCCCCAGACATAGCATTCCCCCGATTAAATAACATAAGATTTTGACTTCTCCCACCCTCCCTCACACTACTTCTTTGTTCAGCAGCTGTTGAAAGAGGCGCAGGAACTGGATGAACCGTTTACCCACCTCTTTCTGCAAACATCTCGCATAGAGGAGCATCAGTGGATATAACAATTTTTTCTCTACACTTAGCAGGTGCCTCCTCTATTCTAGGGGCCATTAATTTTATTTCTACAATTATTAATATACGAACAAGAGGAATATCATTCGAACGAGTTCCATTATTCGTCTGATCAGTAAAAATTACTGTTATTCTCCTTTTATTATCTTTACCAGTACTTGCAGGAGCAATTACCATATTATTAACCGATCGAAATTTAAACACAAGATTCTTCGACCCAACAGGAGGGGGGGATCCTATTTTATACCAACATCTATTC
    ##        id.82         name.82    gene.82
    ## 1 KROK109-20 Lithobius latro KROK109-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    sequence.82
    ## 1 AACCATATATTTTGTATTAGGAATTTGATCAGCAATAATTGGTACAGGACTCAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGTGTATAATGTTATTGTCACAGCCCACGCATTCATTATAATTTTCTTTATAGTAATACCAATTATAATTGGTGGATTCGGAAATTGACTGGTACCCCTTATACTTGGTGCTCCAGATATGGCCTTCCCCCGAATAAATAATATAAGATTTTGGTTACTCCCCCCCTCTCTAACCCTACTTCTTTGCTCTGCTGCAGTAGAGAGAGGAGCAGGAACGGGCTGAACTGTATACCCCCCCTTATCAGCAAATATCTCCCATAGCGGGGCCTCAGTAGATATAACAATTTTTTCTCTACACTTAGCAGGGGCGTCATCAATCTTAGGAGCAATTAACTTTATTTCAACAATTATCAATATACGTACTAGTGGGATATCATTCGAACGAGTACCATTATTTGTATGATCTGTAAAGATTACAGTTATTTTACTTCTTCTTTCCCTTCCCGTTCTTGCCGGAGCTATTACTATACTCCTTACAGACCGAAACTTGAATACAAGATTCTTTGATCCCACAGGGGGAGGAGACCC
    ##        id.83         name.83    gene.83
    ## 1 KROK111-20 Lithobius latro KROK111-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     sequence.83
    ## 1 TTAGGGATTTGATCAGCAATAATTGGTACAGGACTCAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGTGTATAATGTTATTGTCACAGCCCACGCATTCATTATAATTTTCTTTATAGTAATACCAATTATAATTGGTGGATTCGGAAATTGACTGGTGCCCCTTATACTTGGTGCTCCAGATATGGCCTTCCCCCGAATAAATAATATAAGATTTTGGTTACTCCCCCCCTCTCTAACCCTACTTCTTTGCTCTGCTGCAGTAGAGAGAGGAGCAGGAACGGGCTGAACTGTATACCCCCCCTTATCAGCAAATATCTCCCATAGCGGGGCCTCAGTAGATATAACAATTTTTTCTCTACACTTAGCAGGGGCGTCATCAATCTTAGGAGCAATTAACTTTATTTCAACAATTATCAATATACGTACTAGTGGGATATCATTCGAACGAGTACCATTATTTGTATGATCTGTAAAGATTACAGTTATTTTACTCCTTCTTTCCCTTCCCGTTCTTGCCGGAGCTATTACTATACTCCTTACAGACCGAAACTTGAATACAAGATTCTTTGATCCCACAGGGGGAGGAGACCCCATCTTATATCAGCACCTATTTTGATTTTTTGGTCACCSGGAAATTTTT
    ##        id.84         name.84    gene.84
    ## 1 KROK120-20 Cryptops parisi KROK120-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.84
    ## 1 AACAATATACTTAATTTTTGGAGCTTGAGCAGCCATATTAGGAACATCTTTAAGCTTACTAATCCGACTAGAATTAAGCCAACCAGGAACTTTAATTGGAGATGACCAATTATATAATGTTGTAGTAACAGCCCATGCTTTCGTTATAATTTTCTTTATAGTTATACCTATTATAATTGGCGGCTTTGGAAACTGGTTAGTACCTTTAATAATAGGTGCCCCAGACATAGCTTTTCCACGATTAAATAATATAAGCTTCTGACTATTACCACCTTCTTTAAGCTTGCTATTAGGATCTAGCTTGTTAGAAAGTGGAGCAGGGACAGGATGAACGGTTTATCCACCTCTAGCCTCTTCTCTTGCCCACTCAGGTTGTTCAGTAGACATAACTATTTTTTCTTTGCATCTTGCAGGAATTTCTTCTATTTTAGGGGCTATTAATTTTATTACAACTATTCTTAATATACGATCAAAAGGTATAGTATTTGAACGATTACCTCTATTTGCATGATCAGTATTAATCACAGCTATTCTACTCTTACTCTCTCTTCCTGTTTTAGCAGGAGCTATTACAATATTACTAACAGACCGAAATTTTAATACCTCATTTTTTGATCCAGCAGGAGGAGGAGACCCTATTCTTTACCAACATTTATTC
    ##        id.85         name.85    gene.85
    ## 1 KROK121-20 Cryptops parisi KROK121-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.85
    ## 1 AACAATATACTTAATTTTTGGAGCTTGAGCAGCCATATTAGGAACATCTTTAAGCTTACTAATCCGACTAGAATTAAGCCAACCAGGAACTTTAATTGGAGATGACCAATTATATAATGTTGTAGTAACAGCCCATGCTTTCGTTATAATTTTCTTTATAGTTATACCTATTATAATTGGCGGCTTTGGAAACTGGTTAGTACCTTTAATAATAGGTGCCCCAGACATAGCTTTTCCACGATTAAATAATATAAGCTTCTGACTATTACCACCTTCTTTAAGATTGCTATTAGGATCTAGCTTGTTAGAAAGTGGAGCAGGAACAGGATGAACAGTTTATCCACCTCTAGCCTCTTCTCTTGCCCACTCAGGTTGTTCAGTAGATATAACTATTTTTTCTTTGCATCTTGCAGGAATTTCTTCTATTTTAGGGGCTATTAATTTTATTACAACTATTCTTAATATACGGTCAAAAGGTATAGTATTTGAACGATTACCTCTATTTGCATGATCAGTATTAATCACAGCTATTCTACTCTTACTCTCTCTTCCTGTTTTAGCAGGAGCTATTACAATATTACTAACAGACCGAAATTTTAATACCTCATTTTTTGATCCAGCAGGAGGAGGAGACCCTATTCTTTACCAACATTTATTC
    ##        id.86         name.86    gene.86
    ## 1 KROK124-20 Cryptops parisi KROK124-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.86
    ## 1 AACAATATACTTAATTTTTGGAGCTTGAGCAGCTATATTAGGAACATCTCTAAGCTTACTAATTCGAATAGAATTAAGCCAACCAGGAACCTTAATTGGAGACGATCAATTGTATAATGTTGTAGTAACAGCTCATGCTTTTGTTATAATTTTCTTTATAGTTATACCTATTATAATTGGCGGGTTTGGAAACTGATTAGTACCCTTAATAATAGGTGCACCAGATATAGCTTTTCCACGATTAAATAATATAAGCTTCTGATTATTACCCCCCTCTTTAAGACTACTTTTAGGGTCTAGATTATTAGAAAGTGGAGCTGGAACAGGATGAACAGTTTATCCACCCCTAGCCTCTTCTCTTGCCCACTCAGGGTGCTCCGTAGATATAACTATTTTTTCATTACATCTTGCAGGAGTTTCTTCTATTCTGGGAGCTATTAATTTTATTACAACTATTCTTAATATACGATCAAAAGGTATAGTATTTGAACGATTACCTCTTTTTGCATGATCAGTATTAATTACAGCTATTCTCCTCTTACTTTCTCTTCCTGTATTAGCAGGAGCTATTACAATATTATTAACAGATCGAAATTTTAATACTTCATTTTTCGATCCAGCAGGAGGAGGAGATCCTATTCTTTACCAAMATTTATTC
    ##        id.87            name.87    gene.87
    ## 1 KROK126-20 Cryptops hortensis KROK126-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.87
    ## 1 AACTATATATTTAATATTTGGAGCTTGAGCATCCATACTGGGGACAGCCTTAAGCCTCTTGATCCGCCTAGAGTTAAGACAACCAGGAACCCTAATCGGAGACGACCAACTCTATAACGTTGTAGTCACAGCTCATGCATTTGTAATAATCTTCTTTATAGTTATACCTATCATAATCGGTGGCTTTGGGAACTGATTAGTACCCTTAATAATAGGAGCCCCAGATATAGCTTTTCCCCGCTTAAATAATATAAGATTTTGGCTCCTCCCCCCCTCCTTAATGCTCCTTCTTGGGTCTAGATTAGTTGAAAGCGGAGCAGGGACTGGTTGAACAGTATACCCCCCTCTAGCCTCTTCCATAGCCCACTCAGGCTGTTCAGTAGACCTAACAATTTTTTCTCTACACCTAGCTGGGGTCTCCTCAATCCTTGGAGCTATCAATTTTATTACAACCATTATTAATATACGATCAAGCGGAATAGTGTTTGAGCGCCTCCCTCTCTTTGCCTGATCTGTGTTAATCACAGCTGTTCTACTGTTACTTTCCCTCCCTGTTCTCGCAGGAGCTATTACAATATTACTTACAGACCGAAACTTCAATACCTCTTTCTTCGACCCTGCAGGAGGGGGTGACCCAATCCTCTACCAACATTTATTC
    ##        id.88          name.88    gene.88
    ## 1 KROK127-20 Coelotes atropos KROK127-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     sequence.88
    ## 1 GAGTATTAATTCGAATTGAATTAGGTCAATCAGGAAGTTTTTTGGGTGATGATCATTTATATAATGTTATTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATAGTGATACCTATTTTAATTGGAGGTTTTGGTAATTGATTAGTACCTTTGATATTAGGTGCTCCAGATATAGCTTTTCCTCGATTAAATAATTTAAGGTTTTGATTATTACCTCCTTCATTATTTTTATTGTTTATTTCTTCTATGGTTGAAATAGGTGTAGGAGCTGGATGGACGGTTTATCCACCATTGGCTTCTAGTATGGGTCATTCTGGAAGATCTGTTGATTTTGCTATTTTTTCTTTACATTTAGCTGGGGCTTCTTCTATTTTAGGAGCTATTAATTTTATTTCTACTATTTTTAATATACGGTCGAATGGAATGACTTTTGAAAAGGTTCCTTTATTTGTTTGATCCGTATTAATTACTGTTGTATTATTATTATTATCTTTGCCTGTATTAGCGGGTGCTATTACAATATTATTAACTGATCGAAATTTTAATACTTCATTTTTTGATCCAGCTGGAGGTGGTGATCCTATTTTATTTCAACATTTATTT
    ##        id.89             name.89    gene.89
    ## 1 KROK128-20 Histopona luxurians KROK128-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.89
    ## 1 AACATTGTATTTAATTTTTGGGACGTGATCTGCTATAGTGGGAATAGCTATAAGTGTTCTTATTCGAATTGAATTAGGACAATCAGGAAGATTTTTGGGTGATGATCACCTTTATAATGTAATTGTTACTGCTCATGCTTTTGTTATAATCTTTTTTATAGTTATGCCTGTAATAATTGGAGGATTTGGAAATTGGTTAATTCCTTTAATATTAGGAACGCCAGATATGGCGTTTCCTCGAATAAATAATTTGAGATTTTGGTTATTACCCCCTTCTTTATTTTTGCTTTTTATTTCTTCTATAGTTGAAATAGGAGTTGGTTCAGGGTGAACTGTGTATCCGCCTTTAGCATCTTCTATTGGACATGTTGGTAGTTCTGTTGATTTTGCGATTTTTTCTTTACATTTGGCTGGAGCTTCTTCAATTATAGGGGCTATTAATTTTATTTCTACTATTTTAAATATACGTTCTCCATTCATGAGAATGGAAAAAGTTCCTTTATTTGTGTGGTCTGTTTTAATTACTGCTGTTCTGTTATTATTGTCTTTGCCAGTTTTAGCTGGAGCTATTACAATATTACTTACTGATCGTAATTTTAATACTTCTTTTTTTGACCCTGCTGGAGGAGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.90             name.90    gene.90
    ## 1 KROK129-20 Histopona luxurians KROK129-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.90
    ## 1 AACATTGTATTTAATTTTTGGGACGTGATCTGCTATAGTGGGAATAGCTATAAGTGTTCTTATTCGAATTGAATTAGGACAATCAGGAAGATTTTTGGGTGATGATCACCTTTATAATGTAATTGTTACTGCTCATGCTTTTGTTATAATCTTTTTTATAGTTATGCCTGTAATAATTGGAGGATTTGGAAATTGGTTAATTCCTTTAATATTAGGAACGCCAGATATGGCGTTTCCTCGAATAAATAATTTGAGATTTTGGTTATTACCCCCTTCTTTATTTTTGCTTTTTATTTCTTCTATAGTTGAAATAGGAGTTGGTTCAGGGTGAACTGTGTATCCGCCTTTAGCATCTTCTATTGGACATGTTGGTAGTTCTGTTGATTTTGCGATTTTTTCTTTACATTTGGCTGGAGCTTCTTCAATTATAGGGGCTATTAATTTTATTTCTACTATTTTAAATATACGTTCTCCATTCATGAGAATGGAAAAAGTTCCTTTATTTGTGTGGTCTGTTTTAATTACTGCTGTTCTGTTATTATTGTCTTTGCCAGTTTTAGCTGGAGCTATTACAATATTACTTACTGATCGTAATTTTAATACTTCTTTTTTTGACCCTGCTGGAGGAGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.91           name.91    gene.91
    ## 1 KROK130-20 Histopona torpida KROK130-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.91
    ## 1 AACATTATATTTAATTTTTGGTGTGTGATCTGCTATAGTGGGGACTGCAATAAGAGTTATTATTCGAATTGAATTAGGTCAGTCTGGTAGTTTTTTAGGAGATGATCATCTTTATAATGTAATTGTTACTGCTCATGCATTTGTGATGATTTTTTTTATAGTTATACCAATTATAATTGGAGGATTTGGAAATTGATTGGTTCCTTTAATGTTAGGTTCTCCAGATATAGCATTTCCTCGAATAAATAATTTAAGTTTTTGGCTGTTACCTCCGTCTTTATTTTTGCTTTTTGTGTCGGCCCTATCTGAGATAGGGGTGGGGGCTGGATGAACTGTTTATCCGCCTCTGGCTTCTTCTATTGGACATATAGGTAGTTCTGTCGATTTTGCTATTTTTTCTTTACATTTGGCTGGGGCTTCTTCAGTAATAGGAGCTATTAATTTTATTTCTACTATTTGAAATATGCGTTCTTATGAAATAAGAATGGATAAAGTACCTTTGTTTGTATGATCTGTTTTGATTACTGCTGTATTATTATTATTATCTTTACCAGTTTTAGCTGGGGCTATTACAATATTGCTTACTGATCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##        id.92                name.92    gene.92
    ## 1 KROK131-20 Inermocoelotes anoplus KROK131-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.92
    ## 1 TTCTATGTATTTAATTTTTGGAGCTTGATSTGCTATAGTTGGTACCGCTATAAGAGTTTTAATCCGAATTGAATTAGGTCAATCAGGAAGATTTTTGGGTGATGATCATTTATATAATGTTATTGTTACTGCTCATGCTTTTATTATAATTTTTTTTATAGTAATACCTATTTTAATTGGAGGTTTTGGGAATTGATTAATTCCTTTAATGTTAGGGGCGCCAGATATGGCTTTTCCTCGAATAAATAATTTGAGTTTTTGGTTGTTACCTCCTTCGTTGTTTTTATTATTTATTTCTTCTATGGTGGAGATAGGAGTAGGGGCTGGATGAACGATTTATCCTCCATTGGCTTCTATGATAGGGCATGCTGGAAGTTCTGTTGATTTTGTTATTTTTTCTTTGCATTTGGCTGGTGTTTCTTCTATTTTAGGAGCTATTAATTTTATTTCTACTATTTTTAATATACGATCTTATGGAATATCTTTTGAGAAGGTACCATTATTTGTTTGGTCGGTATTAATTACTGTTGTGTTATTATTATTATCTTTGCCTGTATTAGCGGGTGCTATTACAATATTGTTAACTGATCGTAATTTTAATACTTCATTTTTTGATCCAGCTGGAGGTGGAGATCCTATTTTATTTCAAYATTTATTT
    ##        id.93                name.93    gene.93
    ## 1 KROK132-20 Inermocoelotes inermis KROK132-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.93
    ## 1 TACTTTGTATTTGATTTTTGGAGCTTGATCTGCTATAGTTGGTACAGCTATAAGAGTTTTGATTCGGATTGAATTAGGTCAACCAGGAAGATTTTTAGGTGATGATCATTTATATAATGTAATTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATAGTAATACCTATTTTAATTGGAGGTTTTGGAAATTGATTAGTTCCTTTAATATTAGGGGCTCCAGATATAGCTTTTCCTCGAATAAATAATTTGAGTTTTTGATTATTACCTCCTTCATTATTTTTATTGTTTATTTCTTCAATAGTTGAAATAGGTGTAGGTGCTGGATGAACAATTTATCCTCCATTGGCTTCTATAATGGGCCATGCTGGAAGTTCTGTTGATTTTGTTATTTTTTCTTTACATTTAGCGGGGGCTTCCTCTATTTTAGGAGCTATTAATTTTATTTCTACTATTTTTAATATACGGTCATATGGAATAACTTTCGAGAAAGTTCCTTTATTTGTGTGGTCAGTATTGATTACTGTTGTATTATTATTGTTGTCTTTACCTGTATTAGCAGGGGCTATTACAATATTATTAACTGATCGTAACTTTAATACTTCGTTTTTTGATCCAGCTGGAGGTGGTGATCCTATTTTATTTCAACATTTGTTT
    ##        id.94              name.94    gene.94
    ## 1 KROK133-20 Tegenaria silvestris KROK133-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      sequence.94
    ## 1 CKTGGTCAWCWAATCATAMAKATWATRGGACATGGTAYWTAATMTTTGGTGCTTGGTCAGSMWTAGTTRGAGSTGSKATSAGAGTTTTAATTCGAATTGAATTGGGTCAGCCGGGGAGATTTATTGGTGATGATCATTTGTATAATGTAATTGTTACGGCTCATGCTTTTGTTATAATTTTTTTTATAGTAATACCAATTTTAATTGGTGGGTTTGGAAATTGATTAGTGCCTTTAATATTAGGGGCGCCTGATATGGCTTTTCCTCGGATAAATAATTTAAGTTTTTGATTATTACCTCCTTCTTTATTTATATTATTTATTTCTTCTATAGTAGATATGGGAGTAGGAGCAGGATGGACTATTTATCCTCCTTTAGCATCTTCTCTTGGTCACATAGGAAGATCTATGGATTTTGCTATTTTTTCTTTACATTTGGCTGGGGCTTCTTCAATTATAGGGGCTATTAATTTTATTTCTACTATTTTAAATATACGTTCAATTGGGATAAAGATAGAGAGGGTCCCGTTGTTTGTTTGGTCAGTATTAATCACTGCTATTTTATTGTTATTATCTTTACCTGTATTAGCAGGTGCTATTACTATATTGTTAACTGATCGAAATTTTAATACTTCATTTTTTGACCCTGCAGGGGGAGGGGATCCAATTTTATTTCAACATTTGTTT
    ##        id.95            name.95    gene.95
    ## 1 KROK134-20 Amaurobius obustus KROK134-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.95
    ## 1 AACATTATATTTAATTTTTGGAGCTTGAGCATCTATAGTTGGAATAGCTATAAGAGTTTTAATTCGAATTGAATTAGGACAATCAGGAAGTTTATTTGGAGATGATCATTTATATAATGTAATTGTAACAGCTCATGCTTTTGTAATAATTTTTTTTATAGTTATACCAATTATAATTGGGGGATTTGGAAATTGAATAGTTCCTTTAATATTAGGAGCTCCTGATATAGCTTTCCCTCGTATAAATAATTTAAGTTTTTGATTATTACCTCCTTCTTTATTATTATTAATTATTTCTTCTATAGTAGAAATAGGAGTAGGAGCAGGTTGGACTATTTATCCTCCATTAGCTTCTATTATAGGACATTCCGGAGGTGCTGTAGATTTTGCTATTTTTTCTTTACATTTAGCTGGTGCTTCATCAATTATAGGGGCTATTAATTTTATTTCTACTATTATTAATATACGATTATTAGGAATAACTATAGAGAAAGTTCCTTTATTTGTTTGGTCAATTTTTATTACTGTAATTTTATTGTTATTATCTTTACCTGTTTTAGCGGGTGCTATTACTATATTGTTAACTGATCGAAATTTTAATACTTCTTTTTTTGATCCTGCTGGAGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##        id.96         name.96    gene.96
    ## 1 KROK135-20 Comaroma simoni KROK135-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.96
    ## 1 GACGTTATATTTTCTATTTGGGTCTTGAGCAGCGATAGTGGGGACAGGTATGAGAATACTAATTCGTATTGAATTAGGACAGAGGGGGAGTTTGTTAGGGGATGACCAATTATATAATGTGATTGTTACTGCTCATGCTTTTGTGATAATTTTTTTTATGGTTATGCCCATTCTAATTGGGGGGTTTGGGAATTGATTGGTGCCGTTAATATTGGGGGCCCCTGATATGGCTTTTCCTCGTATGAATAATTTGAGGTTTTGGTTGCTCCCCCCCTCTTTGGTTATGTTGTTTATTTCTTCTATGGTTGAGATGGGAGTAGGGGCCGGGTGGACTATTTATCCCCCTTTGGCCTCCTTGGAGGGGCATTCGGGGAGAGCTGTGGATTTTGCTATTTTTTCTTTGCATTTAGCGGGGGCTTCTTCAATTATGGGGGCTATTAATTTTATTACTACTATTTTTAATATGCGTAGGGCAGGGATAAGGTTAGAGAAGGTACCTTTGTTTGTATGGTCGGTTTTAATTACAGCTGTTTTATTGTTGTTGTCTCTGCCCGTTCTAGCGGGGGCTATTACAATGCTGTTGACTGATCGAAACTTTAATACGTCATTTTTTGACCCTTCAGGGGGGGGGGACCCAATTTTATTTCAGCACTTGTTT
    ##        id.97            name.97    gene.97
    ## 1 KROK136-20 Araneus diadematus KROK136-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.97
    ## 1 GACTTTGTACTTAGTTTTTGGGGCATGAGCCGCTATGGTAGGGACAGCAATAAGTGTATTGATTCGAATTGAATTAGGTCAGCCTGGGAGATTTATTGGAGATGATCAACTTTATAATGTTATTGTAACTGCGCATGCGTTTGTAATAATTTTTTTTATAGTTATACCTATTTTAATTGGGGGATTTGGAAATTGATTAGTGCCTTTAATGTTAGGGGCTCCTGATATAGCGTTTCCTCGAATAAATAATTTAAGATTTTGATTACTTCCTCCATCTTTATTTCTTTTGATTGTTTCTTCAATAGTTGAGATAGGAGTTGGTGCAGGGTGGACTGTATATCCTCCTTTAGCCGGATTAGAGGGTCATGCTGGAAGATCAGTGGATTTTGCAATTTTTTCTTTGCATTTAGCGGGGGCTTCTTCTATTATAGGGGCTATTAATTTTATTTCTACAATTATTAATATGCGTTTTTATGGAATAACAATAGAAAAAGTTCCTTTATTTGTGTGGTCTGTATTAATTACGGCTGTTTTACTATTACTTTCTTTACCCGTTTTGGCAGGTGCTATTACTATATTATTAACTGACCGAAATTTTAATACATCATTTTTTGATCCTTCGGGAGGGGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.98             name.98    gene.98
    ## 1 KROK137-20 Clubiona terrestris KROK137-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.98
    ## 1 AAGTTTATACTTAATTTTTGGTACTTGATCTGCTATGGTTGGAACAGCTATAAGAGTTTTAATTCGAATAGAATTAGGACAATCTGGTATATTTTTAGGAGATGATCATCTATATAATGTAGTAGTTACAGCTCATGCTTTTGTTATAATTTTTTTTATGGTTATACCAATTATAATTGGTGGATTTGGAAATTGAATAGTTCCAATGATATTAGGGGCAGCTGATATAGCTTTTCCTCGAATAAATAATTTAAGTTTTTGACTATTACCTCCTTCTTTATTGTTATTATTTATTTCGTCTATGGCTGAGATAGGAGTTGGTGCGGGCTGAACAGTATATCCTCCTTTAGCCTCTACTGTGGGACATATGGGGAGAGCTATGGATTTTGCTATTTTTTCGTTACATTTAGCTGGTGCTTCTTCTATTATAGGTGCAGTAAATTTTATTACTACAATTATTAATATACGATCTGTAGGAATAAGAATGGAAAAAATTCCTTTATTTGTTTGATCTGTGTTGATTACAGCAGTTCTTTTATTGTTATCATTACCTGTATTAGCAGGTGCTATTACTATATTATTAACAGATCGAAATTTTAATACTTCTTTCTTTGATCCTGCTGGAGGAGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.99           name.99    gene.99
    ## 1 KROK138-20 Dysdera adriatica KROK138-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.99
    ## 1 TACTTTATATTTGTTGTTTGGTGCTTGATCTGCTATAGTGGGGACAGCTATGAGTGTTTTGATTCGGGCTGAATTAGGGCAGGTGGGTGGTTTATTGGGAGATGATCATTTGTTCAATGTTGTTGTAACCGCTCATGCGTTGGTTATGATTTTTTTTATGGTAATGCCTATTATAATTGGGGGGTTTGGAAATTGGTTGGTTCCGTTAATGATTGGGGCCCCCGATATAGCTTTTCCACGTATAAATAATTTAAGCTTTTGACTTCTACCCCCATCGTTAGTGTTATTGGTAATTTCTTCTATAGTTGAAATAGGGGTAGGGGCGGGTTGAACTATTTATCCACCTCTTTCTGGGAGAGTAGGGCATTTTGGTGTATCTGTAGATTTGGCTATTTTTAGTCTTCATTTAGCGGGAGCGTCTTCTATTATGGGGGCTATTAATTTTATTTCGACGATTTTTAATATGCGATCTGTTGGTATAACTATAGAGAGGGTACCTTTGTTTGTGTGGTCTGTGTTGGTTACTGCTATTTTGTTGCTTTTATCTCTTCCTGTTTTAGCAGGGGCTATTACTATATTATTGACGGATCGAAATTTTAATACATCGTTTTTTGACCCGGCGGGGGGCGGGGATCCAATTTTGTTTCAGCATTTATTT
    ##       id.100          name.100   gene.100
    ## 1 KROK139-20 Dysdera adriatica KROK139-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.100
    ## 1 TACTTTATATTTGTTGTTTGGTGCTTGATCTGCTATAGTGGGGACAGCTATGAGTGTTTTGATTCGGGCTGAATTAGGGCAGGTGGGTGGTTTATTGGGAGATGATCATTTGTTCAATGTTGTTGTAACCGCTCATGCGTTGGTTATGATTTTTTTTATGGTAATGCCTATTATAATTGGGGGGTTTGGAAATTGGTTGGTTCCGTTAATGATTGGGGCCCCCGATATAGCTTTTCCACGTATAAATAATTTAAGCTTTTGACTTCTACCCCCATCGTTAGTGTTATTGGTAATTTCTTCTATAGTTGAAATAGGGGTAGGGGCGGGTTGAACTATTTATCCACCTCTTTCTGGGAGAGTAGGGCATTTTGGTGTATCTGTAGATTTGGCTATTTTTAGTCTTCATTTAGCGGGAGCGTCTTCTATTATGGGGGCTATTAATTTTATTTCGACGATTTTTAATATGCGATCTGTTGGTATAACTATAGAGAGGGTACCTTTGTTTGTGTGGTCTGTGTTGGTTACTGCTATTTTGTTGCTTTTATCTCTTCCTGTTTTAGCAGGGGCTATTACTATATTATTGACGGATCGAAATTTTAATACATCGTTTTTTGACCCGGCGGGGGGCGGGGATCCAATTTTGTTTCAGCATTTATTT
    ##       id.101          name.101   gene.101
    ## 1 KROK140-20 Dysdera adriatica KROK140-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.101
    ## 1 TACTTTATATTTGTTGTTTGGTGCTTGATCTGCTATAGTGGGGACAGCTATGAGTGTTTTGATTCGGGCTGAATTAGGGCAGGTGGGTGGTTTATTGGGAGATGATCATTTGTTCAATGTTGTTGTAACCGCTCATGCGTTGGTTATGATTTTTTTTATGGTAATGCCTATTATAATTGGGGGGTTTGGAAATTGGTTGGTTCCGTTAATGATTGGGGCCCCCGATATAGCTTTTCCACGTATAAATAATTTAAGCTTTTGACTTCTACCCCCATCGTTAGTATTATTGGTAATTTCTTCTATAGTTGAAATAGGGGTAGGGGCGGGTTGAACTATTTATCCACCTCTTTCTGGGAGAGTAGGGCATTTTGGTGTATCTGTAGATTTGGCTATTTTTAGTCTTCATTTAGCGGGAGCGTCTTCTATTATGGGGGCTATTAATTTTATTTCGACGATTTTTAATATGCGATCTGTTGGTATAACTATAGAGAGGGTACCTTTGTTTGTGTGGTCTGTGTTGGTTACTGCTATTTTGTTGCTTTTATCTCTTCCTGTTTTAGCAGGGGCTATTACTATATTATTGACGGATCGAAATTTTAATACATCGTTTTTTGACCCGGCGGGGGGCGGGGATCCAATTTTGTTTCAGCATTTATTT
    ##       id.102            name.102   gene.102
    ## 1 KROK141-20 Dasumia canestrinii KROK141-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.102
    ## 1 AACTTTATATTTATTGTTTGGAGCTTGATCGGCTATAGCCGGAACTGCAATGAGAGTGCTTATTCGGGTTGAGTTGGGTCAGTTGGGGAGATTGTTGGGTGATGATCATTTGTATAATGTTGTGGTTACAGCACATGCATTAGTGATGATTTTTTTTATAGTGATACCTATTATAATTGGGGGTTTTGGGAATTGGTTGGTTCCTTTGATGCTGGGCGCGCCGGACATGGCGTTTCCTCGAATAAATAATTTAAGTTTTTGGTTGTTGCCCCCTTCGTTGATTTTGTTGATTTTATCTTCTATGGTGGAAACAGGGGTGGGGGCCGGATGGACAATTTATCCCCCATTATCTGCTTCTTTGGGGCATGGGGGTGTATCAGTGGATTTAGCGATTTTTTCTTTACATTTGGCGGGAGCGTCTTCTATTATAGGGGCTATTAATTTTATTTCTACGATTATTAATATGCGTATATACGGTATAAGAATAGATAGGGTTCCTTTGTTTGTGTGATCTGTTTTGGTTACAGCAATTCTTTTGCTTTTGTCGTTGCCGGTTTTAGCGGGCGCTATTACTATGTTGTTGACGGACCGAAATTTTAATACTTCTTTTTTTGATCCCGCCGGAGGAGGAGATCCTATTTTGTTTCAACATTTGTTT
    ##       id.103               name.103   gene.103
    ## 1 KROK143-20 Centromerus cavernarum KROK143-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.103
    ## 1 AAGTTTATATTTAGTTTTTGGGGCTTGAGCTGCTATAGTTGGAACTGCAATAAGAGTTTTAATTCGTGTAGAATTGGGGCAAGTTGGGAGAATGTTAGGGGATGACCAGTTGTATAATGTTATTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATAGTGATGCCTATTTTGATTGGGGGATTTGGGAATTGGTTAGTCCCTTTAATGTTAGGGGCTCCGGATATAGCTTTTCCTCGAATGAATAATTTGAGATTTTGGTTACTTCCCCCTTCTTTATTTTTGTTATTTATTTCTTCTATAGTGGAGATAGGGGTAGGAGCGGGTTGAACTATTTATCCTCCTTTGGCTTCTTTGGAAGGGCATTCTGGAAGATCTGTGGATTTTGCTATTTTTTCTCTTCATTTAGCGGGAGCTTCATCTATTATAGGGGCTATTAATTTTATTTCTACAATTATTAATATACGTGCTTATGGGATAGGGATAGAAAAAATCTCTTTATTTGTGTGGTCTGTTTTGATTACAGCTGTTCTTTTATTGCTTTCATTGCCAGTTCTTGCAGGGGCTATTACGATATTATTAACGGATCGAAATTTTAATACTTCTTTTTTTGACCCAGCAGGGGGAGGGGACCCTATTTTGTTTCAGCATTTATTT
    ##       id.104           name.104   gene.104
    ## 1 KROK144-20 Ceratinella brevis KROK144-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.104
    ## 1 GAGTTTATATTTTATTTKTGGAGCKTGAGCTGCTATAGTAGGGACAGCAATAAGAGTATTGATTCGTGTTGAGTTAGGACAAATTGGAAGATTATTAGGGGATGATCAGTTGTATAATGTTATTGTTACGGCTCATGCTTTTGTWATAATTTTTTTTATGGTGATACCTATTTTAATTGGTGGTTTKGGGAATTGGTTGGTTCCTTTAATGTTGGGGGCACCTGATATAGCTTTTCCTCGAATAAATAATTTAAGATTTTGATTATTACCTCCTTCTTTATTATTATTATTTATTTCTAGAATAGATGAGATGGGGGTAGGAGCGGGGTGAACTATTTATCCTCCTCTTGCTTCTTTAGAAGGGCATTCTGGAAGATCAGTAGATTTTGCTATTTTTTCTTTACATTTAGCAGGAGCGTCATCAATTATAGGTGCTATTAATTTTATTTCTACTATTTTAAACATACGGGGGTATGGGATAACAATAGAAAAAGTTCCTTTATTTGTTTGATCTGTTTTAATTACGGCTGTTTTATTACTTTTGTCTTTACCAGTATTAGCTGGGGCGATTACTATGCTTTTAACAGATCGAAATTTTAATACATCATTTTTTGATCCAGCGGGTGGAGGGGATCCGGTTTTATTTCAAMWTTTRTTT
    ##       id.105         name.105   gene.105
    ## 1 KROK145-20 Microneta viaria KROK145-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.105
    ## 1 AAGTTTATATTTTGTATTTGGGGCTTGGTCTGCGATAGTTGGAACTGCAATAAGAGTGTTAATTCGAATTGAGTTAGGTCAAGTTGGTAGTTTGTTAGGAGACGACCAACTATATAATGTGATTGTTACGGCTCATGCTTTTGTTATAATTTTTTTTATAGTGATACCAATTTTAATTGGGGGGTTTGGTAATTGGTTAGTTCCTTTAATATTAGGGGCTCCAGATATAGCTTTTCCTCGGATAAACAATTTGAGATTTTGGCTTTTACCCCCCTCTTTATTTTTATTGTTTATTTCAAGTATAGACGAGATAGGGGTAGGAGCAGGTTGGACAGTTTATCCTCCTCTTTCTTCATTAGATGGCCATTCGGGAAGTTCAGTGGATTTTGCTGTTTTTTCTTTACATTTAGCTGGGGCATCTTCTATTATGGGGGCTATTAATTTTATTTCTACTATTTTGAATATACGAGGGTATGGGATAAGCATAGATAGGGTTCCTTTATTTGTTTGGTCTGTGTTAATTACGGCTGTTCTTTTATTGTTATCTTTGCCAGTGTTAGCAGGGGCGATTACGATATTGTTAACAGATCGAAATTTCAATACGTCATTTTTTGACCCTGCTGGGGGAGGGGACCCTGTTTTGTTTCAACACTTATTT
    ##       id.106          name.106   gene.106
    ## 1 KROK146-20 Scotargus pilosus KROK146-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.106
    ## 1 AACGTTATATTTGATTTTTGGGGCTTGAGCTGCTATAGTAGGAACTGCTATAAGAATACTAATTCGAATTGAGTTGGGACAAGGGGGAAGAATATTGGGGGATGATCAGTTGTATAATGTTATTGTTACTGCGCATGCTTTTGTAATAATTTTTTTTATGGTCATGCCAATTTTAATTGGGGGGTTTGGAAATTGGTTAGTTCCTTTAATGTTAGGGGCACCAGATATAGCTTTCCCACGTATGAATAATTTAAGTTTTTGGTTGCTACCCCCGTCTTTATTTTTATTGTTTATTTCTTCTATAGTTGAGATAGGGGTAGGAGCTGGATGGACAGTTTATCCACCATTAGCGTCTTTAGATGGACATCCTGGCAGTTCTGTTGATTTTGCTATTTTTTCTTTGCATTTGGCAGGGGCTTCTTCTATTATAGGGGCTATTAATTTTATTTCTACTATTATTAATATGCGGTCTTATGGTCTTACGATAGAAAGGGTTTCTTTATTTGTGTGGTCGGTTTTAATTACTGCTATTTTATTATTGTTATCATTACCTGTGTTAGCAGGGGCTATCACAATATTGTTGACAGATCGTAATTTTAATACTTCCTTTTTTGACCCGGCGGGGGGGGGGRATCCGGKGTTATTTCASCATTTGTTT
    ##       id.107              name.107   gene.107
    ## 1 KROK147-20 Tenuiphantes flavipes KROK147-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.107
    ## 1 GACTTTATATTTTATTTTTGGAGCGTGAGCTGCTATAGTAGGAACTGCTATAAGAGTATTAATTCGGATTGAATTGGGGCAAACTGGAAGAATACTGGGGGATGATCAGTTGTATAATGTTATTGTAACTGCACATGCTTTTGTAATAATTTTTTTTATAGTTATACCTATTTTGATTGGAGGATTCGGTAATTGATTAGTTCCTTTAATACTAGGGGCTCCTGATATAGCTTTTCCTCGTATAAATAATTTAAGATTTTGACTTTTACCCCCTTCTCTATTATTATTATTTATTTCAAGTATAGTTGAGATGGGAGTTGGGGCAGGGTGGACAGTGTATCCCCCTCTTGCCTCTTTAGAGGGACATGCAGGAAGTTCTGTTGATTTTGCTATTTTTTCTTTACATTTAGCTGGGGCTTCTTCTATTATAGGGGCAATTAATTTTATTTCCACTATTATTAATATGCGTGGATACGGTGTATCAATGGAAAAGGTTCCGTTATTTGTATGATCTGTTTTAATTACTGCGGTTCTTTTGTTGTTATCATTACCTGTTTTAGCTGGTGCTATTACTATACTTTTAACTGATCGAAATTTTAATACTTCGTTTTTTGATCCTGCAGGAGGAGGAGATCCTGTGTTATTTCAACATTTATTT
    ##       id.108                 name.108   gene.108
    ## 1 KROK148-20 Tenuiphantes tenebricola KROK148-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.108
    ## 1 AACTTTATATTTTATTTTTGGAGCGTGAGCTGCTATAGTAGGAACTGCTATAAGAGTATTAATTCGAATTGAGTTGGGACAAACTGGAAGTATATTGGGGGATGATCAGTTGTATAATGTTATTGTTACTGCTCATGCTTTTGTTATAATTTTTTTTATAGTTATACCTATTTTAATTGGGGGATTTGGAAATTGGTTAGTACCTTTAATACTTGGTGCTCCTGACATGGCTTTTCCTCGAATAAATAATTTAAGATTCTGGCTTTTACCTCCTTCTTTATTATTATTATTTATTTCAAGTATAGTTGAAATAGGAGTTGGGGCAGGATGAACAGTGTATCCTCCACTTTCTTCTTTAGAAGGACATGCGGGAAGCTCTGTTGATTTTGCTATTTTTTCTCTTCATTTAGCTGGGGCTTCTTCTATTATAGGAGCAATTAATTTTATTTCTACTATTTTTAATATACGTGGATATGGTGTGTCAATGGAAAAGGTTCCATTGTTTGTATGATCTGTTTTGATTACTGTCGTTCTTTTATTGTTGTCATTACCTGTTTTAGCAGGTGCTATTACTATACTTTTAACTGACCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCCGTGTTATTTCAACACTTATTT
    ##       id.109        name.109   gene.109
    ## 1 KROK149-20 Pardosa alacris KROK149-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.109
    ## 1 TACTTTATATTTAATATTTGGAGTTTGATCGGCTATAATAGGGACTGCTATAAGAGTATTAATTCGAATAGAATTAGGAAATCCTGGGAGATTATTAGGTGATGATCATTTATATAATGTTATAGTTACTGCTCATGCTTTTGTAATAATTTTTTTTATAGTAATACCAATTCTTATTGGAGGTTTTGGGAATTGATTAATTCCTTTAATATTAGGAGCTCCAGATATATCATTTCCTCGAATAAATAATCTTTCTTTTTGATTATTACCTCCTTCTTTATTTTTATTATCTATATCTTCTATAGTGGAGATAGGAGTTGGTGCTGGATGAACTGTTTATCCTCCTTTAGCATCTACGGTTGGTCATATAGGAAGTTCAATAGATTTTGCTATTTTTTCTCTTCATTTGGCTGGAGCTTCTTCTATTATAGGGGCTGTAAATTTTATTTCTACTATTATAAATATACGGATAATAGGAATATCTTTAGAAAAGGTTCCTCTTTTTGTTTGATCAGTTTTAATTACAGCAGTATTATTATTACTTTCTTTACCTGTTTTAGCAGGTGCTATTACTATATTATTAACAGATCGGAATTTTAATACTTCTTTTTTTGATCCTGCTGGTGGAGGAGATCCTATTTTATTTCAACATTTATTT
    ##       id.110           name.110   gene.110
    ## 1 KROK150-20 Trochosa terricola KROK150-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.110
    ## 1 TACTTTGTATTTAATGTTTGGTGCATGATCTGCTATAGTGGGAACTGCTATAAGAGTGTTGATTCGTTTAGAATTAGGGAATTCTGGAAGTTTATTAGGGGATGATCATTTATATAATGTTATGGTTACAGCTCATGCTTTTGTGATGATTTTTTTTATAGTAATACCAATTCTTATTGGAGGTTTTGGAAATTGATTAATTCCTTTAATATTAGGTGCTCCTGATATATCGTTTCCTCGAATAAATAATCTTTCTTTTTGGTTATTACCTCCTTCTTTATTTTTATTATCTATGTCTTCTATGGTGGAAATAGGAGTGGGGGCTGGTTGAACAGTTTATCCTCCTTTAGCATCTAGAGTGGGTCATATAGGGAGTTCTATAGATTTTGCTATTTTTTCTCTTCATTTAGCTGGTGCTTCTTCTATTATAGGAGCAGTAAATTTTATTTCTACTATTATTAATATACGAATATTAGGTATATCTATGGATAAAGTACCTTTATTTGTTTGATCAGTTTTGATTACGGCTGTTTTATTATTATTATCTTTACCTGTTTTAGCGGGTGCTATTACTATACTATTAACTGATCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##       id.111       name.111   gene.111
    ## 1 KROK151-20 Zora nemoralis KROK151-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.111
    ## 1 TACTTTATATTTAGTTTTTGGAGTTTGATCTGCTATAGTAGGAACGGCAATAAGAATATTGATTCGATTGGAATTAGGACAAGTTGGAAGATTTATAGGTGATGATCATTTATATAATGTAATTGTTACTGCTCATGCTTTTGTTATAATTTTTTTTATAGTAATACCTATTATAATTGGGGGATTTGGTAATTGATTAATTCCTTTAATGTTAGGAGCTCCTGATATGGCTTTTCCTCGAATAAATAATTTAAGTTTTTGATTATTACCACCTTCTTTATTATTATTATTTATTTCTTCTATAGTTGAGATAGGAGTTGGTGCGGGTTGAACAGTTTATCCTCCGTTGGCTTCTGTTATAGGTCATTCTGGTAGAGCTGTGGATTTTGCTATTTTTTCTTTACATTTAGCTGGTGCATCTTCTATTATAGGTGCTATTAATTTTATTACTACTGTAATTAATATACGATCTATTGGAATAACTATAGAAAAGGTTCCTTTATTTGTATGATCAGTTGTAATTACTGCAGTTCTTTTATTACTATCATTACCGGTATTAGCTGGTGCAATTACTATACTATTGACTGATCGTAATTTTAATACTTCTTTTTTTGATCCTGCTGGAGGAGGAGATCCTATTTTATTTCAACACTTATTT
    ##       id.112          name.112   gene.112
    ## 1 KROK152-20 Dysdera adriatica KROK152-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.112
    ## 1 TACTTTATATTTGTTGTTTGGTGCTTGATCTGCTATAGTGGGGACAGCTATGAGTGTTTTGATTCGGGCTGAATTAGGGCAGGTGGGTGGTTTATTGGGAGATGATCATTTGTTCAATGTTGTTGTAACCGCTCATGCGTTGGTTATGATTTTTTTTATGGTAATGCCTATTATAATTGGGGGGTTTGGAAATTGGTTGGTTCCGTTAATGATTGGGGCCCCCGATATAGCTTTTCCACGTATAAATAATTTAAGCTTTTGACTTCTACCCCCATCGTTAGTGTTATTGGTAATTTCTTCTATAGTTGAAATAGGGGTAGGGGCGGGTTGAACTATTTATCCACCTCTTTCTGGGAGAGTAGGGCATTTTGGTGTATCTGTAGATTTGGCTATTTTTAGTCTTCATTTAGCGGGAGCGTCTTCTATTATGGGGGCTATTAATTTTATTTCGACGATTTTTAATATGCGATCTGTTGGTATAACTATAGAGAGGGTACCTTTGTTTGTGTGGTCTGTGTTGGTTACTGCTATTTTGTTGCTTTTATCTCTTCCTGTTTTAGCAGGGGCTATTACTATATTATTGACGGATCGAAATTTTAATACATCGTTTTTTGACCCGGCGGGGGGCGGGGATCCAATTTTGTTTCAGCATTTATTT
    ##       id.113         name.113   gene.113
    ## 1 KROK153-20 Robertus lividus KROK153-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.113
    ## 1 GACTTTATATTTGATTTTTGGGGTGTGATCAGCTATAGTTGGTACAGCTATGAGTGTCCTAATTCGGGTAGAATTAGGACAATCTGGAAGATTGTTAGGGGATGATCAATTATATAATGTAATTGTAACTGCTCATGCTTTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGGGGGTTTGGAAATTGATTAGTTCCTTTAATATTAGGGGCTCCAGATATAGCTTTCCCTCGAATAAATAATTTAAGATTTTGATTATTACCTCCTTCTTTATTTCTATTATTTATTTCTTCTATAGTTGAAATAGGAGTAGGAGCTGGGTGGACAATTTATCCTCCTTTATCTTCTTTAGAGGGTCATTCAGGAAGATCAGTTGATTTTGCTATTTTTTCTCTTCATCTTGCAGGTGCTTCTTCTATTATAGGGGCTGTAAATTTTATTTCTACTATTTTAAATATACGTGTGTATGGAATATCTATAGAAAAAGTTACTTTATTTGTATGATCAGTTTTAATTACTGCTATTCTTTTATTATTATCGTTACCTGTTTTAGCAGGAGCTATTACTATGTTATTAACTGATCGAAATTTTAATACTTCTTTTTTTGACCCTTCTGGAGGGGGAGATCCAATTTTATTTCAACATTTATTT
    ##       id.114         name.114   gene.114
    ## 1 KROK154-20 Robertus lividus KROK154-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.114
    ## 1 GACTTTATATTTGATTTTTGGGGTGTGATCAGCTATAGTTGGTACAGCTATGAGTGTCCTAATTCGGGTAGAATTAGGACAATCTGGAAGATTGTTAGGGGATGATCAATTATATAATGTAATTGTAACTGCTCATGCTTTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGGGGGTTTGGAAATTGATTAGTTCCTTTAATATTAGGGGCTCCAGATATAGCTTTCCCTCGAATAAATAATTTAAGATTTTGATTATTACCTCCTTCTTTATTTCTATTATTTATTTCTTCTATAGTTGAAATAGGAGTAGGAGCTGGGTGGACAATTTATCCTCCTTTATCTTCTTTAGAGGGTCATTCAGGAAGATCAGTTGATTTTGCTATTTTTTCTCTTCATCTTGCAGGTGCTTCTTCTATTATAGGGGCTGTAAATTTTATTTCTACTATTTTAAATATACGTGTGTATGGAATATCTATAGAAAAAGTTACTTTATTTGTATGATCAGTTTTAATTACTGCTATTCTTTTATTATTATCGTTACCTGTTTTAGCAGGAGCTATTACTATGTTATTAACTGATCGAAATTTTAATACTTCTTTTTTTGACCCTTCTGGAGGGGGAGATCCAATTTTATTTCAACATTTATTT

Credit for below code:
<https://stackoverflow.com/questions/26973029/split-one-row-after-every-3rd-column-and-transport-those-3-columns-as-a-new-row>

``` r
seqlist<- as.data.frame(matrix(unlist(sequence_df, use.names = FALSE), ncol = 4, byrow= TRUE))
```

``` r
seqlist1=seqlist
colnames(seqlist1) = c("id", "name", "gene", "sequence")

seqlist2 <- as.tibble(seqlist1) %>%select(1,4)
```

    ## Warning: `as.tibble()` was deprecated in tibble 2.0.0.
    ## Please use `as_tibble()` instead.
    ## The signature and semantics have changed, see `?as_tibble`.
    ## This warning is displayed once every 8 hours.
    ## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was generated.

now seqlist2 contains the data we need to merge with our original file

################################### 

\#New Thing!!##

``` r
check2_1<- bold_seq(taxon = NULL, ids = bdj$processid, bin = NULL, container = NULL, institutions = NULL, researchers = NULL, geo = NULL, marker = "COI-5P", response = FALSE)
```

Here we matched the bin_uri information to the BOLD database, retrieved
the sequence. And next we checked manually the first few entries against
the NCBI database to double check the correct species was identified. We
used process_id and bin_uri to define the gene and the species.

check2 was the practice data. Next we need to read the check2 into a
table or similar and extract the sequences. First we make the BOLD
output file into a dataframe. This is a very wide dataframe with many
columns.

``` r
str(check2_1)
```

    ## List of 124
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK002-19"
    ##   ..$ name    : chr "Abax parallelepipedus"
    ##   ..$ gene    : chr "KROK002-19"
    ##   ..$ sequence: chr "AACATTATACTTTATTTTTGGTGCATGATCAGGAATAGTCGGAACCTCTTTAAGAATGTTAATTCGACTTGAATTAGGAAATCCTGGATCACTAATTGGTGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK003-19"
    ##   ..$ name    : chr "Cychrus attenuatus"
    ##   ..$ gene    : chr "KROK003-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTTGGTGCTTGATCAGGGATAGTAGGAACTTCCCTAAGAATACTAATTCGAGCTGAACTAGGAAATCCAGGGTCCTTAATCGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK004-19"
    ##   ..$ name    : chr "Licinus hoffmannseggii"
    ##   ..$ gene    : chr "KROK004-19"
    ##   ..$ sequence: chr "AACTTTATATTTCATTTTCGGGGCCTGAGCAGGAATAGTAGGTACTTCTTTAAGTATATTAATTCGAGCTGAATTAGGAAATCCAGGATCACTTATTGGTGATGATCAGAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK005-19"
    ##   ..$ name    : chr "Pterostichus burmeisteri"
    ##   ..$ gene    : chr "KROK005-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTTGGTATATGAGCAGGAATAGTAGGTACTTCATTAAGTATATTAATTCGAGCTGAATTAGGTAATCCTGGATCATTAATTGGTGACGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK006-19"
    ##   ..$ name    : chr "Carabus coriaceus"
    ##   ..$ gene    : chr "KROK006-19"
    ##   ..$ sequence: chr "AAATAATATAAGATTTTGACTTCTTCCCCCTTCTTTAACTCTCCTCCTAATAAGAAGTATAGTTGAAAAAGGGGCAGGTACAGGATGAACAGTATACCCCCCGCTCTCTTC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK007-19"
    ##   ..$ name    : chr "Carabus croaticus"
    ##   ..$ gene    : chr "KROK007-19"
    ##   ..$ sequence: chr "GATATTGGAACTTTATATTTCATTTTTGGTGCCTGATCCGGAATAGTAGGAACTTCATTAAGAATATTAATCCGGGCCGAATTAGGTAACCCCGGATCCTTAATTGGAGAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK008-19"
    ##   ..$ name    : chr "Abax ovalis"
    ##   ..$ gene    : chr "KROK008-19"
    ##   ..$ sequence: chr "AAGATATTGGAACACTATATTTTATTTTTGGTACATGATCAGGAATAGTAGGAACATCTTTAAGAATATTAATTCGAGCTGAATTAGGAAATCCAGGATCATTAATTGGTG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK010-19"
    ##   ..$ name    : chr "Notiophilus biguttatus"
    ##   ..$ gene    : chr "KROK010-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATCTTTGGGGCTTGGTCAGGGATAGTTGGAACTTCTTTAAGAATACTAATTCGAGCAGAATTAGGAAATCCTGGATCTTTAATTGGAGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK011-19"
    ##   ..$ name    : chr "Carabus creutzeri"
    ##   ..$ gene    : chr "KROK011-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTTGGTGCTTGATCAGGAATAGTGGGAACTTCTTTAAGAATACTAATTCGAGCTGAATTAGGTAACCCTGGATCCTTAATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK012-19"
    ##   ..$ name    : chr "Molops piceus"
    ##   ..$ gene    : chr "KROK012-19"
    ##   ..$ sequence: chr "GATATTGGAACATTATATTTTATTTTTGGAGCATGAGCAGGGATAGTAGGAACATCATTAAGAATATTGATTCGAGCTGAATTAGGAAGCCCAGGATCACTAATTGGAGAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK013-19"
    ##   ..$ name    : chr "Trechus croaticus"
    ##   ..$ gene    : chr "KROK013-19"
    ##   ..$ sequence: chr "AACCTTATATTTCATTTTTGGAGCTTGGGCAGGAATAGTAGGAACATCATTAAGAATATTAATTCGAGCTGAATTAGGAAATCCTGGTTCTTTAATTGGAGACGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK014-19"
    ##   ..$ name    : chr "Stenichnus collaris"
    ##   ..$ gene    : chr "KROK014-19"
    ##   ..$ sequence: chr "TACCCTTTATTTTATTTTAGGAATTTGATCTGGAATATTAGGAACTTCTTTAAGTTTGCTAATTCGATTAGAATTAAGATCCCCAGGTATAATAATTGGAAATGATCAAAC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK015-19"
    ##   ..$ name    : chr "Molops striolatus"
    ##   ..$ gene    : chr "KROK015-19"
    ##   ..$ sequence: chr "AACATTATATTTCATTCTTGGGGCATGGTCAGGAATAGTAGGAACCTCCTTAAGAATATTAATTCGAGCTGAATTAGGAAATCCGGGGTCCTTGATTGGAGATGACCAGAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK016-19"
    ##   ..$ name    : chr "Pterostichus oblongopunctatus"
    ##   ..$ gene    : chr "KROK016-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTTGGTGCGTGATCTGGAATAGTCGGAACTTCTTTAAGTATATTAATTCGAGCTGAATTAGGAAATCCTGGAGCTTTAATTGGTGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK017-19"
    ##   ..$ name    : chr "Molops piceus"
    ##   ..$ gene    : chr "KROK017-19"
    ##   ..$ sequence: chr "AAGATATTGGAACATTATATTTTATTTTTGGAGCATGAGCAGGGATAGTAGGAACATCATTAAGAATATTGATTCGAGCTGAATTAGGAAGCCCAGGATCACTAATTGGAG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK018-19"
    ##   ..$ name    : chr "Molops piceus"
    ##   ..$ gene    : chr "KROK018-19"
    ##   ..$ sequence: chr "AACATTATATTTTATTTTTGGAGCATGAGCAGGGATAGTAGGAACATCATTAAGAATATTGATTCGAGCTGAATTAGGAAGCCCAGGATCACTAATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK019-19"
    ##   ..$ name    : chr "Carabus catenulatus"
    ##   ..$ gene    : chr "KROK019-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTTGGTGCCTGATCAGGAATAGTGGGAACTTCATTAAGAATACTAATTCGAGCCGAATTAGGTAATCCCGGATCCTTAATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK020-19"
    ##   ..$ name    : chr "Carabus irregularis"
    ##   ..$ gene    : chr "KROK020-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTTGGTGCTTGATCAGGAATAGTGGGAACTTCTTTAAGAATACTAATTCGAGCTGAATTAGGTAACCCTGGATCCTTAATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK021-19"
    ##   ..$ name    : chr "Nebria dahlii"
    ##   ..$ gene    : chr "KROK021-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTCGGTGCTTGAGCAAGAATGGTAGGAACTTCTTTAAGAATATTAATTCGAGCTGAGTTAGGAAATCCGGGATCTTTAATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK022-19"
    ##   ..$ name    : chr "Platynus scrobiculatus"
    ##   ..$ gene    : chr "KROK022-19"
    ##   ..$ sequence: chr "AACTTTATATTTTATTTTTGGTGCATGATCAGGGATAGTAGGAACTTCATTAAGAATATTAATTCGATTAGAGTTAGGTAGTCCTGGGTCATTGATTGGAGACGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK023-19"
    ##   ..$ name    : chr "Dima elateroides"
    ##   ..$ gene    : chr "KROK023-19"
    ##   ..$ sequence: chr "GATATTGGAACATTATACTTCATTTTTGGAGCATGGGCCGGCATACTAGGCACTTCTCTCAGGCTCCTAATCCGGGCAGAACTAGGCAACCCTGGTTCATTAATTGGAAAC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK025-19"
    ##   ..$ name    : chr "Clinopodes carinthiacus"
    ##   ..$ gene    : chr "KROK025-19"
    ##   ..$ sequence: chr "AACCATGTATCTAATTTTTGGCGCTTGAGCAGCTATAGCTGGAACAGCTTTAAGAATTATTGTGCGACTAGAGCTCAGCCAACCCGGGGCCCTAATTGGGGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK026-19"
    ##   ..$ name    : chr "Dicellophilus carniolensis"
    ##   ..$ gene    : chr "KROK026-19"
    ##   ..$ sequence: chr "AACCATGTACCTCATATTTGGAGCCTGAGCCGCAATAGCTGGTACTGCCCTAAGATTATTGATCCGATTAGAGCTAAGACAGCCCGGAACCCTAATCGGGGATGACCAAAC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK027-19"
    ##   ..$ name    : chr "Eurygeophilus pinguis"
    ##   ..$ gene    : chr "KROK027-19"
    ##   ..$ sequence: chr "CACCATATACTTAATCTTCGGAGCCTGAGCCGCCATAGCGGGAACCGCTCTTAGCCTAATTATTCGGCTAGAACTAGGACAACCAGGAACACTTATAGGAGACGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK029-19"
    ##   ..$ name    : chr "Schendyla tyrolensis"
    ##   ..$ gene    : chr "KROK029-19"
    ##   ..$ sequence: chr "AACCATATATTTAATTTTCGGAGCATGGGCCTCAATAGCCGGGACAGCCCTCAGCCTTATTATCCGACTAGAATTGAGCCAGCCAGGGAGTCTCATTGGAGACGACCAAAC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK030-19"
    ##   ..$ name    : chr "Strigamia acuminata"
    ##   ..$ gene    : chr "KROK030-19"
    ##   ..$ sequence: chr "AACAATATACCTAATCTTCGGAACTTGAGCCGCAATAGCAGGAACTGCCCTAAGCCTAATCATTCGAATAGAACTAAGACAACCAGGAACCTTAATTGGAGACGACCAGAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK031-19"
    ##   ..$ name    : chr "Strigamia transsilvanica"
    ##   ..$ gene    : chr "KROK031-19"
    ##   ..$ sequence: chr "AACTATATATCTAATCTTCGGAACCTGAGCCGCAATAGCAGGGACCGCACTAAGCCTAATCATTCGAATAGAACTAAGCCAACCCGGAACACTTATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK032-19"
    ##   ..$ name    : chr "Dicellophilus carniolensis"
    ##   ..$ gene    : chr "KROK032-19"
    ##   ..$ sequence: chr "AACCATGTACCTCATATTTGGAGCCTGAGCCGCAATAGCTGGTACTGCCCTAAGATTATTGATCCGATTAGAGCTAAGACAGCCCGGAACCCTAATCGGGGATGACCAAAC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK035-19"
    ##   ..$ name    : chr "Eupolybothrus tridentinus"
    ##   ..$ gene    : chr "KROK035-19"
    ##   ..$ sequence: chr "AAGATATTGGAACAATATACTTTATCTTCGGGATCTGAGCCTCTATAGTAGGAACAGCCCTAAGTCTACTAATTCGGTTAGAATTAAGCCAACCAGGAAGATTAATTGGAG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK036-19"
    ##   ..$ name    : chr "Harpolithobius gottscheensis"
    ##   ..$ gene    : chr "KROK036-19"
    ##   ..$ sequence: chr "AACAATATATTTTGTATTAGGAATCTGATCAGCAATAATCGGTACCGGTCTTAGAATTCTTATTCGATTGGAATTAAGACAACCTGGAAGATTAATTGGAGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK037-19"
    ##   ..$ name    : chr "Lithobius castaneus"
    ##   ..$ gene    : chr "KROK037-19"
    ##   ..$ sequence: chr "CACTATATACTTTATCTTCGGAATCTGGTCATCAATAATCGGTACCGCTCTTAGCCTATTAATTCGACTAGAATTAAGTCAGCCAGGAAGTCTAATTGGTGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK038-19"
    ##   ..$ name    : chr "Lithobius dentatus"
    ##   ..$ gene    : chr "KROK038-19"
    ##   ..$ sequence: chr "AACAATATACTTTATTTTAGGAATCTGATCTGCAATAATTGGAACAGGCTTAAGACTACTAATTCGACTTGAATTAAGCCAACCAGGAAGATTAATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK039-19"
    ##   ..$ name    : chr "Lithobius latro"
    ##   ..$ gene    : chr "KROK039-19"
    ##   ..$ sequence: chr "AACCATATATTTTGTATTAGGAATTTGATCAGCAATAATTGGTACAGGACTCAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK041-19"
    ##   ..$ name    : chr "Lithobius tenebrosus"
    ##   ..$ gene    : chr "KROK041-19"
    ##   ..$ sequence: chr "AACTATATACTTCATTCTAGGAATTTGATCAGCCATAATTGGCACAGGATTAAGAATTCTTATCCGATTAGAACTTAGTCAACCAGGAAGACTAATTGGGGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK042-19"
    ##   ..$ name    : chr "Lithobius validus"
    ##   ..$ gene    : chr "KROK042-19"
    ##   ..$ sequence: chr "AACTATATATTTTATCTTAGGAATCTGGTCAGCAATAATCGGAACAGGATTAAGCCTTCTCATTCGACTAGAATTAAGCCAACCAGGGAGATTAATTGGAGACGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK043-19"
    ##   ..$ name    : chr "Sigibius anici"
    ##   ..$ gene    : chr "KROK043-19"
    ##   ..$ sequence: chr "TACTATATATTTTGTGTTTGGAATTTGATCATCTATAATTGGAACTGCTCTTAGTCTTCTAATTCGTTTAGAATTAAGACAGCCAGGAAGATTAATTGGAGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK044-19"
    ##   ..$ name    : chr "Lithobius carinthiacus"
    ##   ..$ gene    : chr "KROK044-19"
    ##   ..$ sequence: chr "AGATATTGGAACTATATATTTTATCTTCGGAACATGATCAGCTATAATCGGAACCTCCCTGAGACTTTTAATTCGTCTAGAATTAAGTCAGCCTGGGAGACTAATTGGAGA"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK046-19"
    ##   ..$ name    : chr "Lithobius dentatus"
    ##   ..$ gene    : chr "KROK046-19"
    ##   ..$ sequence: chr "ATATTGGAACAATATACTTTATTTTAGGAATCTGATCTGCAATAATTGGAACAGGCTTAAGACTACTAATTCGACTTGAATTAAGCCAACCAGGAAGATTAATTGGAGATG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK047-19"
    ##   ..$ name    : chr "Lithobius forficatus"
    ##   ..$ gene    : chr "KROK047-19"
    ##   ..$ sequence: chr "AACTATATATTTTGTGCTAGGAATTTGGTCAGCAATAATCGGTACTGGCCTTAGTCTTCTTATTCGATTGGAATTAAGCCAACCGGGGAGATTAATTGGAGACGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK048-19"
    ##   ..$ name    : chr "Eupolybothrus grossipes"
    ##   ..$ gene    : chr "KROK048-19"
    ##   ..$ sequence: chr "TACTATATACTTTATTTTTGGAATTTGAGCATCAATAGTTGGAACAGCATTAAGTCTTCTAATCCGGTTAGAATTAAGCCAGCCAGGAAGACTAATTGGTGACGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK050-19"
    ##   ..$ name    : chr "Cryptops parisi"
    ##   ..$ gene    : chr "KROK050-19"
    ##   ..$ sequence: chr "ATATTGGAACAATATACTTAATTTTTGGAGCTTGAGCAGCCATATTAGGAACATCTTTAAGCTTACTAATCCGAMTAGAATTAAGCCAACCAGGAACTTTAATTGGAGATG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK052-19"
    ##   ..$ name    : chr "Coelotes atropos"
    ##   ..$ gene    : chr "KROK052-19"
    ##   ..$ sequence: chr "AACTTTGTATTTAGTTTTTGGGGCTTGGTCTGCTATAGTTGGAACAGCTATAAGAGTATTAATTCGAATTGAATTAGGTCAATCAGGAAGTTTTTTGGGTGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK053-19"
    ##   ..$ name    : chr "Histopona luxurians"
    ##   ..$ gene    : chr "KROK053-19"
    ##   ..$ sequence: chr "AGATATTGGAACATTGTATTTAATTTTTGGGACGTGATCTGCTATAGTGGGAATAGCTATAAGTGTTCTTATTCGAATTGAATTAGGACAATCAGGAAGATTTTTGGGTGA"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK054-19"
    ##   ..$ name    : chr "Histopona torpida"
    ##   ..$ gene    : chr "KROK054-19"
    ##   ..$ sequence: chr "AACATTATATTTAATTTTTGGTGTGTGATCTGCTATAGTGGGGACTGCAATAAGAGTTATTATTCGAATTGAATTAGGTCAGTCTGGTAGTTTTTTAGGAGATGATCATCT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK055-19"
    ##   ..$ name    : chr "Inermocoelotes anoplus"
    ##   ..$ gene    : chr "KROK055-19"
    ##   ..$ sequence: chr "TTCTATGTATTTAATTTTTGGAGCTTGATCTGCTATAGTTGGTACCGCTATAAGAGTTTTAATCCGAATTGAATTAGGTCAATCAGGAAGATTTTTGGGTGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK056-19"
    ##   ..$ name    : chr "Inermocoelotes inermis"
    ##   ..$ gene    : chr "KROK056-19"
    ##   ..$ sequence: chr "AGATATTGGTACTTTGTATTTGATTTTTGGAGCTTGATCTGCTATAGTTGGTACAGCTATAAGAGTTTTGATTCGGATTGAATTAGGTCAACCAGGAAGATTTTTAGGTGA"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK057-19"
    ##   ..$ name    : chr "Tegenaria silvestris"
    ##   ..$ gene    : chr "KROK057-19"
    ##   ..$ sequence: chr "GACATTGTATTTAATTTTTGGTGCTTGGTCAGCTATAGTTGGAACTGCTATAAGAGTTTTAATTCGAATTGAATTGGGTCAGCCGGGGAGATTTATTGGTGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK058-19"
    ##   ..$ name    : chr "Amaurobius obustus"
    ##   ..$ gene    : chr "KROK058-19"
    ##   ..$ sequence: chr "AAGATATTGGAACATTATATTTAATTTTTGGAGCTTGAGCATCTATAGTTGGAATAGCTATAAGAGTTTTAATTCGAATTGAATTAGGACAATCAGGAAGTTTATTTGGAG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK059-19"
    ##   ..$ name    : chr "Comaroma simoni"
    ##   ..$ gene    : chr "KROK059-19"
    ##   ..$ sequence: chr "AAAAGATATTGGGACGTTATATTTTCTATTTGGGTCTTGAGCAGCGATAGTGGGGACAGGTATGAGAATACTAATTCGTATTGAATTAGGACAGAGGGGGAGTTTGTTAGG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK060-19"
    ##   ..$ name    : chr "Clubiona terrestris"
    ##   ..$ gene    : chr "KROK060-19"
    ##   ..$ sequence: chr "AAGTTTATATTTAATTTTTGGTACTTGGTCTGCTATGGTTGGAACAGCTATAAGAGTTTTAATTCGAATGGAATTAGGACAATCTGGTATATTTTTAGGAGATGATCATCT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK061-19"
    ##   ..$ name    : chr "Dasumia canestrinii"
    ##   ..$ gene    : chr "KROK061-19"
    ##   ..$ sequence: chr "AACTTTATATTTATTGTTTGGAGCTTGATCGGCTATAGCCGGAACTGCAATGAGAGTGCTTATTCGGGTTGAGTTGGGTCAGTTGGGGAGATTGTTGGGTGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK064-19"
    ##   ..$ name    : chr "Dysdera adriatica"
    ##   ..$ gene    : chr "KROK064-19"
    ##   ..$ sequence: chr "TACTTTATATTTGTTGTTTGGTGCTTGATCTGCTATAGTGGGGACAGCTATGAGTGTTTTGATTCGGGCTGAATTAGGGCAGGTGGGTGGTTTATTGGGAGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK065-19"
    ##   ..$ name    : chr "Dysdera ninnii"
    ##   ..$ gene    : chr "KROK065-19"
    ##   ..$ sequence: chr "AACGTTATATTTGTTGTTTGGTGCTTGGTCAGCTATGGTAGGGACTGCTATAAGAGTATTAATTCGAACTGAATTAGGGCAAGTGGGGAGTTTGTTGGGGGATGACCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK066-19"
    ##   ..$ name    : chr "Dysdera ninnii"
    ##   ..$ gene    : chr "KROK066-19"
    ##   ..$ sequence: chr "AACGTTATATTTGTTGTTTGGTGCTTGGTCAGCTATGGTAGGGACTGCTATAAGAGTATTAATTCGAACTGAATTAGGGCAAGTGGGGAGTTTGTTGGGGGATGACCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK067-19"
    ##   ..$ name    : chr "Haplodrassus silvestris"
    ##   ..$ gene    : chr "KROK067-19"
    ##   ..$ sequence: chr "AACTTTATATTTATTATTTGGATCTTGAGCTGCTATAGTAGGAACAGCAATAAGAGTATTAATTCGAATAGAATTAGGTCAATCTGGGAGATTGATGGGTGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK068-19"
    ##   ..$ name    : chr "Hahnia pusilla"
    ##   ..$ gene    : chr "KROK068-19"
    ##   ..$ sequence: chr "GTCGTTGTATTTGATTTTTGGAGCATGGTCGGCTATAGTAGGGACTGCAATAAGAGTTCTTATTCGAATTGAGTTGGGACAACCTGGTAGATTTATAGGAGATGACCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK069-19"
    ##   ..$ name    : chr "Robertus lividus"
    ##   ..$ gene    : chr "KROK069-19"
    ##   ..$ sequence: chr "AACTTTATATTTGATTTTTGGGGTGTGATCAGCTATAGTTGGTACAGCTATGAGTGTCCTAATTCGGGTAGAATTAGGACAATCTGGAAGATTGTTAGGGGATGATCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK070-19"
    ##   ..$ name    : chr "Ceratinella brevis"
    ##   ..$ gene    : chr "KROK070-19"
    ##   ..$ sequence: chr "GAGTTTATATTTTATTTTTGGAGCTTGAGCTGCTATAGTAGGGACAGCAATAAGAGTATTGATTCGTGTTGAGTTAGGACAAATTGGAAGATTATTAGGGGATGATCAGTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK072-19"
    ##   ..$ name    : chr "Diplocephalus picinus"
    ##   ..$ gene    : chr "KROK072-19"
    ##   ..$ sequence: chr "AAGTTTATATTTTATTTTTGGGGCTTGGGCTGCTATAGTTGGAACAGCGATAAGAGTTTTAATTCGGATTGAGTTAGGTCAAACTGGAAGATTATTGGGGGATGATCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK073-19"
    ##   ..$ name    : chr "Erigone autumnalis"
    ##   ..$ gene    : chr "KROK073-19"
    ##   ..$ sequence: chr "GATATTGGTAGTTTATATTTTATTTTTGGTGCATGATCTGCTATAGTAGGGACAGCGATAAGAGTTTTAATTCGAATTGAATTAGGTCAAACTGGTAGTTTATTAGGTGAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK074-19"
    ##   ..$ name    : chr "Maso sundevalli"
    ##   ..$ gene    : chr "KROK074-19"
    ##   ..$ sequence: chr "AAGTTTATATTTTGTGTTTGGTGCGTGAGCTGCCATAGTGGGTACGGCGATGAGAGTATTAATTCGAATTGAGTTGGGACAGACTGGTAGATTATTAGGGGATGACCAGTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK075-19"
    ##   ..$ name    : chr "Mermessus trilobatus"
    ##   ..$ gene    : chr "KROK075-19"
    ##   ..$ sequence: chr "AAGTTTATATTTTGTTTTTGGGGCTTGATCTGCTATAGTAGGTACAGCGATAAGAGTATTAATTCGAATTGAATTAGGACAAGTTGGTAGACTTTTAGGAGATGATCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK077-19"
    ##   ..$ name    : chr "Microneta viaria"
    ##   ..$ gene    : chr "KROK077-19"
    ##   ..$ sequence: chr "AAGTTTATATTTTGTATTTGGGGCTTGGTCTGCGATAGTTGGAACGGCAATAAGAGTATTAATTCGAGTTGAGTTAGGTCAAGTTGGTAGTTTGTTAGGAGATGATCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK078-19"
    ##   ..$ name    : chr "Scotargus pilosus"
    ##   ..$ gene    : chr "KROK078-19"
    ##   ..$ sequence: chr "TTGTTACTGCSCMTGCTTTTGTAATAATTTTTTTTATGGTCATGCCAATTTTAATTGGGGGGTTTGGAAATTGGTTAGTTCCTTTAATGTTAGGGGCACCMSATATGGCTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK079-19"
    ##   ..$ name    : chr "Tenuiphantes flavipes"
    ##   ..$ gene    : chr "KROK079-19"
    ##   ..$ sequence: chr "GACTTTATATTTTATTTTTGGAGCGTGAGCTGCTATAGTAGGAACTGCTATAAGAGTATTAATTCGGATTGAATTGGGGCAAACTGGAAGAATACTGGGGGATGACCAGTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK080-19"
    ##   ..$ name    : chr "Centrophantes roeweri"
    ##   ..$ gene    : chr "KROK080-19"
    ##   ..$ sequence: chr "TAGTTTATATTTTATTTTTGGGGCTTGATCTGCTATGGTTGGGACTGCTATAAGAGTTTTAATTCGAATTGAGCTTGGGCAAATTGGGAGAATGTTGGGAGATGACCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK082-19"
    ##   ..$ name    : chr "Tenuiphantes tenebricola"
    ##   ..$ gene    : chr "KROK082-19"
    ##   ..$ sequence: chr "AAGATATTGGAACTTTATATTTTATTTTTGGAGCGTGAGCTGCTATAGTAGGAACTGCTATAAGAGTATTAATTCGAATTGAGTTGGGACAAACTGGAAGTATATTAGGGG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK083-19"
    ##   ..$ name    : chr "Walckenaeria antica"
    ##   ..$ gene    : chr "KROK083-19"
    ##   ..$ sequence: chr "AAGTTTATATTTTATATTTGGAGCTTGGGSTGCTATAGTAGGAACAGCAATAAGAGTATTAATTCGAATTGAATTAGGGCAAGGTGGTAGTTTGTYAGGGGACGATCAGTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK084-19"
    ##   ..$ name    : chr "Walckenaeria mitrata"
    ##   ..$ gene    : chr "KROK084-19"
    ##   ..$ sequence: chr "AAGTTTATATTTTATTTTTGGAGCTTGGGCTGCTATAGTAGGTACAGCAATAAGAGTATTAATTCGAATTGAATTAGGACAGATTGGGAGTTTATTGGGAGATGATCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK085-19"
    ##   ..$ name    : chr "Pardosa alacris"
    ##   ..$ gene    : chr "KROK085-19"
    ##   ..$ sequence: chr "TACTTTATATCTAATATTTGGAGTTTGATCGGCTATAATAGGGACTGCTATAAGAGTATTAATTCGAATAGAATTAGGAAATCCTGGGAGATTATTAGGTGATGATCATTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK086-19"
    ##   ..$ name    : chr "Trochosa terricola"
    ##   ..$ gene    : chr "KROK086-19"
    ##   ..$ sequence: chr "AAGATATTGGTACTTTGTATTTAATGTTTGGTGCATGATCTGCTATAGTGGGAACTGCTATAAGAGTGTTGATTCGTTTAGAATTAGGGAATTCTGGAAGTTTATTAGGGG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK087-19"
    ##   ..$ name    : chr "Zora nemoralis"
    ##   ..$ gene    : chr "KROK087-19"
    ##   ..$ sequence: chr "WAAGATATTGGTACTTTATATTTAATTTTTGGAGTTTGATCTGCTATGGTAGGAACAGCAATAAGAATGTTAATTCGATTGGAATTGGGACAAGTTGGAAGATTTATAGGC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK088-19"
    ##   ..$ name    : chr "Segestria senoculata"
    ##   ..$ gene    : chr "KROK088-19"
    ##   ..$ sequence: chr "GACATTATATTTAATTTTTGGGGCTTGAGCTGCTATAGCGGGGACTGCTATAAGTGTGTTGATTCGGGTTGAATTAGGGCAGGTTGGGAGTTTTTTGGGGGATGATCATCT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK089-19"
    ##   ..$ name    : chr "Robertus lividus"
    ##   ..$ gene    : chr "KROK089-19"
    ##   ..$ sequence: chr "TAAAGATATTGGAACTTTATATTTGATTTTTGGGGTGTGATCAGCTATAGTTGGTACAGCTATGAGTGTCCTAATTCGGGTAGAATTAGGACAATCTGGAAGATTGTTAGG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK090-20"
    ##   ..$ name    : chr "Clinopodes carinthiacus"
    ##   ..$ gene    : chr "KROK090-20"
    ##   ..$ sequence: chr "AACCATGTATCTAATTTTTGGTGCTTGGGCGGCAATAGCTGGAACAGCTTTAAGAATTATTGTCCGACTAGAGCTTAGTCAACCTGGGGCCCTAATCGGGGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK091-20"
    ##   ..$ name    : chr "Dicellophilus carniolensis"
    ##   ..$ gene    : chr "KROK091-20"
    ##   ..$ sequence: chr "TCGGGGATGACCAAACTTATAATGTAGTAGTAACAGCTCACGCCTTCGTAATAATTTTTTTCATAGTAATACCTATTATAATAGGAGGATTCGGCAATTGACTTCTACCTC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK092-20"
    ##   ..$ name    : chr "Schendyla armata"
    ##   ..$ gene    : chr "KROK092-20"
    ##   ..$ sequence: chr "GGGCCTCAATAGCAGGGACAGCCCTCAGCCTTATCATTCGACTCGAACTAAGCCAGCCAGGGAGTCTCATTGGGGACGACCAAACCTATAACGTTATTGTCACCGCCCATG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK095-20"
    ##   ..$ name    : chr "Schendyla tyrolensis"
    ##   ..$ gene    : chr "KROK095-20"
    ##   ..$ sequence: chr "ACTAGAATTGAGCCAGCCAGGGAGTCTCATTGGAGACGACCAAACCTATAATGTCATCGTCACTGCCCACGCTTTTGTAATAATTTTCTTTATAGTAATGCCCATTATAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK096-20"
    ##   ..$ name    : chr "Strigamia acuminata"
    ##   ..$ gene    : chr "KROK096-20"
    ##   ..$ sequence: chr "AACAATATACCTAATCTTCGGAACTTGAGCCGCAATAGCAGGAACAGCCCTAAGCCTAATCATTCGAATAGAATTAAGTCAACCGGGAAGACTAATTGGAGACGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK098-20"
    ##   ..$ name    : chr "Clinopodes carinthiacus"
    ##   ..$ gene    : chr "KROK098-20"
    ##   ..$ sequence: chr "AACCATGTATCTAATTTTTGGCGCTTGAGCAGCTATAGCTGGAACAGCTTTAAGAATTATTGTGCGACTAGAGCTCAGCCAACCCGGGGCCCTAATTGGGGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK100-20"
    ##   ..$ name    : chr "Clinopodes carinthiacus"
    ##   ..$ gene    : chr "KROK100-20"
    ##   ..$ sequence: chr "AACCATGTATCTAATTTTTGGTGCTTGGGCGGCAATAGCTGGAACAGCTTTAAGAATTATTGTCCGACTAGAGCTTAGTCAACCTGGGGCCCTAATCGGGGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK102-20"
    ##   ..$ name    : chr "Schendyla armata"
    ##   ..$ gene    : chr "KROK102-20"
    ##   ..$ sequence: chr "GAGCATGGGCCTCAATAGCAGGGACAGCCCTCAGCCTTATCATTCGACTCGAACTAAGCCAGCCAGGGAGTCTCATTGGGGACGACCAAACCTATAACGTTATTGTCACCG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK103-20"
    ##   ..$ name    : chr "Harpolithobius gottscheensis"
    ##   ..$ gene    : chr "KROK103-20"
    ##   ..$ sequence: chr "AACAATATATTTTGTATTAGGAATCTGATCAGCAATAATCGGTACCGGTCTTAGAATTCTTATTCGATTGGAATTAAGACAACCTGGAAGATTAATTGGAGATGACCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK104-20"
    ##   ..$ name    : chr "Lithobius dentatus"
    ##   ..$ gene    : chr "KROK104-20"
    ##   ..$ sequence: chr "AACAATATACTTTATTTTAGGAATTTGATCAGCTATAATTGGAACAGGACTTAGCTTATTAATTCGATTAGAACTTAGCCAACCAGGGAGATTAATTGGGGATGATCAAAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK105-20"
    ##   ..$ name    : chr "Lithobius latro"
    ##   ..$ gene    : chr "KROK105-20"
    ##   ..$ sequence: chr "AACCATATATTTTGTATTAGGAATTTGATCAGCAATAATTGGTACAGGACTTAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK106-20"
    ##   ..$ name    : chr "Lithobius validus"
    ##   ..$ gene    : chr "KROK106-20"
    ##   ..$ sequence: chr "CAGCAATAATCGGAACAGGATTAAGCCTTCTCATTCGACTAGAATTAAGCCAACCAGGGAGATTAATTGGAGACGATCAAATTTATAACGTAATCGTAACAGCTCATGCAT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK108-20"
    ##   ..$ name    : chr "Lithobius tenebrosus"
    ##   ..$ gene    : chr "KROK108-20"
    ##   ..$ sequence: chr "CACAGGATTAAGAATTCTTATCCGATTAGAACTTAGTCAACCAGGAAGACTAATTGGGGATGATCAAATTTATAATGTAATTGTAACAGCTCACGCATTCATTATAATTTT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK109-20"
    ##   ..$ name    : chr "Lithobius latro"
    ##   ..$ gene    : chr "KROK109-20"
    ##   ..$ sequence: chr "AACCATATATTTTGTATTAGGAATTTGATCAGCAATAATTGGTACAGGACTCAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK111-20"
    ##   ..$ name    : chr "Lithobius latro"
    ##   ..$ gene    : chr "KROK111-20"
    ##   ..$ sequence: chr "TTAGGGATTTGATCAGCAATAATTGGTACAGGACTCAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGTGTATAATGTTATTGTC"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK119-20"
    ##   ..$ name    : chr "Cryptops parisi"
    ##   ..$ gene    : chr "KROK119-20"
    ##   ..$ sequence: chr "AACAATATACTTAATTTTTGGAGCTTGAGCAGCYATATTAGGAACATCTTTAAGCTTACTAATYCGACTAGAATTAAGCCAACCAGGAACTTTAATTGGAGAYGAYCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK120-20"
    ##   ..$ name    : chr "Cryptops parisi"
    ##   ..$ gene    : chr "KROK120-20"
    ##   ..$ sequence: chr "AACAATATACTTAATTTTTGGAGCTTGAGCAGCCATATTAGGAACATCTTTAAGCTTACTAATCCGACTAGAATTAAGCCAACCAGGAACTTTAATTGGAGATGACCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK121-20"
    ##   ..$ name    : chr "Cryptops parisi"
    ##   ..$ gene    : chr "KROK121-20"
    ##   ..$ sequence: chr "AACAATATACTTAATTTTTGGAGCTTGAGCAGCCATATTAGGAACATCTTTAAGCTTACTAATCCGACTAGAATTAAGCCAACCAGGAACTTTAATTGGAGATGACCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK122-20"
    ##   ..$ name    : chr "Cryptops parisi"
    ##   ..$ gene    : chr "KROK122-20"
    ##   ..$ sequence: chr "AACAATATACTTAATTTTTGGAGCTTGAGCAGCCATATTAGGAACATCTTTAAGCTTACTAATYCGAATAGAATTAAGCCAACCAGGAACTTTAATTGGAGATGAYCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK123-20"
    ##   ..$ name    : chr "Cryptops parisi"
    ##   ..$ gene    : chr "KROK123-20"
    ##   ..$ sequence: chr "AACAATATACTTAATTTTTGGAGCTTGAGCAGCTATATTAGGAACATCTCTAAGCTTACTAATTCGAATAGAATTAAGCCAACCAGGAACYTTAATTGGAGAYGAYCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK124-20"
    ##   ..$ name    : chr "Cryptops parisi"
    ##   ..$ gene    : chr "KROK124-20"
    ##   ..$ sequence: chr "AACAATATACTTAATTTTTGGAGCTTGAGCAGCTATATTAGGAACATCTCTAAGCTTACTAATTCGAATAGAATTAAGCCAACCAGGAACCTTAATTGGAGACGATCAATT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK125-20"
    ##   ..$ name    : chr "Cryptops hortensis"
    ##   ..$ gene    : chr "KROK125-20"
    ##   ..$ sequence: chr "GAGCTTGAGCATCCATACTGGGGACAGCCTTAAGCCTCTTGATCCGCCTAGAGTTAAGACAACCAGGAACCYTAATCGGAGACGACCAACTCTATAACGTTGTAGTCACAG"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK126-20"
    ##   ..$ name    : chr "Cryptops hortensis"
    ##   ..$ gene    : chr "KROK126-20"
    ##   ..$ sequence: chr "AACTATATATTTAATATTTGGAGCTTGAGCATCCATACTGGGGACAGCCTTAAGCCTCTTGATCCGCCTAGAGTTAAGACAACCAGGAACCCTAATCGGAGACGACCAACT"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK127-20"
    ##   ..$ name    : chr "Coelotes atropos"
    ##   ..$ gene    : chr "KROK127-20"
    ##   ..$ sequence: chr "GAGTATTAATTCGAATTGAATTAGGTCAATCAGGAAGTTTTTTGGGTGATGATCATTTATATAATGTTATTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATAGTGA"| __truncated__
    ##  $ :List of 4
    ##   ..$ id      : chr "KROK128-20"
    ##   ..$ name    : chr "Histopona luxurians"
    ##   ..$ gene    : chr "KROK128-20"
    ##   ..$ sequence: chr "AACATTGTATTTAATTTTTGGGACGTGATCTGCTATAGTGGGAATAGCTATAAGTGTTCTTATTCGAATTGAATTAGGACAATCAGGAAGATTTTTGGGTGATGATCACCT"| __truncated__
    ##   [list output truncated]

``` r
sequence_df2<- as.data.frame(check2_1)
sequence_df2
```

    ##           id                  name       gene
    ## 1 KROK002-19 Abax parallelepipedus KROK002-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             sequence
    ## 1 AACATTATACTTTATTTTTGGTGCATGATCAGGAATAGTCGGAACCTCTTTAAGAATGTTAATTCGACTTGAATTAGGAAATCCTGGATCACTAATTGGTGATGACCAAATTTATAATGTAATTGTTACTGCACATGCATTTGTAATAATTTTTTTTATAGTAATGCCTATTATAATTGGAGGTTTCGGAAACTGATTAGTTCCTTTAATACTAGGAGCTCCTGATATAGCATTCCCTCGAATAAATAACATGAGATTCTGACTGCTCCCCCCTTCTTTAACCCTTCTCCTTATAAGCAGCATAGTTGAGAGAGGAGCTGGCACAGGATGAACAGTTTACCCACCACTTTCTTCTAATATTGCCCATAGAGGAGCCTCAGTTGACCTAGCTATTTTTAGTCTACATTTAGCTGGAATTTCTTCAATTTTAGGAGCTGTAAATTTTATTACTACAATTATCAATATACGATCTGTAGGAATAACTTTTGACCGAATACCTTTATTTGTCTGATCAGTAGGAATTACTGCTCTGTTACTATTACTATCATTACCTGTATTAGCTGGAGCAATCACAATACTTCTAACAGATCGAAATTTAAATACTTCATTTTTTGATCCTGCAGGAGGTGGAGATCCAATTTTATACCAACATTTATTT
    ##         id.1             name.1     gene.1
    ## 1 KROK003-19 Cychrus attenuatus KROK003-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           sequence.1
    ## 1 AACTTTATATTTTATTTTTGGTGCTTGATCAGGGATAGTAGGAACTTCCCTAAGAATACTAATTCGAGCTGAACTAGGAAATCCAGGGTCCTTAATCGGAGATGATCAAATCTATAATGTTATTGTAACAGCTCATGCATTTGTAATGATTTTTTTTATAGTTATACCAATTATAATTGGAGGATTTGGTAATTGATTAGTTCCTTTAATATTAGGGGCTCCTGATATAGCTTTCCCTCGAATAAATAATATAAGATTTTGATTACTCCCCCCTTCTTTAACTCTTCTACTTATAAGTAGAATAGTGGAAAGTGGAGCAGGCACAGGTTGAACTGTGTACCCCCCCCTTTCATCTAGAATTGCCCACAGAGGAGCCTCGGTAGATTTAGCTATTTTTAGTTTACATTTAGCTGGTATTTCTTCTATTCTAGGAGCAGTAAATTTCATTACAACAATTATTAATATACGATCAGTAGGAATAACATTTGATCGAATACCTCTATTTGTATGAAGTGTTGGTATTACTGCTTTATTACTTTTATTATCATTACCAGTTTTAGCAGGTGCAATCACTATACTATTAACTGATCGAAATTTAAACACCTCTTTTTTTGATCCCGCTGGGGGAGGAGACCCTATTTTATATCAACATTTATTT
    ##         id.2                 name.2     gene.2
    ## 1 KROK004-19 Licinus hoffmannseggii KROK004-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           sequence.2
    ## 1 AACTTTATATTTCATTTTCGGGGCCTGAGCAGGAATAGTAGGTACTTCTTTAAGTATATTAATTCGAGCTGAATTAGGAAATCCAGGATCACTTATTGGTGATGATCAGATTTATAATGTTATTGTTACAGCTCATGCATTTGTAATAATTTTTTTCATAGTAATACCTATTATAATTGGGGGATTCGGAAACTGATTAGTTCCATTAATATTAGGAGCTCCTGATATAGCTTTCCCTCGAATAAATAATATAAGTTTTTGACTTCTTCCTCCTGCTTTAAGCCTACTTTTAATGAGAAGAGTAGTTGAAAGAGGAGCTGGCACCGGATGAACGGTGTACCCCCCCCTATCATCTAATATTGCCCATAGAGGTGCTTCCGTTGACTTAGCAATTTTCAGATTACACTTAGCGGGAGTATCTTCCATTTTAGGAGCTGTAAATTTTATTACCACTATTATTAATATACGATCAATAGGAATAACATTTGACCGAATACCATTATTTGTATGATCAGTAGGAATTACTGCTTTACTATTACTTTTATCATTACCAGTATTGGCTGGAGCTATTACAATACTTTTAACAGATCGAAATTTAAATACTTCATTTTTTGATCCTGCAGGAGGGGGAGACCCAATTCTTTATCAACATTTATTT
    ##         id.3                   name.3     gene.3
    ## 1 KROK005-19 Pterostichus burmeisteri KROK005-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           sequence.3
    ## 1 AACTTTATATTTTATTTTTGGTATATGAGCAGGAATAGTAGGTACTTCATTAAGTATATTAATTCGAGCTGAATTAGGTAATCCTGGATCATTAATTGGTGACGATCAAATTTATAATGTTATTGTTACTGCCCATGCATTTGTTATAATTTTCTTTATAGTAATACCTATTATAATTGGAGGATTTGGAAATTGATTAGTTCCTTTAATATTAGGAGCTCCTGATATAGCTTTTCCTCGAATAAATAATATAAGTTTTTGATTACTTCCTCCTTCATTAACACTCCTTTTAATAAGAAGTATAGTTGAAAACGGATCAGGAACAGGATGAACAGTTTATCCACCTTTATCATCAGGAATTGCACATGCAGGAGCTTCAGTTGATTTAGCTATTTTTAGTTTACATTTAGCTGGAATTTCCTCTATTTTAGGAGCTGTAAATTTTATTACTACAATTATTAATATACGATCAGTAGGAATAACATTTGATCGAATACCTTTATTTGTATGATCTGTTGGAATTACTGCTTTATTATTACTTCTTTCATTACCTGTATTAGCTGGTGCCATTACAATACTATTAACAGATCGAAATTTAAATACTTCTTTTTTTGATCCTGCAGGTGGTGGAGACCCTGTTTTATATCAACATTTATTT
    ##         id.4            name.4     gene.4
    ## 1 KROK006-19 Carabus coriaceus KROK006-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                        sequence.4
    ## 1 AAATAATATAAGATTTTGACTTCTTCCCCCTTCTTTAACTCTCCTCCTAATAAGAAGTATAGTTGAAAAAGGGGCAGGTACAGGATGAACAGTATACCCCCCGCTCTCTTCCGGAATTGCTCATAGAGGGGCATCTGTAGATTTAGCTATTTTTAGATTACATTTAGCAGGAGTATCTTCAATTTTAGGTGCTGTAAATTTTATTACCACAATTATTAACATACGATCTGTTGGAATGACTTTTGATCGAATACCTTTATTTGTATGATCTGTTGGAATTACAGCATTATTATTACTTCTTTCATTACCAGTCTTAGCAGGAGCTATCACTATACTTTTAACTGATCGAAATTTAAATACTTCATTTTTTGACCCCGCAGGAGGAGGAGACCCAATTCTCTACCAACATTTATTT
    ##         id.5            name.5     gene.5
    ## 1 KROK007-19 Carabus croaticus KROK007-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   sequence.5
    ## 1 GATATTGGAACTTTATATTTCATTTTTGGTGCCTGATCCGGAATAGTAGGAACTTCATTAAGAATATTAATCCGGGCCGAATTAGGTAACCCCGGATCCTTAATTGGAGATGATCAAATTTATAATGTAATTGTAACAGCTCATGCTTTTGTAATAATTTTTTTTATAGTTATACCTATTATAATTGGGGGATTTGGAAATTGATTAGTGCCTTTAATACTTGGGGCACCAGATATAGCATTTCCTCGAATAAATAATATAAGATTTTGACTTCTTCCTCCTTCTTTAACTCTCCTCCTAATAAGAAGTATAGTTGAAAAGGGGGCAGGAACAGGATGAACAGTTTACCCCCCCCTATCTTCTGGAATTGCCCATAGAGGGGCATCTGTTGATTTAGCTATTTTTAGATTACATTTAGCAGGTATTTCTTCAATTTTAGGGGCTGTGAATTTTATTACAACAATTATTAATATACGATCAGTAGGAATAACTTTTGACCGAATACCTCTATTTGTATGATCTGTCGGAATTACTGCATTATTATTGTTACTTTCTTTACCAGTTTTAGCTGGAGCTATTACTATGCTTTTAACAGATCGAAACTTAAATACTTCCTTTTTTGACCCTGCAGGTGGGGGGGACCCTATTCTTTACCAACATCTATTT
    ##         id.6      name.6     gene.6
    ## 1 KROK008-19 Abax ovalis KROK008-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        sequence.6
    ## 1 AAGATATTGGAACACTATATTTTATTTTTGGTACATGATCAGGAATAGTAGGAACATCTTTAAGAATATTAATTCGAGCTGAATTAGGAAATCCAGGATCATTAATTGGTGACGACCAAATTTATAATGTAATTGTTACTGCTCATGCATTTGTAATAATTTTTTTTATAGTAATGCCCATTATAATTGGGGGATTTGGAAACTGATTAGTTCCTTTAATATTAGGAGCTCCTGATATAGCGTTCCCTCGAATGAATAACATGAGATTTTGACTGTTACCCCCTTCTCTGACCCTTCTCCTTATAAGCAGCATAGTTGAAAGAGGAACTGGCACAGGATGGACAGTCTACCCACCACTTTCTTCTAATATTGCCCATAGAGGAGCTTCAGTTGACTTAGCTATTTTTAGTTTACATCTAGCTGGAATTTCTTCAATTCTAGGAGCTGTAAATTTTATCACTACAATTATCAATATACGATCAATAGGAATAACTTTTGATCGAATACCTCTATTTGTCTGATCAGTAGGAATCACTGCTTTATTATTATTGTTGTCACTACCTGTATTAGCTGGAGCTATCACAATACTTTTAACTGATCGAAATTTAAATACTTCATTTTTTGATCCAGCAGGAGGTGGAGATCCTATTTTATA
    ##         id.7                 name.7     gene.7
    ## 1 KROK010-19 Notiophilus biguttatus KROK010-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           sequence.7
    ## 1 AACTTTATATTTTATCTTTGGGGCTTGGTCAGGGATAGTTGGAACTTCTTTAAGAATACTAATTCGAGCAGAATTAGGAAATCCTGGATCTTTAATTGGAGATGACCAAATTTATAATGTAATTGTTACAGCTCATGCTTTTGTCATAATTTTTTTTATAGTTATACCTATTATAATTGGAGGATTTGGTAATTGACTTGTACCTCTAATATTAGGAGCTCCTGATATAGCTTTTCCTCGAATAAATAATATGAGTTTCTGGTTACTTCCCCCCTCTTTAACTCTCCTCCTTACAAGAAGAATAGTGGAAAGAGGAGCAGGTACAGGTTGAACTGTGTACCCTCCCCTTTCTTCTGGAATTGCCCATAGAGGAGCTTCAGTTGATTTAGCAATTTTTAGCCTTCATTTAGCTGGAGTATCTTCTATTTTAGGAGCAGTAAATTTTATTACTACTATTATTAATATACGATCAGTTGGGATATCATTTGATCGAATACCCTTATTTGTGTGATCAGTTGGAATTACAGCTCTTTTATTACTTTTATCCTTACCTGTTTTAGCTGGAGCAATTACTATATTATTAACTGATCGAAACTTAAATACTTCTTTCTTTGACCCTGCTGGGGGAGGAGATCCTATTTTATATCAACACCTATAT
    ##         id.8            name.8     gene.8
    ## 1 KROK011-19 Carabus creutzeri KROK011-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           sequence.8
    ## 1 AACTTTATATTTTATTTTTGGTGCTTGATCAGGAATAGTGGGAACTTCTTTAAGAATACTAATTCGAGCTGAATTAGGTAACCCTGGATCCTTAATTGGAGATGATCAAATTTATAATGTTATTGTGACAGCTCATGCTTTTGTAATAATTTTTTTTATAGTTATACCTATTATAATTGGAGGATTTGGAAATTGATTAGTTCCTTTAATATTAGGAGCACCTGATATAGCATTTCCTCGAATAAATAATATAAGATTTTGATTATTACCCCCTTCTTTAACTCTACTCCTAATAAGTTCAATAGTAGAAAGTGGAGCAGGTACTGGGTGAACAGTATACCCCCCTTTGTCATCTGGAATTGCCCATAGAGGTGCTTCTGTAGATTTAGCTATTTTTAGATTACATCTAGCTGGGATTTCTTCAATTCTAGGGGCAGTAAATTTTATTACAACAATTATTAATATACGATCAGTAGGAATAACCTTTGATCGAATACCTTTATTTGTTTGATCTGTAGGTATTACAGCTTTATTACTTTTACTTTCTCTCCCAGTATTAGCAGGAGCTATTACTATACTTCTAACAGACCGTAATTTAAATACTTCTTTTTTCGATCCAGCTGGGGGAGGTGACCCAATTTTATACCAACATTTATTT
    ##         id.9        name.9     gene.9
    ## 1 KROK012-19 Molops piceus KROK012-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            sequence.9
    ## 1 GATATTGGAACATTATATTTTATTTTTGGAGCATGAGCAGGGATAGTAGGAACATCATTAAGAATATTGATTCGAGCTGAATTAGGAAGCCCAGGATCACTAATTGGAGATGATCAAATCTATAATGTAATTGTAACTGCACATGCATTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGAGGATTTGGTAACTGATTAGTTCCTTTAATGTTAGGAGCCCCTGATATAGCTTTTCCTCGAATAAACAATATAAGTTTTTGACTTCTCCCTCCATCTTTAACCCTCTTATTAATAAGTAGTATAGTCGAAAAGGGGGCTGGCACAGGATGAACTGTGTACCCTCCTCTCTCATCAACAATTGCCCATAGAGGAGCATCAGTAGATTTAGCTATTTTTAGATTACATTTAGCAGGAGTTTCATCTATTTTAGGTGCTGTAAATTTTATTACTACAATTATTAATATACGATCTGTAGGAATAACATTTGATCGCATACCTTTATTTGTTTGATCAGTAGGAATTACTGCTTTACTATTACTACTATCTCTTCCAGTATTAGCTGGAGCTATTACAATATTACTAACAGATCGAAATTTAAACACTTCTTTTTTTGATCCCGCAGGAGGAGGTGACCCTATTTTATATCAACATTTATTTTGATTTTTG
    ##        id.10           name.10    gene.10
    ## 1 KROK013-19 Trechus croaticus KROK013-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.10
    ## 1 AACCTTATATTTCATTTTTGGAGCTTGGGCAGGAATAGTAGGAACATCATTAAGAATATTAATTCGAGCTGAATTAGGAAATCCTGGTTCTTTAATTGGAGACGATCAAATTTATAATGTAATTGTAACTGCTCATGCATTTATTATAATTTTTTTTATAGTTATACCAATTATAATTGGAGGATTTGGAAATTGATTAGTACCATTAATACTAGGTGCTCCTGATATAGCTTTTCCACGAATAAACAATATAAGATTTTGACTACTTCCACCATCTTTAACTTTATTACTAATAAGATCTATAGTAGAAAGTGGTGCTGGAACAGGATGAACAGTTTACCCACCATTATCTTCAGGAATTGCTCATAGTGGGGCTTCAGTAGATTTAGCAATTTTTAGACTTCATTTAGCAGGAATTTCTTCAATTTTAGGAGCAGTAAATTTTATCACAACAATTATTAATATACGACCAATAGGAATAACTTTTGACCGTATACCTTTATTTGTTTGATCAGTTGGAATTACAGCATTATTGCTACTTTTATCTTTACCAGTTCTTGCAGGAGCAATCACAATATTATTAACAGACCGAAATTTAAATACTTCATTTTTTGATCCAGCAGGTGGGGGAGATCCAATTCTTTATCAACATTTATTT
    ##        id.11             name.11    gene.11
    ## 1 KROK014-19 Stenichnus collaris KROK014-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.11
    ## 1 TACCCTTTATTTTATTTTAGGAATTTGATCTGGAATATTAGGAACTTCTTTAAGTTTGCTAATTCGATTAGAATTAAGATCCCCAGGTATAATAATTGGAAATGATCAAACTTTTAATATAATTGTAACTTCTCATGCTTTTATTATAATTTTTTTTATAGTAATACCTATTATAATCGGAGGATTTGGAAATTGATTAGTCCCTTTAATATTAGGAGCCCCTGATATAGCTTTCCCTCGTATAAATAATATAAGATTTTGATTTCTTCCCCCTTCATTAATACTATTATTAATAAGAAGGATAGTAGAAAGAGGATCAGGAACAGGATGAACAGTTTACCCTCCTCTATCCTCAAATATTGCACATAGCGGATCTTCAGTAGATTTAACAATTTTTAGTCTTCATTTAGCAGGAATTTCATCTATTCTAGGAGCTGTAAATTTTATTACTACAATTATTAATATACGCTCACCTATAATAAAATTTGATAATTTATCTTTATTCATTTGAGCAGTATTTATTACTGCAATCTTATTATTACTATCTCTACCAGTATTAGCTGGAGCTATTACTATATTATTAACTGACCGCAATTTTAATACATCATTTTTTGATCCATCAGGAGGGGGAGACCCTATTTTATACCAACATTTATTT
    ##        id.12           name.12    gene.12
    ## 1 KROK015-19 Molops striolatus KROK015-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.12
    ## 1 AACATTATATTTCATTCTTGGGGCATGGTCAGGAATAGTAGGAACCTCCTTAAGAATATTAATTCGAGCTGAATTAGGAAATCCGGGGTCCTTGATTGGAGATGACCAGATCTATAATGTAATTGTAACTGCACATGCTTTTGTTATAATTTTTTTTATAGTAATGCCTATTATAATTGGGGGTTTTGGTAATTGATTGGTTCCTTTAATATTAGGAGCTCCTGATATAGCCTTTCCTCGGATAAATAATATGAGTTTTTGACTTCTTCCTCCATCTTTAACCCTTTTACTAGTGAGTAGCATAGTGGAAAAGGGAGTTGGTACAGGATGAACTGTATACCCTCCTCTCTCATCGACAATTGCTCATAGAGGAGCATCTGTAGATTTAGCTATTTTTAGCCTACATCTAGCAGGAATTTCATCTATTTTAGGTGCTGTAAATTTTATTACTACAATTATTAATATACGATCAGTGGGAATAACATTTGATCGTATACCTTTATTTGTATGATCAGTAGGAATTACTGCTTTGTTATTGCTTTTATCCCTCCCAGTATTAGCAGGAGCTATTACAATGTTATTAACAGATCGAAATTTAAATACTTCTTTTTTTGACCCCGCAGGAGGAGGAGACCCTATTTTATACCAACATTTATTT
    ##        id.13                       name.13    gene.13
    ## 1 KROK016-19 Pterostichus oblongopunctatus KROK016-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.13
    ## 1 AACTTTATATTTTATTTTTGGTGCGTGATCTGGAATAGTCGGAACTTCTTTAAGTATATTAATTCGAGCTGAATTAGGAAATCCTGGAGCTTTAATTGGTGATGATCAAATTTATAATGTTATTGTAACTGCTCATGCATTTGTTATAATTTTTTTCATAGTAATGCCTATTATAATTGGAGGGTTTGGAAATTGATTAGTTCCTTTAATATTAGGAGCCCCTGATATAGCCTTTCCTCGAATAAATAATATAAGTTTCTGATTATTACCTCCTTCATTAACTCTTCTTTTAATGAGAAGAATAGTCGAAAACGGAGCAGGTACAGGATGAACAGTTTACCCTCCCTTATCATCTGGAATTGCCCATGCAGGAGCTTCAGTTGATTTAGCTATTTTTAGTTTACATTTAGCAGGAGTATCTTCTATTCTTGGAGCTGTTAATTTTATTACTACAATTATTAATATACGATCAGTAGGAATAACATTTGATCGAATACCATTATTTGTATGATCAGTTGGAATTACAGCTTTATTATTACTTCTATCTTTACCTGTATTAGCTGGAGCTATTACTATATTATTAACAGATCGAAATTTAAATACCTCATTTTTTGACCCAGCTGGAGGAGGGGACCCAATTTTATATCAACATTTATTT
    ##        id.14       name.14    gene.14
    ## 1 KROK017-19 Molops piceus KROK017-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               sequence.14
    ## 1 AAGATATTGGAACATTATATTTTATTTTTGGAGCATGAGCAGGGATAGTAGGAACATCATTAAGAATATTGATTCGAGCTGAATTAGGAAGCCCAGGATCACTAATTGGAGATGATCAAATCTATAATGTAATTGTAACTGCACATGCATTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGAGGATTTGGTAACTGATTAGTTCCTTTAATGTTAGGAGCCCCTGATATAGCTTTTCCTCGAATAAACAATATAAGTTTTTGACTTCTCCCTCCATCTTTAACCCTCTTATTAATAAGTAGTATAGTCGAAAAGGGGGCTGGCACAGGATGAACTGTGTACCCTCCTCTCTCATCAACAATTGCCCATAGAGGAGCATCAGTAGATTTAGCTATTTTTAGATTACATTTAGCAGGAGTTTCATCTATTTTAGGTGCTGTAAATTTTATTACTACAATTATTAATATACGATCTGTAGGAATAACATTTGATCGCATACCTTTATTTGTTTGATCAGTAGGAATTACTGCTTTACTATTACTACTATCTCTTCCAGTATTAGCTGGAGCTATTACAATATTACTAACAGATCGAAATTTAAACACTTCTTTTTTTGATCCCGCAGGAGGAGGTGACCCTATTTTATATCAACATTTATTTTGATTTTTTGT
    ##        id.15       name.15    gene.15
    ## 1 KROK018-19 Molops piceus KROK018-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.15
    ## 1 AACATTATATTTTATTTTTGGAGCATGAGCAGGGATAGTAGGAACATCATTAAGAATATTGATTCGAGCTGAATTAGGAAGCCCAGGATCACTAATTGGAGATGATCAAATCTATAATGTAATTGTAACTGCACATGCATTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGAGGATTTGGTAACTGATTAGTTCCTTTAATGTTAGGAGCCCCTGATATAGCTTTTCCTCGAATAAACAATATAAGTTTTTGACTTCTCCCTCCATCTTTAACCCTCTTATTAATAAGTAGTATAGTCGAAAAGGGGGCTGGCACAGGATGAACTGTGTACCCTCCTCTCTCATCAACAATTGCCCATAGAGGAGCATCAGTAGATTTAGCTATTTTTAGATTACATTTAGCAGGAGTTTCATCTATTTTAGGTGCTGTAAATTTTATTACTACAATTATTAATATACGATCTGTAGGAATAACATTTGATCGCATACCTTTATTTGTTTGATCAGTAGGAATTACTGCTTTACTATTACTACTATCTCTTCCAGTATTAGCTGGAGCTATTACAATATTACTAACAGATCGAAATTTAAACACTTCTTTTTTTGATCCCGCAGGAGGAGGTGACCCTATTTTATATCAACATTTATTT
    ##        id.16             name.16    gene.16
    ## 1 KROK019-19 Carabus catenulatus KROK019-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.16
    ## 1 AACTTTATATTTTATTTTTGGTGCCTGATCAGGAATAGTGGGAACTTCATTAAGAATACTAATTCGAGCCGAATTAGGTAATCCCGGATCCTTAATTGGAGATGATCAAATTTATAACGTTATTGTTACAGCTCATGCTTTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGGGGATTTGGAAACTGACTAGTCCCATTAATACTAGGAGCCCCAGATATAGCCTTTCCTCGAATAAATAATATAAGTTTTTGATTATTGCCCCCTTCTCTGACTCTTCTCCTAATAAGAAGAATAGTGGAAAGGGGGGCAGGTACAGGATGAACAGTTTACCCTCCGCTGTCTTCTGGTATTGCCCATAGAGGGGCATCCGTAGATTTAGCAATTTTTAGACTACATTTGGCTGGGATCTCTTCTATTCTAGGGGCAGTAAATTTTATTACAACAATTATTAATATACGATCAGAAGGAATAACTTTTGACCGAATACCCCTATTTGTTTGATCCGTTGGTATTACTGCGTTATTGTTACTTTTATCTTTACCAGTATTAGCCGGAGCTATTACTATACTTTTAACAGACCGAAATCTTAACACGGCATTTTTTGATCCCGCAGGAGGAGGTGACCCAATTCTTTACCAACACTTATTT
    ##        id.17             name.17    gene.17
    ## 1 KROK020-19 Carabus irregularis KROK020-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.17
    ## 1 AACTTTATATTTTATTTTTGGTGCTTGATCAGGAATAGTGGGAACTTCTTTAAGAATACTAATTCGAGCTGAATTAGGTAACCCTGGATCCTTAATTGGAGATGATCAAATTTATAATGTTATTGTAACAGCTCACGCTTTTGTAATAATTTTTTTTATAGTTATACCCATTATAATTGGAGGATTTGGAAATTGATTGGTCCCTCTAATATTAGGAGCACCTGATATAGCATTTCCCCGAATAAATAATATAAGATTTTGACTACTACCTCCTTCTTTAACTCTCCTCCTAATAAGTTCTATAGTAGAAAGAGGAGCAGGTACAGGATGAACTGTATACCCTCCTTTATCATCTGGAATTGCTCATAGAGGTGCTTCTGTAGATTTAGCTATTTTCAGATTACATTTAGCCGGTATTTCCTCAATTCTAGGAGCAGTAAATTTTATTACAACTATTATTAATATACGATCAGTAGGAATAACTTTTGACCGAATGCCTTTATTTGTTTGGTCAGTAGGAATTACAGCTTTATTACTTTTACTTTCTCTACCAGTATTAGCAGGAGCTATTACAATACTTTTAACAGACCGTAATTTAAATACTTCATTTTTTGATCCTGCTGGGGGAGGTGATCCAATTTTATACCAACATTTATTT
    ##        id.18       name.18    gene.18
    ## 1 KROK021-19 Nebria dahlii KROK021-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       sequence.18
    ## 1 AACTTTATATTTTATTTTCGGTGCTTGAGCAAGAATGGTAGGAACTTCTTTAAGAATATTAATTCGAGCTGAGTTAGGAAATCCGGGATCTTTAATTGGAGATGATCAAATTTATAATGTTATCGTCACAGCTCACGCATTTGTAATAATTTTTTTTATAGTAATACCAATTATAATTGGAGGATTTGGAAACTGATTAGTCCCTTTAATGTTAGGAGCTCCAGATATAGCTTTCCCCCGAATAAATAACATAAGTTTTTGATTATTACCTCCTTCTTTAACTCTTCTCTTAATAAGATCTATAGTTGAAAGAGGAGCTGGAACAGGATGAACAGTATACCCCCCTCTGTCATCTAGAATTGCCCATAGAGGAGCATCTGTAGATTTAGCTATTTTTAGATTACATTTAGCAGGAATTTCTTCTATTTTAGGAGCTGTTAATTTTATTACTACAATTATTAATATACGATCTATAGGAATAACATTTGATCGAATACCTCTTTTTGTATGATCAGTAGGAATTACAGCATTATTATTATTACTATCTTTACCAGTTTTAGCAGGCGCAATTACAATACTTTTAACTGATCGAAATTTAAATACATCTTTTTTTGATCCTGCAGGAGGAGGAGACCCTATTTTATATCAACATTTATTTTGATTTTTTGGTC
    ##        id.19                name.19    gene.19
    ## 1 KROK022-19 Platynus scrobiculatus KROK022-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.19
    ## 1 AACTTTATATTTTATTTTTGGTGCATGATCAGGGATAGTAGGAACTTCATTAAGAATATTAATTCGATTAGAGTTAGGTAGTCCTGGGTCATTGATTGGAGACGATCAAATTTATAATGTTATTGTTACTGCCCATGCATTTATTATAATTTTTTTTATAGTAATACCTATTATAATTGGGGGATTTGGAAATTGATTAGTTCCTTTAATATTAGGAGCCCCTGATATAGCATTCCCTCGAATAAATAATATAAGTTTTTGACTTCTTCCCCCATCTTTAACATTGCTTTTAATGAGCAGAATAGTAGAAAGAGGTGCTGGAACTGGATGAACAGTTTACCCTCCCCTATCATCTGGAATTGCCCATGCTGGAGCTTCAGTTGATTTAGCTATTTTTAGATTACATCTAGCTGGAATTTCATCTATTTTAGGAGCTGTAAATTTTATTACTACTATTATTAATATACGATCAGTGGGAATAACTTTTGATCGAATACCTTTATTTGTTTGATCAGTTGGAATTACTGCTTTATTATTACTTTTATCTTTACCTGTTTTAGCAGGGGCTATTACAATATTATTAACAGATCGAAATTTAAATACTTCTTTTTTTGACCCCGCTGGAGGAGGAGACCCAATTTTATATCAACATTTATTT
    ##        id.20          name.20    gene.20
    ## 1 KROK023-19 Dima elateroides KROK023-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     sequence.20
    ## 1 GATATTGGAACATTATACTTCATTTTTGGAGCATGGGCCGGCATACTAGGCACTTCTCTCAGGCTCCTAATCCGGGCAGAACTAGGCAACCCTGGTTCATTAATTGGAAACGATCAAATCTACAACGTAATTGTTACTGCTCACGCATTCATTATAATCTTCTTCATAGTAATACCCATCATAATTGGAGGATTTGGAAATTGACTAGTACCCCTAATACTAGGAGCACCAGATATAGCCTTCCCCCGGATAAACAATATAAGATTCTGGTTCTTACCCCCCTCTCTTAGTTTACTTCTAATAAGAAGAATTGTAGAGAATGGGGCCGGTACAGGATGAACTGTTTACCCTCCATTATCTGCTAATATCGCACACAGAGGGTCTTCAGTAGATTTAGCAATTTTCAGACTACATTTAGCTGGAATCTCATCCATTCTAGGAGCAGTAAATTTTATCTCCACAGTAATCAATATACGATCACCTGGAATCACCTTTGACCGAATACCTCTATTTGTATGGGCAGTAGCTATTACAGCTCTCCTCCTTCTATTATCCCTACCAGTACTAGCTGGGGCTATTACAATATTACTAACAGATCGAAATCTAAATACTTCCTTTTTCGACCCCGCAGGAGGGGGTGACCCTATCCTGTA
    ##        id.21                 name.21    gene.21
    ## 1 KROK025-19 Clinopodes carinthiacus KROK025-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.21
    ## 1 AACCATGTATCTAATTTTTGGCGCTTGAGCAGCTATAGCTGGAACAGCTTTAAGAATTATTGTGCGACTAGAGCTCAGCCAACCCGGGGCCCTAATTGGGGATGACCAAATTTATAACGTAATTGTAACAGCCCATGCCTTTGTAATGATTTTCTTCATAGTAATACCAGTAATAATAGGAGGATTCGGAAATTGAATACTCCCCCTTATGTTAGGCGCCCCAGACATGGCCTTCCCCCGAATAAACAATCTCAGCTTCTGACTCCTCCCCCCCTCTTTAACCCTTCTCACAACATCAATAATAGTTGAAAGAGGTGCGGGCACCGGCTGAACCGTATACCCCCCGTTAGCTGCAAACATTTCTCACTCTGGACCCTCTGTTGATATAACAATTTTTTCTCTTCACCTAGCTGGAGTGTCCTCCATTCTAGCCTCAATTAATTTTATTACTACAATCATTAATATACGATCTAGCGGAATGGTTCTTGAACGAATTCCTTTATTTGTGTGGAGAGTAAAAATTACCGCAATTCTACTTTTGCTCTCCCTCCCAGTGTTAGCTGGAGCCATTACAATATTATTAACCGACCGAAACATTAATACAAGCTTCTTCGACCCTGCTGGGGGCGGGGACCCTATCTTATACCAACACCTATTC
    ##        id.22                    name.22    gene.22
    ## 1 KROK026-19 Dicellophilus carniolensis KROK026-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.22
    ## 1 AACCATGTACCTCATATTTGGAGCCTGAGCCGCAATAGCTGGTACTGCCCTAAGATTATTGATCCGATTAGAGCTAAGACAGCCCGGAACCCTAATCGGGGATGACCAAACTTATAATGTAGTAGTAACAGCTCACGCCTTCGTAATAATTTTTTTCATAGTAATACCTATTATAATAGGAGGATTCGGCAATTGACTTCTACCTCTCATGCTCGGAGCCCCAGATATGGCGTTCCCCCGCCTAAACAACATAAGATTTTGACTCCTCCCCCCATCTCTAACGCTCCTCCTCGCCTCTGCTGCAGTCGAAAGTGGGGCGGGGACCGGCTGAACCGTATATCCCCCCCTCTCGTCAGGACTAGCACACTCCGGCCCATCAGTAGACATAACAATCTTCTCCCTACATCTAGCAGGTGTATCTTCAATCCTCGGGGCCATCAACTTCATCACCACAGTAATTAATATACGCTCCAGAGGAATAGTTATAGAACGAGTCCCTCTCTTCGTCTGGGGAGTAATAATTACCGCCATCCTCCTACTCCTATCCCTCCCCGTCCTTGCAGGCGCAATCACAATGCTACTGACCGACCGAAACTTTAATACAAGTTTTTTTGACCCAGCCGGAGGCGGAGATCCAATCTTGTACCAACACTTATTT
    ##        id.23               name.23    gene.23
    ## 1 KROK027-19 Eurygeophilus pinguis KROK027-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        sequence.23
    ## 1 CACCATATACTTAATCTTCGGAGCCTGAGCCGCCATAGCGGGAACCGCTCTTAGCCTAATTATTCGGCTAGAACTAGGACAACCAGGAACACTTATAGGAGACGATCAAATTTATAATACAATCGTTACAGCACACGCATTCGTAATAATCTTTTTCATAGTAATACCAATCATAATAGGAGGATTTGGAAACTGAATGCTACCACTAATATTAGGGGCCCCAGACATAGCCTTCCCCCGAATAAACAACATAAGATTCTGGCTTCTTCCTCCCTCCTTAACCCTACTAATAAGATCAATAGCAGTAGAAGGAGGAGCCGGAACAGGCTGAACCGTATATCCTCCCCTAGCTGCCAACATCTCACACTCTGGCCCCTCCGTAGACATAACTATTTTCTCATTACACTTAGCAGGAGTCTCTTCTATCCTAGGTTCAATCAACTTCATCACAACTATTATTAACATGCGATCCGCAGGAATAGTACTAGAACGAATCCCCCNATTTGTATGAAGAGTAAATGGTCAACAAATCATAAAGATATTG
    ##        id.24              name.24    gene.24
    ## 1 KROK029-19 Schendyla tyrolensis KROK029-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.24
    ## 1 AACCATATATTTAATTTTCGGAGCATGGGCCTCAATAGCCGGGACAGCCCTCAGCCTTATTATCCGACTAGAATTGAGCCAGCCAGGGAGTCTCATTGGAGACGACCAAACCTATAATGTCATCGTCACTGCCCACGCTTTTGTAATAATTTTCTTTATAGTAATGCCCATTATAATAGGGGGGTTTGGAAATTGACTCCTCCCCCTAATGCTCGGGGCCCCAGACATGGCCTTCCCCCGTCTTAATAACATAAGCTTTTGACTGCTCCCCCCCTCACTCACCCTTCTTCTCGCCTCCGCTGCAGTAGAAAGAGGGGCAGGCACGGGCTGAACCGTCTACCCCCCTCTCTCCTCCGGACTTGCCCACTCGGGGGCATCCGTAGACATAACCATCTTCTCCCTACATCTAGCCGGTATCTCCTCAATTTTAGGGGCAATCAATTTTATCACCACCGTCATTAACATACGAACAAGAGGAATAGTATTCGAACGAGTCCCCCTCTTCGTCTGAGGAGTTACCATTACAGCCACCCTCCTCCTATTGGCCCTCCCCGTACTAGCCGGAGCCATTACCATGCTCCTCACAGACCGAAACTTTAACACAAGCTTTTTTGACCCGGCAGGCGGAGGAGACCCAATCTTATACCAACATCTCTTC
    ##        id.25             name.25    gene.25
    ## 1 KROK030-19 Strigamia acuminata KROK030-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.25
    ## 1 AACAATATACCTAATCTTCGGAACTTGAGCCGCAATAGCAGGAACTGCCCTAAGCCTAATCATTCGAATAGAACTAAGACAACCAGGAACCTTAATTGGAGACGACCAGATCTACAACGTAGTGGTAACAGCACACGCCTTCGTAATAATTTTCTTTATGGTAATGCCCATTATAATAGGGGGATTCGGTAACTGAATACTCCCTCTAATACTAGGGGCCCCAGACATAGCATTCCCCCGAATAAACAACCTAAGATTCTGGTTACTCCCACCCTCCCTCACGCTATTAATAGCATCCATAGCCGTAGAGAGAGGAGCAGGAACGGGATGAACTGTATACCCCCCTCTAGCAGCAAATGTCTCCCACTCAGGCCCATCAGTGGACATAACCATTTTTTCCCTCCATCTAGCAGGAGTATCCTCAATCCTAGGCTCAATCAACTTCATCACAACAATTATTAACATACGAGCAAGAGGAATAGTTATTGAACGAATCCCCCTATTCGTATGAAGAGTAAAAATTACAGCCGTTCTACTCCTATTATCTCTCCCAGTACTAGCTGGTGCTATCACAATGCTTCTCACAGACCGAAATATTAACACAAGATTCTTCGACCCTGTTGGAGGGGGGGACCCCATCCTATACCAACACCTATTC
    ##        id.26                  name.26    gene.26
    ## 1 KROK031-19 Strigamia transsilvanica KROK031-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       sequence.26
    ## 1 AACTATATATCTAATCTTCGGAACCTGAGCCGCAATAGCAGGGACCGCACTAAGCCTAATCATTCGAATAGAACTAAGCCAACCCGGAACACTTATTGGAGATGATCAAATTTATAACGTAGTAGTAACAGCTCACGCCTTTGTAATAATTTTCTTTATAGTTATACCCATTATAATAGGAGGATTTGGAAATTGAATACTTCCCCTAATATTAGGAGCCCCAGATATGGCCTTCCCCCGAATAAACAACTTAAGATTTTGATTACTACCTCCAAGCCTAACCCTACTAATAGCATCAATAGCAGTAGAAAGAGGAGCAGGAACAGGATGAACAGTTTACCCCCCTCTAGCAACAAACATCTCCCACTCTGGCCCATCAGTAGACATAACAATTTTCTCCCTTCACCTAGCAGGAGTATCCTCAATTTTAGGATCAATCAATTTCATCACAACAATCATCAACATACGAGCAAGAGGAATAATCATCGAACGAATTCCCCTATTTGTATGAAGAGTAAAAATTACAGCAGTCCTTTTACTCTTATCTCTCCCCGTACTAGCAGGAGCAATTACCATATTACTCACAGACCGAAACATCAATACTAGATTCTTTGACCCTGTAGGAGGAGGAGACCCAATCCTCTACCAACACTTATTTTGATTTTTTGGCC
    ##        id.27                    name.27    gene.27
    ## 1 KROK032-19 Dicellophilus carniolensis KROK032-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.27
    ## 1 AACCATGTACCTCATATTTGGAGCCTGAGCCGCAATAGCTGGTACTGCCCTAAGATTATTGATCCGATTAGAGCTAAGACAGCCCGGAACCCTAATCGGGGATGACCAAACTTATAATGTAGTAGTAACAGCTCACGCCTTCGTAATAATTTTTTTCATAGTAATACCTATTATAATAGGAGGATTCGGCAATTGACTTCTACCTCTCATGCTCGGAGCCCCAGATATGGCGTTCCCCCGCCTAAACAACATAAGATTTTGACTCCTCCCCCCATCTCTAACGCTCCTCCTCGCCTCTGCTGCAGTCGAAAGTGGGGCGGGGACCGGCTGAACCGTATATCCCCCCCTCTCGTCAGGACTAGCACACTCCGGCCCATCAGTAGACATAACAATCTTCTCCCTACATCTAGCAGGTGTATCTTCAATCCTCGGGGCCATCAACTTCATCACCACAGTAATTAATATACGCTCCAGAGGAATAGTTATAGAACGAGTCCCTCTCTTCGTCTGGGGAGTAATAATTACCGCCATCCTCCTACTCCTATCCCTCCCCGTCCTTGCAGGCGCAATCACAATGCTACTGACCGACCGAAACTTTAATACAAGTTTTTTTGACCCAGCCGGAGGCGGAGATCCAATCTTGTACCAACACTTATTT
    ##        id.28                   name.28    gene.28
    ## 1 KROK035-19 Eupolybothrus tridentinus KROK035-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.28
    ## 1 AAGATATTGGAACAATATACTTTATCTTCGGGATCTGAGCCTCTATAGTAGGAACAGCCCTAAGTCTACTAATTCGGTTAGAATTAAGCCAACCAGGAAGATTAATTGGAGATGATCAAATCTATAATGTAATTGTTACAGCACATGCTTTCGTTATAATTTTCTTTATAGTTATACCAATTATAATTGGAGGATTTGGAAATTGATTAGTACCCTTAATATTAGGGGCACCAGATATAGCATTTCCACGATTAAATAATATAAGCTTCTGATTATTGCCTCCCTCATTATCACTACTTTTATGTTCTGCTGCAGTAGAAAGAGGGGCTGGTACAGGATGAACTGTTTATCCTCCCCTTTCATCTAATATCTCCCATAGTGGAGCTTCAGTTGATATAACCATTTTTTCATTACATTTAGCAGGAGTCTCCTCAATTTTAGGAGCTATTAACTTTATTTCAACAATTATTAATATACGAACAAGAGGAATATCATTTGAACGTGTTCCTCTATTTGTATGGTCTGTAAAAATTACAGCAATTTTACTTTTACTTTCATTACCTGTATTAGCCGGAGCAATTACTATATTATTAACTGATCGAAATTTAAATACCAGATTTTTTGACCCTACAGGAGGAGGAGACCCTATTTTATATCAACACTTATTTTGATT
    ##        id.29                      name.29    gene.29
    ## 1 KROK036-19 Harpolithobius gottscheensis KROK036-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.29
    ## 1 AACAATATATTTTGTATTAGGAATCTGATCAGCAATAATCGGTACCGGTCTTAGAATTCTTATTCGATTGGAATTAAGACAACCTGGAAGATTAATTGGAGATGACCAAATTTATAATGTAATTGTAACTGCACATGCTTTTATTATAATTTTTTTTATAGTTATACCCATTATAATTGGAGGATTTGGAAATTGATTGGTGCCACTAATATTAGGTGCTCCAGATATGGCATTTCCTCGAATAAATAATATAAGATTTTGATTACTCCCTCCATCTTTAACCCTACTTTTATGCTCTGCAGCAGTAGAAAGAGGAGCAGGAACCGGATGAACAGTATATCCTCCACTGTCTTCAAATATTTCTCACAGAGGAGCTTCTGTTGATATAACAATCTTCTCCCTTCATTTAGCTGGAGCCTCATCAATTTTAGGGGCTATTAATTTTATTTCAACTATTATTAATATACGATCCAGAGGAATATCATTTGAACGAGTTCCTCTTTTCGTATGATCAGTAAAAATTACTGTAATCTTACTTTTATTATCATTACCTGTATTAGCAGGAGCTATTACTATATTATTAACTGATCGTAATCTCAATACAAGATTTTTTGATCCTACCGGAGGAGGGGATCCAATTTTATATCAACATTTATTT
    ##        id.30             name.30    gene.30
    ## 1 KROK037-19 Lithobius castaneus KROK037-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       sequence.30
    ## 1 CACTATATACTTTATCTTCGGAATCTGGTCATCAATAATCGGTACCGCTCTTAGCCTATTAATTCGACTAGAATTAAGTCAGCCAGGAAGTCTAATTGGTGATGACCAAATTTATAATGTAATCGTTACAGCACACGCATTTGTAATAATCTTCTTTATGGTGATACCTATTATAATTGGAGGATTTGGTAATTGACTCATTCCATTAATACTAGGAGCACCAGACATGGCATTTCCTCGACTAAATAACATAAGATTTTGACTTTTACCCCCCTCCTTAACACTATTATTGTGTAGTGCAGCAGTAGAAAGAGGGGCAGGAACAGGATGAACAGTTTATCCACCCCTATCAGCTAACATTTCACATAGTGGGGGATCAGTAGATATAACCATTTTCTCACTACACCTAGCAGGAGTCTCTTCAATCTTAGGAGCAATTAACTTTATTTCCACCATCATTAATATACGAACTAGAGGGATATCATTCGAGCGAGTACCCCTCTTCGTATGATCCGTAAAAATTACCGTAATTCTTCTCCTCCTCTCCCTACCTGTATTAGCCGGAGCTATTACCATATTATTAACTGATCGAAATCTAAATACAAGA
    ##        id.31            name.31    gene.31
    ## 1 KROK038-19 Lithobius dentatus KROK038-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    sequence.31
    ## 1 AACAATATACTTTATTTTAGGAATCTGATCTGCAATAATTGGAACAGGCTTAAGACTACTAATTCGACTTGAATTAAGCCAACCAGGAAGATTAATTGGAGATGATCAAATCTATAATGTTATCGTTACAGCCCATGCCTTCATTATAATCTTCTTTATAGTTATACCTATTATAATTGGAGGATTTGGAAACTGACTTGTACCATTAATATTAGGAGCACCAGATATAGCATTTCCACGAATAAATAACATAAGATTTTGATTATTACCCCCTTCACTTACCCTCCTTCTATGCTCCGCTGCCGTTGAGAGAGGGGCTGGAACAGGYTGAACCGTTTATCCCCCCTTATCCTCTAATATTTCACACAGTGGGGCGTCAGTAGATATAACTATTTTTTCCCTTCACTTAGCAGGTGCTTCCTCCATTCTAGGTGCAATTAATTTTATTTCAACAATCATTAATATACGATCAAGAGGAATATCGTTTGAACGAGTGCCTTTATTCGTATGATCAGTTAAGATTACAGTAATTCTACTATTATTATCTTTACCTGTATTAGCTGGAGCAATTACAATACTCCTTACAGATCGAAACCTTAACACAAGATTTTTTGACCCTACTGGAGGGGGGGATCCTATCTTATATCAACACCTCTTTTGATTTTTTG
    ##        id.32         name.32    gene.32
    ## 1 KROK039-19 Lithobius latro KROK039-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.32
    ## 1 AACCATATATTTTGTATTAGGAATTTGATCAGCAATAATTGGTACAGGACTCAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGTGTATAATGTTATTGTCACAGCCCACGCATTCATTATAATTTTCTTTATAGTAATACCAATTATAATTGGTGGATTCGGAAATTGACTGGTACCCCTTATACTTGGTGCTCCAGATATGGCCTTCCCCCGAATAAATAATATAAGATTTTGGTTACTCCCCCCCTCTCTAACCCTACTTCTTTGCTCTGCTGCAGTAGAGAGAGGAGCAGGAACGGGCTGAACTGTATACCCCCCCTTATCAGCAAATATCTCCCATAGCGGGGCCTCAGTAGATATAACAATTTTTTCTCTACACTTAGCAGGGGCGTCATCAATCTTAGGAGCAATTAACTTTATTTCAACAATTATCAATATACGTACTAGTGGGATATCATTCGAACGAGTACCATTATTTGTATGATCTGTAAAGATTACAGTTATTTTACTTCTTCTTTCCCTTCCCGTTCTTGCCGGAGCTATTACTATACTCCTTACAGACCGAAACTTGAATACAAGATTCTTTGATCCCACAGGGGGAGGAGACCCCATCTTATACCAGCACCTATTT
    ##        id.33              name.33    gene.33
    ## 1 KROK041-19 Lithobius tenebrosus KROK041-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.33
    ## 1 AACTATATACTTCATTCTAGGAATTTGATCAGCCATAATTGGCACAGGATTAAGAATTCTTATCCGATTAGAACTTAGTCAACCAGGAAGACTAATTGGGGATGATCAAATTTATAATGTAATTGTAACAGCTCACGCATTCATTATAATTTTTTTTATAGTAATACCCATCATAATTGGAGGATTTGGTAACTGATTGGTGCCCTTAATATTAGGGGCACCAGATATAGCTTTCCCTCGACTAAATAATATAAGATTCTGATTACTCCCGCCTTCCCTAACATTATTATTATCCTCAGCCGCCGTAGAAAGAGGAGCTGGTACAGGATGAACCGTATACCCCCCTCTATCATCTAATATTTCCCATAGAGGAGCATCAGTAGATATAACTATTTTTTCTCTCCACTTAGCAGGGGCATCTTCAATCTTGGGAGCAATCAATTTTATCTCAACAATTATTAATATACGATCAAGAGGAATAACATTTGAACGTGTTCCCCTATTTGTGTGATCTGTAAAAATTACCGTAATCTTACTCCTCCTATCCCTGCCAGTATTAGCAGGAGCCATTACAATATTATTAACCGACCGAAACCTAAACACAAGATTCTTTGATCCCACTGGAGGAGGAGACCCAATTTTATACCAGCACTTATTC
    ##        id.34           name.34    gene.34
    ## 1 KROK042-19 Lithobius validus KROK042-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.34
    ## 1 AACTATATATTTTATCTTAGGAATCTGGTCAGCAATAATCGGAACAGGATTAAGCCTTCTCATTCGACTAGAATTAAGCCAACCAGGGAGATTAATTGGAGACGATCAAATTTATAACGTAATCGTAACAGCTCATGCATTTATTATAATTTTCTTCATAGTAATGCCAATCATAATTGGAGGATTTGGTAATTGATTAGTCCCACTAATATTAGGAGCCCCAGACATAGCATTCCCCCGATTAAATAACATAAGATTTTGACTTCTTCCACCCTCCCTCACACTACTTCTTTGTTCAGCAGCTGTTGAAAGAGGCGCAGGAACTGGATGAACCGTTTACCCACCTCTTTCTGCAAACATCTCACATAGAGGAGCATCAGTGGATATAACAATTTTTTCTCTACACTTAGCAGGTGCCTCCTCTATTCTAGGGGCCATTAATTTTATTTCTACAATTATTAATATACGAACAAGAGGAATATCATTCGAACGAGTTCCATTATTCGTCTGATCAGTAAAAATTACTGTTATTCTCCTTTTATTATCTTTACCAGTACTTGCAGGAGCAATTACCATATTATTAACCGATCGAAATTTAAACACAAGATTCTTCGACCCAACAGGAGGTGGGGATCCTATTTTATACCAGCATCTATTCTGATTTTTTGKCCCSGGAAAAATTTTAAAAA
    ##        id.35        name.35    gene.35
    ## 1 KROK043-19 Sigibius anici KROK043-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      sequence.35
    ## 1 TACTATATATTTTGTGTTTGGAATTTGATCATCTATAATTGGAACTGCTCTTAGTCTTCTAATTCGTTTAGAATTAAGACAGCCAGGAAGATTAATTGGAGATGATCAAATTTATAATGTTATTGTTACAGCACATGCATTTATTATAATCTTTTTTATAGTGATACCAATTATAATTGGTGGATTTGGAAATTGATTAATTCCATTAATATTAGGTGCCCCAGACATAGCCTTTCCCCGCCTGAATAACATAAGATTTTGGTTGCTACCACCTTCACTTACATTACTTCTTAGATCAGCAGCAGTAGAAAGAGGTGCAGGAACAGGTTGAACAGTTTATCCACCCCTGTCCGCTAATATTTCCCATAGAGGTGCATCAGTAGATATAACAATTTTTTCTCTTCACTTAGCTGGTGTATCTTCAATCTTAGGGGCTATTAACTTCATCTCAACAATTATTAATATACGAGCTAGAGGAATAACATTTGAACGAGTCCCCTTATTTGTGTGATCTGCAAAAATTACAGTTATTTTACTCCTACTCTCATTACCAGTATTAGCTGGTGCAATTACTATATTACTTACAGATCGAAATCTTAATACAAGATTTTTTGATCCTACAGGAGGAGGAGACCCTATTTTATATCAACACTTATTTTGATTTTTTGGT
    ##        id.36                name.36    gene.36
    ## 1 KROK044-19 Lithobius carinthiacus KROK044-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   sequence.36
    ## 1 AGATATTGGAACTATATATTTTATCTTCGGAACATGATCAGCTATAATCGGAACCTCCCTGAGACTTTTAATTCGTCTAGAATTAAGTCAGCCTGGGAGACTAATTGGAGATGATCAAATTTACAATGTAATTGTAACTGCCCACGCATTCGTAATAATCTTCTTCATAGTAATACCAATTATAATTGGAGGATTTGGTAACTGATTATTACCATTAATGTTAGGGGCCCCTGACATGGCTTTTCCCCGACTAAACAACATAAGATTTTGACTTCTCCCCCCTTCTCTTACTCTACTCCTATGTTCAGCTGCAGTAGAAAGAGGTGCAGGAACAGGATGAACAGTCTATCCACCCCTCTCCTCAAATATTTCCCATAGAGGAGCATCAGTTGATATAACAATCTTTTCTCTTCACCTAGCAGGTGCGTCATCAATTCTAGGGGCAATCAACTTTATCTCCACAATTATTAACATACGATCTAGAGGAATAACTTTTGAGCGAGTTCCTCTATTTGTATGGTCAGTTAAAATTACAGTTATTCTTCTTCTATTATCACTACCAGTTTTAGCTGGAGCTATTACAATATTACTCACAGACCGAAATATTAACACTAGATTCTTTGATCCTACTGGAGGAGGAGACCCAATTTTATATCAACACCTATTT
    ##        id.37            name.37    gene.37
    ## 1 KROK046-19 Lithobius dentatus KROK046-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 sequence.37
    ## 1 ATATTGGAACAATATACTTTATTTTAGGAATCTGATCTGCAATAATTGGAACAGGCTTAAGACTACTAATTCGACTTGAATTAAGCCAACCAGGAAGATTAATTGGAGATGATCAAATCTATAATGTTATCGTTACAGCCCATGCCTTCATTATAATCTTCTTTATAGTTATACCTATTATAATTGGAGGATTTGGAAACTGACTTGTACCATTAATATTAGGAGCACCAGATATAGCATTTCCACGAATAAATAACATAAGATTTTGATTATTACCCCCTTCACTTACCCTCCTTCTATGCTCCGCTGCCGTTGAGAGAGGGGCTGGAACAGGTTGAACCGTTTATCCCCCCTTATCCTCTAATATTTCACACAGTGGGGCGTCAGTAGATATAACTATTTTTTCCCTTCACTTAGCAGGTGCTTCCTCCATTCTAGGTGCAATTAATTTTATTTCAACAATCATTAATATACGATCAAGAGGAATATCGTTTGAACGAGTGCCTTTATTCGTATGATCAGTTAAGATTACAGTAATTCTATTATTATTATCTTTACCTGTATTAGCTGGAGCAATTACAATACTCCTTACAGATCGAAACCTTAACACAAGATTTTTTGACCCTACTGGAGGGGGGGATCCTATCTTATATCAACACCTCTTT
    ##        id.38              name.38    gene.38
    ## 1 KROK047-19 Lithobius forficatus KROK047-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.38
    ## 1 AACTATATATTTTGTGCTAGGAATTTGGTCAGCAATAATCGGTACTGGCCTTAGTCTTCTTATTCGATTGGAATTAAGCCAACCGGGGAGATTAATTGGAGACGATCAAATTTATAATGTTATTGTAACCGCTCATGCCTTTATTATAATTTTTTTTATAGTTATACCAATTATAATTGGGGGCTTCGGAAATTGACTTGTCCCACTAATACTGGGGGCACCAGACATGGCCTTTCCCCGAATAAATAATATAAGATTTTGACTCCTCCCCCCTTCCCTTACACTATTACTTTGTTCAGCAGCAGTAGAAAGAGGAGCGGGAACAGGATGAACCGTCTACCCTCCCCTATCTTCTAACATTTCTCATAGAGGGGCATCAGTAGACATAACAATCTTTTCATTACACCTCGCCGGTGCCTCATCAATCTTAGGGGCTATTAATTTTATCTCAACAATCATTAACATGCGGTCTAGAGGAATATCATTTGAGCGAGTACCTCTATTTGTATGGTCAGTAAAAATTACAGTAATCTTACTTCTTCTTTCCCTCCCAGTTTTAGCCGGAGCAATCACAATATTACTAACAGACCGAAATCTAAATACTAGATTCTTCGACCCAACAGGAGGAGGAGACCCTATTTTATACCAACATCTATTT
    ##        id.39                 name.39    gene.39
    ## 1 KROK048-19 Eupolybothrus grossipes KROK048-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.39
    ## 1 TACTATATACTTTATTTTTGGAATTTGAGCATCAATAGTTGGAACAGCATTAAGTCTTCTAATCCGGTTAGAATTAAGCCAGCCAGGAAGACTAATTGGTGACGATCAAATTTACAATGTAATCGTGACAGCTCATGCTTTCGTTATAATCTTCTTTATAGTTATACCAATTATAATTGGAGGATTTGGAAATTGGCTTGTACCTTTAATATTAGGTGCCCCTGATATAGCCTTCCCCCGTCTTAATAACATAAGATTTTGACTATTACCTCCTTCTCTTTCTTTACTGTTATGCTCAGCCGCAGTGGAAAGAGGAGCCGGAACAGGATGAACTGTTTACCCCCCCCTTTCATCAAACATCTCCCACAGAGGAGCGTCAGTTGATATAACCATTTTTTCTCTTCACCTAGCAGGAGTTTCTTCCATCCTAGGAGCGATTAACTTTATTTCGACTATTATTAACATACGAACTAGAGGAATATCATTTGAACGAGTTCCGCTTTTTGTTTGATCAGTAAAAATTACAGCAATTTTGCTTCTTTTATCCCTACCAGTTTTAGCAGGAGCAATTACAATATTACTTACTGATCGAAATATCAATACTAGATTTTTTGACCCTACAGGAGGAGGAGATCCTATTCTTTACCAACATCTATTC
    ##        id.40         name.40    gene.40
    ## 1 KROK050-19 Cryptops parisi KROK050-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            sequence.40
    ## 1 ATATTGGAACAATATACTTAATTTTTGGAGCTTGAGCAGCCATATTAGGAACATCTTTAAGCTTACTAATCCGAMTAGAATTAAGCCAACCAGGAACTTTAATTGGAGATGACCAATTATATAATGTTGTAGTAACAGCCCATGCTTTCGTTATAATTTTCTTTATAGTTATACCTATTATAATTGGCGGCTTTGGAAACTGGTTAGTACCTTTAATAATAGGTGCCCCAGACATAGCTTTTCCACGATTAAATAATATAAGCTTCTGACTATTACCACCTTCTTTAAGATTGCTATTAGGATCTAGCTTGTTAGAAAGTGGAGCAGGAACAGGATGAACAGTTTATCCACCTCTAGCCTCTTCTCTTGCCCACTCAGGTTGTTCAGTAGATATAACTATTTTTTCTTTGCATCTTGCAGGAATTTCTTCTATTTTAGGGGCTATTAATTTTATTACAACTATTCTTAATATACGGTCAAAAGGTATAGTATTTGAACGATTACCTCTATTTGCATGATCAGTATTAATCACAGCTATTCTACTCTTACTCTCTCTTCCTGTTTTAGCAGGAGCTATTACAATATTACTAACAGACCGAAATTTTAATACCTCATTTTTTGATCCAGCAGGAGGAGGAGACCCTATTCTTTACCAACATTTATTCTGATTTTTTGT
    ##        id.41          name.41    gene.41
    ## 1 KROK052-19 Coelotes atropos KROK052-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.41
    ## 1 AACTTTGTATTTAGTTTTTGGGGCTTGGTCTGCTATAGTTGGAACAGCTATAAGAGTATTAATTCGAATTGAATTAGGTCAATCAGGAAGTTTTTTGGGTGATGATCATTTATATAATGTTATTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATAGTGATACCTATTTTAATTGGAGGTTTTGGTAATTGATTAGTACCTTTGATATTAGGTGCTCCAGATATAGCTTTTCCTCGATTAAATAATTTAAGGTTTTGATTATTACCTCCTTCATTATTTTTATTGTTTATTTCTTCTATGGTTGAAATAGGTGTAGGAGCTGGATGGACGGTTTATCCACCATTGGCTTCTAGTATGGGTCATTCTGGAAGATCTGTTGATTTTGCTATTTTTTCTTTACATTTAGCTGGGGCTTCTTCTATTTTAGGAGCTATTAATTTTATTTCTACTATTTTTAATATACGGTCGAATGGAATGACTTTTGAAAAGGTTCCTTTATTTGTTTGATCCGTATTAATTACTGTTGTATTATTATTATTATCTTTGCCTGTATTAGCGGGTGCTATTACAATATTATTAACTGATCGAAATTTTAATACTTCATTTTTTGATCCAGCTGGAGGTGGTGATCCTATTTTATTTCAACATTTATTTTGATTTTTTGGTCAC
    ##        id.42             name.42    gene.42
    ## 1 KROK053-19 Histopona luxurians KROK053-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   sequence.42
    ## 1 AGATATTGGAACATTGTATTTAATTTTTGGGACGTGATCTGCTATAGTGGGAATAGCTATAAGTGTTCTTATTCGAATTGAATTAGGACAATCAGGAAGATTTTTGGGTGATGATCACCTTTATAATGTAATTGTTACTGCTCATGCTTTTGTTATAATCTTTTTTATAGTTATGCCTGTAATAATTGGAGGATTTGGAAATTGGTTAATTCCTTTAATATTAGGAACGCCAGATATGGCGTTTCCTCGAATAAATAATTTGAGATTTTGGTTATTACCCCCTTCTTTATTTTTGCTTTTTATTTCTTCTATAGTTGAAATAGGAGTTGGTTCAGGGTGAACTGTGTATCCGCCTTTAGCATCTTCTATTGGACATGTTGGTAGTTCTGTTGATTTTGCGATTTTTTCTTTACATTTGGCTGGAGCTTCTTCAATTATAGGGGCTATTAATTTTATTTCTACTATTTTAAATATACGTTCTCCATTCATGAGAATGGAAAAAGTTCCTTTATTTGTGTGGTCTGTTTTAATTACTGCTGTTCTGTTATTATTGTCTTTGCCAGTTTTAGCTGGAGCTATTACAATATTACTTACTGATCGTAATTTTAATACTTCTTTTTTTGACCCTGCTGGAGGAGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.43           name.43    gene.43
    ## 1 KROK054-19 Histopona torpida KROK054-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.43
    ## 1 AACATTATATTTAATTTTTGGTGTGTGATCTGCTATAGTGGGGACTGCAATAAGAGTTATTATTCGAATTGAATTAGGTCAGTCTGGTAGTTTTTTAGGAGATGATCATCTTTATAATGTAATTGTTACTGCTCATGCATTTGTGATGATTTTTTTTATAGTTATACCAATTATAATTGGAGGATTTGGAAATTGATTGGTTCCTTTAATGTTAGGTTCTCCAGATATAGCATTTCCTCGAATAAATAATTTAAGTTTTTGGCTGTTACCTCCGTCTTTATTTTTGCTTTTTGTGTCGGCCCTATCTGAGATAGGGGTGGGGGCTGGATGAACTGTTTATCCGCCTCTGGCTTCTTCTATTGGACATATAGGTAGTTCTGTCGATTTTGCTATTTTTTCTTTACATTTGGCTGGGGCTTCTTCAGTAATAGGAGCTATTAATTTTATTTCTACTATTTGAAATATGCGTTCTTATGAAATAAGAATGGATAAAGTACCTTTGTTTGTATGATCTGTTTTGATTACTGCTGTATTATTATTATTATCTTTACCAGTTTTAGCTGGGGCTATTACAATATTGCTTACTGATCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##        id.44                name.44    gene.44
    ## 1 KROK055-19 Inermocoelotes anoplus KROK055-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.44
    ## 1 TTCTATGTATTTAATTTTTGGAGCTTGATCTGCTATAGTTGGTACCGCTATAAGAGTTTTAATCCGAATTGAATTAGGTCAATCAGGAAGATTTTTGGGTGATGATCATTTATATAATGTTATTGTTACTGCTCATGCTTTTATTATAATTTTTTTTATAGTAATACCTATTTTAATTGGAGGTTTTGGGAATTGATTAATTCCTTTAATGTTAGGGGCGCCAGATATGGCTTTTCCTCGAATAAATAATTTGAGTTTTTGGTTGTTACCTCCTTCGTTGTTTTTATTATTTATTTCTTCTATGGTGGAGATAGGAGTAGGGGCTGGATGAACGATTTATCCTCCATTGGCTTCTATGATAGGGCATGCTGGAAGTTCTGTTGATTTTGTTATTTTTTCTTTGCATTTGGCTGGTGTTTCTTCTATTTTAGGAGCTATTAATTTTATTTCTACTATTTTTAATATACGATCTTATGGAATATCTTTTGAGAAGGTACCATTATTTGTTTGGTCGGTATTAATTACTGTTGTGTTATTATTATTATCTTTGCCTGTATTAGCGGGTGCTATTACAATATTGTTAACTGATCGTAATTTTAATACTTCATTTTTTGATCCAGCTGGAGGTGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.45                name.45    gene.45
    ## 1 KROK056-19 Inermocoelotes inermis KROK056-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   sequence.45
    ## 1 AGATATTGGTACTTTGTATTTGATTTTTGGAGCTTGATCTGCTATAGTTGGTACAGCTATAAGAGTTTTGATTCGGATTGAATTAGGTCAACCAGGAAGATTTTTAGGTGATGATCATTTATATAATGTAATTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATAGTAATACCTATTTTAATTGGAGGTTTTGGAAATTGATTAGTTCCTTTAATATTAGGGGCTCCAGATATAGCTTTTCCTCGAATAAATAATTTGAGTTTTTGATTATTACCTCCTTCATTATTTTTATTGTTTATTTCTTCAATAGTTGAAATAGGTGTAGGTGCTGGATGAACAATTTATCCTCCATTGGCTTCTATAATGGGCCATGCTGGAAGTTCTGTTGATTTTGTTATTTTTTCTTTACATTTAGCGGGGGCTTCCTCTATTTTAGGAGCTATTAATTTTATTTCTACTATTTTTAATATACGGTCATATGGAATAACTTTCGAGAAAGTTCCTTTATTTGTGTGGTCAGTATTGATTACTGTTGTATTATTATTGTTGTCTTTACCTGTATTAGCAGGGGCTATTACAATATTATTAACTGATCGTAACTTTAATACTTCGTTTTTTGATCCAGCTGGAGGTGGTGATCCTATTTTATTTCAACATTTGTTT
    ##        id.46              name.46    gene.46
    ## 1 KROK057-19 Tegenaria silvestris KROK057-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.46
    ## 1 GACATTGTATTTAATTTTTGGTGCTTGGTCAGCTATAGTTGGAACTGCTATAAGAGTTTTAATTCGAATTGAATTGGGTCAGCCGGGGAGATTTATTGGTGATGATCATTTGTATAATGTAATTGTTACGGCTCATGCTTTTGTTATAATTTTTTTTATAGTAATACCAATTTTAATTGGTGGGTTTGGAAATTGATTAGTGCCTTTAATATTAGGGGCGCCTGATATGGCTTTTCCTCGGATAAATAATTTAAGTTTTTGATTATTACCTCCTTCTTTATTTATATTATTTATTTCTTCTATAGTAGATATGGGAGTAGGAGCAGGATGGACTATTTATCCTCCTTTAGCATCTTCTCTTGGTCACATAGGAAGATCTATGGATTTTGCTATTTTTTCTTTACATTTGGCTGGGGCTTCTTCAATTATAGGGGCTATTAATTTTATTTCTACTATTTTAAATATACGTTCAATTGGGATAAAGATAGAGAGGGTCCCGTTGTTTGTTTGGTCAGTATTAATCACTGCTATTTTATTGTTATTATCTTTACCTGTATTAGCAGGTGCTATTACTATATTGTTAACTGATCGAAATTTTAATACTTCATTTTTTGACCCTGCAGGGGGAGGGGATCCAATTTTATTTCAACATTTGTTT
    ##        id.47            name.47    gene.47
    ## 1 KROK058-19 Amaurobius obustus KROK058-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    sequence.47
    ## 1 AAGATATTGGAACATTATATTTAATTTTTGGAGCTTGAGCATCTATAGTTGGAATAGCTATAAGAGTTTTAATTCGAATTGAATTAGGACAATCAGGAAGTTTATTTGGAGATGATCATTTATATAATGTAATTGTAACAGCTCATGCTTTTGTAATAATTTTTTTTATAGTTATACCAATTATAATTGGGGGATTTGGAAATTGAATAGTTCCTTTAATATTAGGAGCTCCTGATATAGCTTTCCCTCGTATAAATAATTTAAGTTTTTGATTATTACCTCCTTCTTTATTATTATTAATTATTTCTTCTATAGTAGAAATAGGAGTAGGAGCAGGTTGGACTATTTATCCTCCATTAGCTTCTATTATAGGACATTCCGGAGGTGCTGTAGATTTTGCTATTTTTTCTTTACATTTAGCTGGTGCTTCATCAATTATAGGGGCTATTAATTTTATTTCTACTATTATTAATATACGATTATTAGGAATAACTATAGAGAAAGTTCCTTTATTTGTTTGGTCAATTTTTATTACTGTAATTTTATTGTTATTATCTTTACCTGTTTTAGCGGGTGCTATTACTATATTGTTAACTGATCGAAATTTTAATACTTCTTTTTTTGATCCTGCTGGAGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##        id.48         name.48    gene.48
    ## 1 KROK059-19 Comaroma simoni KROK059-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      sequence.48
    ## 1 AAAAGATATTGGGACGTTATATTTTCTATTTGGGTCTTGAGCAGCGATAGTGGGGACAGGTATGAGAATACTAATTCGTATTGAATTAGGACAGAGGGGGAGTTTGTTAGGGGATGACCAATTATATAATGTGATTGTTACTGCTCATGCTTTTGTGATAATTTTTTTTATGGTTATGCCCATTCTAATTGGGGGGTTTGGGAATTGATTGGTGCCGTTAATATTGGGGGCCCCTGATATGGCTTTTCCTCGTATGAATAATTTGAGGTTTTGGTTGCTCCCCCCCTCTTTGGTTATGTTGTTTATTTCTTCTATGGTTGAGATGGGAGTAGGGGCCGGGTGGACTATTTATCCCCCTTTGGCCTCCTTGGAGGGGCATTCGGGGAGAGCTGTGGATTTTGCTATTTTTTCTTTGCATTTAGCGGGGGCTTCTTCAATTATGGGGGCTATTAATTTTATTACTACTATTTTTAATATGCGTAGGGCAGGGATAAGGTTAGAGAAGGTACCTTTGTTTGTATGGTCGGTTTTAATTACAGCTGTTTTATTGTTGTTGTCTCTGCCCGTTCTAGCGGGGGCTATTACAATGCTGTTGACTGATCGAAACTTTAATACGTCATTTTTTGACCCTTCAGGGGGGGGGGACCCAATTTTATTTCAGCACTTGTTT
    ##        id.49             name.49    gene.49
    ## 1 KROK060-19 Clubiona terrestris KROK060-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.49
    ## 1 AAGTTTATATTTAATTTTTGGTACTTGGTCTGCTATGGTTGGAACAGCTATAAGAGTTTTAATTCGAATGGAATTAGGACAATCTGGTATATTTTTAGGAGATGATCATCTATATAATGTAGTAGTTACGGCTCATGCTTTTGTTATAATTTTTTTTATGGTTATACCAATTATAATTGGTGGATTTGGAAATTGAATAGTTCCAATGATATTAGGGGTAGCTGATATAGCTTTTCCTCGAATAAATAATTTAAGTTTTTGACTATTACCTCCTTCTTTATTGTTATTATTTATTTCGTCTATGGTTGAAATAGGAGTTGGTGCGGGCTGAACAGTATATCCTCCTTTAGCCTCTACTGTGGGACATATGGGGAGAGCTATGGATTTTGCTATTTTTTCGTTACATTTAGCTGGTGCTTCTTCTATTATAGGTGCAGTAAATTTTATTACTACAATTATTAATATACGATCTGTAGGAATAAGAATGGAAAAAATTCCTTTATTTGTTTGATCTGTGTTGATTACAGCAGTTCTTTTATTGTTATCATTACCTGTATTAGCAGGTGCTATTACTATATTATTAACAGATCGAAATTTTAATACTTCTTTCTTTGATCCTGCTGGAGGAGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.50             name.50    gene.50
    ## 1 KROK061-19 Dasumia canestrinii KROK061-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.50
    ## 1 AACTTTATATTTATTGTTTGGAGCTTGATCGGCTATAGCCGGAACTGCAATGAGAGTGCTTATTCGGGTTGAGTTGGGTCAGTTGGGGAGATTGTTGGGTGATGATCATTTGTATAATGTTGTGGTTACAGCACATGCATTAGTGATGATTTTTTTTATAGTGATACCTATTATAATTGGGGGTTTTGGGAATTGGTTGGTTCCTTTGATGCTGGGCGCGCCGGATATGGCGTTTCCTCGAATAAATAATTTAAGTTTTTGGTTGTTGCCCCCTTCGTTGATTTTGTTGATTTTATCTTCTATGGDGGAAACAGGGGTGGGGGCCGGATGGACAATTTATCCCCCATTATCTGCTTCTTTGGGGCATGGGGGTGTATCAGTGGATTTAGCGATTTTTTCTTTACATTTGGCGGGAGCGTCTTCTATTATAGGGGCTATTAATTTTATTTCTACGATTATTAATATGCGTATATACGGTATAAGAATAGATAGGGTTCCTTTGTTTGTGTGATCTGTTTTGGTTACAGCAATTCTTTTGCTTTTGTCGTTGCCGGTTTTAGCGGGCGCTATTACTATGTTGTTGACGGACCGAAATTTTAATACTTCTTTTTTTGATCCCSCCGGAGGAGGAGATCCTATTTTGTTTCAACATTTGTTT
    ##        id.51           name.51    gene.51
    ## 1 KROK064-19 Dysdera adriatica KROK064-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.51
    ## 1 TACTTTATATTTGTTGTTTGGTGCTTGATCTGCTATAGTGGGGACAGCTATGAGTGTTTTGATTCGGGCTGAATTAGGGCAGGTGGGTGGTTTATTGGGAGATGATCATTTGTTCAATGTTGTTGTAACCGCTCATGCGTTGGTTATGATTTTTTTTATGGTAATGCCTATTATAATTGGGGGGTTTGGAAATTGGTTGGTTCCGTTAATGATTGGGGCCCCCGATATAGCTTTTCCACGTATAAATAATTTAAGCTTTTGACTTCTACCCCCATCGTTAGTGTTATTGGTAATTTCTTCTATAGTTGAAATAGGGGTAGGGGCGGGTTGAACTATTTATCCACCTCTTTCTGGGAGAGTAGGGCATTTTGGTGTATCTGTAGATTTGGCTATTTTTAGTCTTCATTTAGCGGGAGCGTCTTCTATTATGGGGGCTATTAATTTTATTTCGACGATTTTTAATATGCGATCTGTTGGTATAACTATAGAGAGGGTACCTTTGTTTGTGTGGTCTGTGTTGGTTACTGCTATTTTGTTGCTTTTATCTCTTCCTGTTTTAGCAGGGGCTATTACTATATTATTGACGGATCGAAATTTTAATACATCGTTTTTTGACCCCGCGGGGGGCGGGGATCCAATTTTGTTTCAGCATTTATTT
    ##        id.52        name.52    gene.52
    ## 1 KROK065-19 Dysdera ninnii KROK065-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.52
    ## 1 AACGTTATATTTGTTGTTTGGTGCTTGGTCAGCTATGGTAGGGACTGCTATAAGAGTATTAATTCGAACTGAATTAGGGCAAGTGGGGAGTTTGTTGGGGGATGACCATTTATTTAATGTGATTGTGACGGCTCATGCTCTGGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGAGGGTTTGGGAATTGGCTGGTTCCTTTGATGTTAGGTGCTCCTGATATGGCTTTTCCTCGTATGAATAATTTGAGTTTTTGGTTATTACCACCTTCTTTAATTCTTTTGGTTCTGTCCTCTATGGTTGAGATGGGGGTTGGGGCGGGTTGAACAATTTATCCACCTTTGTCTGGTGGAGTGGGTCATAGAGGGATTTCGGTAGATTTAGCAATTTTTAGATTACATTTGGCCGGGGCGTCATCTATTATAGGGGCTATTAATTTTATTTCTACTATTTTTAATATACGGTCATATGGTATAGGTATAGAGAGGGTTCCTTTATTTGTGTGATCTGTATTAGTTACGGCAGTATTATTATTGTTATCATTGCCGGTATTAGCGGGAGCTATTACTATATTGTTAACAGATCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##        id.53        name.53    gene.53
    ## 1 KROK066-19 Dysdera ninnii KROK066-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.53
    ## 1 AACGTTATATTTGTTGTTTGGTGCTTGGTCAGCTATGGTAGGGACTGCTATAAGAGTATTAATTCGAACTGAATTAGGGCAAGTGGGGAGTTTGTTGGGGGATGACCATTTATTTAATGTGATTGTGACGGCTCATGCTCTGGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGAGGGTTTGGGAATTGGCTGGTTCCTTTGATGTTAGGTGCTCCTGATATGGCTTTTCCTCGTATGAATAATTTGAGTTTTTGGTTATTACCACCTTCTTTAATTCTTTTGGTTCTGTCCTCTATGGTTGAGATGGGGGTTGGGGCGGGTTGAACAATTTATCCACCTTTGTCTGGTGGAGTGGGTCATAGAGGGATTTCGGTAGATTTAGCAATTTTTAGATTACATTTGGCCGGGGCGTCATCTATTATAGGGGCTATTAATTTTATTTCTACTATTTTTAATATACGGTCATATGGTATAGGTATAGAGAGGGTTCCTTTATTTGTGTGATCTGTATTAGTTACGGCAGTATTATTATTGTTATCATTGCCGGTATTAGCGGGAGCTATTACTATATTGTTAACAGATCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##        id.54                 name.54    gene.54
    ## 1 KROK067-19 Haplodrassus silvestris KROK067-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.54
    ## 1 AACTTTATATTTATTATTTGGATCTTGAGCTGCTATAGTAGGAACAGCAATAAGAGTATTAATTCGAATAGAATTAGGTCAATCTGGGAGATTGATGGGTGATGATCATTTATATAATGTAATTGTAACTGCTCATGCATTTGTCATAATTTTTTTTATAGTAATACCTATTTTAATTGGAGGTTTTGGTAATTGATTAATTCCTTTAATGTTAGGAGCTCCTGATATAGCTTTTCCTCGAATAAATAATTTAAGATTTTGATTATTACCACCTTCTTTAATTATATTATTTGCATCATCTATAGTAGAAATAGGAGTTGGTGCGGGTTGAACTGTTTATCCACCATTAGCTTCTTCTGTTGGTCATATGGGAAGAGCAATAGATTTTGCTATTTTTTCTTTACATTTAGCTGGAGCATCATCTATTATAGGTGCTATTAATTTTATTTCTACTGTAATTAATATACGATCTATTGGAATAAGTATAGAAAAAATTCCTTTGTTTGTTTGATCTGTTTTTATTACAGCAGTATTATTATTATTATCTTTACCTGTATTAGCAGGTGCTATTACTATATTATTAACAGATCGTAATTTTAATACTTCTTTTTTTGATCCAGCTGGGGGAGGAGATCCTATTTTATTTCAACATTTGTTT
    ##        id.55        name.55    gene.55
    ## 1 KROK068-19 Hahnia pusilla KROK068-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.55
    ## 1 GTCGTTGTATTTGATTTTTGGAGCATGGTCGGCTATAGTAGGGACTGCAATAAGAGTTCTTATTCGAATTGAGTTGGGACAACCTGGTAGATTTATAGGAGATGACCATTTATATAATGTTATTGTTACAGCTCATGCATTTGTTATAATTTTTTTTATAGTAATACCAATTATGATTGGTGGTTTTGGTAATTGATTAGTTCCTTTAATATTAGGGGCTCCTGATATAGCTTTTCCTCGAATAAATAATTTAAGATTTTGATTATTACCTTCATCTTTAATTTTATTATTTGTATCATCTATAGTGGAGATAGGGGTTGGTGCTGGTTGGACTATTTATCCTCCTTTGGCTTCTTTGATGGGTCATGCTGGGAGTTCTGTGGATTTTGCTATTTTTTCTTTACATTTAGCTGGAGCTTCTTCAATTATGGGGGCTATTAATTTTATTACTACTATTATTAATATACGTTCTTATGGAATAACAATAGAAAAAGTTCCTTTGTTTGTATGATCGGTTTTTATTACTGCTATTTTATTATTGCTTTCTTTACCAGTATTAGCTGGGGCTATTACTATGCTTTTAACGGATCGAAATTTTAATACTTCATTTTTTGATCCTGCTGGGGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##        id.56          name.56    gene.56
    ## 1 KROK069-19 Robertus lividus KROK069-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.56
    ## 1 AACTTTATATTTGATTTTTGGGGTGTGATCAGCTATAGTTGGTACAGCTATGAGTGTCCTAATTCGGGTAGAATTAGGACAATCTGGAAGATTGTTAGGGGATGATCAATTATATAATGTAATTGTAACTGCTCATGCTTTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGGGGGTTTGGAAATTGATTAGTTCCTTTAATGTTAGGGGCTCCAGATATAGCTTTCCCTCGAATAAATAATTTAAGATTTTGATTATTACCTCCTTCTTTATTTCTATTATTTATTTCTTCTATAATTGAAATAGGAGTAGGTGCTGGGTGAACAATTTATCCTCCTTTATCTTCTTTAGAGGGTCATTCAGGAAGATCAGTTGATTTTGCGATTTTTTCTCTTCATCTTGCAGGTGCTTCTTCTATTATAGGGGCTGTAAATTTTATTTCTACTATTTTAAATATACGTGTGTATGGAATATCTATAGAAAAAGTTACTTTATTTGTATGATCAGTTTTAATTACTGCTATTCTTTTATTATTATCGTTACCTGTTTTAGCAGGAGCTATTACTATGTTATTAACTGATCGAAATTTTAATACTTCTTTTTTTGATCCTTCTGGAGGAGGAGATCCAATTTTATTTCAACATTTATTT
    ##        id.57            name.57    gene.57
    ## 1 KROK070-19 Ceratinella brevis KROK070-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.57
    ## 1 GAGTTTATATTTTATTTTTGGAGCTTGAGCTGCTATAGTAGGGACAGCAATAAGAGTATTGATTCGTGTTGAGTTAGGACAAATTGGAAGATTATTAGGGGATGATCAGTTGTATAATGTTATTGTTACGGCTCATGCTTTTGTTATAATTTTTTTTATGGTGATACCTATTTTAATTGGTGGTTTTGGGAATTGGTTGGTTCCTTTAATGTTGGGGGCACCTGATATAGCTTTTCCTCGAATAAATAATTTAAGATTTTGATTATTACCTCCTTCTTTATTATTATTATTTATTTCTAGAATAGATGAGATGGGGGTAGGAGCGGGGTGAACTATTTATCCTCCTCTTGCTTCTTTAGAAGGGCATTCTGGAAGATCAGTAGATTTTGCTATTTTTTCTTTACATTTAGCAGGAGCGTCATCAATTATAGGTGCTATTAATTTTATTTCTACTATTTTAAACATACGGGGGTATGGGATAACAATAGAAAAAGTTCCTTTATTTGTTTGATCTGTTTTAATTACGGCTGTTTTATTACTTTTGTCTTTACCAGTATTAGCTGGGGCGATTACTATGCTTTTAACAGATCGAAATTTTAATACATCATTTTTTGATCCAGCGGGTGGAGGGGATCCGGTTTTATTTCAACATTTATTT
    ##        id.58               name.58    gene.58
    ## 1 KROK072-19 Diplocephalus picinus KROK072-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.58
    ## 1 AAGTTTATATTTTATTTTTGGGGCTTGGGCTGCTATAGTTGGAACAGCGATAAGAGTTTTAATTCGGATTGAGTTAGGTCAAACTGGAAGATTATTGGGGGATGATCAATTATATAATGTTATTGTTACAGCTCATGCATTTGTTATAATTTTTTTTATAGTAATACCTATTTTGATTGGGGGGTTTGGGAATTGGTTAGTTCCTCTTATGTTAGGGGCACCGGATATAGCTTTTCCTCGTATAAACAATTTAAGTTTTTGATTATTACCTCCTTCCTTATTTTTGTTATTTATTTCTAGAATAGATGAGATAGGAGTTGGGGCAGGATGGACTGTGTATCCGCCGTTAGCATCTTTAGATGGGCATCCGGGTAGATCAGTTGATTTTGCAATTTTTTCTTTACATCTAGCTGGAGCATCTTCAATTATAGGGGCTATTAATTTTATTTCTACTATTTTAAACATACGGGGGTATGGGATATCTATAGATAGGGTTCCTTTATTTGTTTGGTCTGTCTTAATTACTGCTATTTTATTACTTTTGTCTTTACCAGTATTAGCGGGGGCGATTACGATACTTTTAACAGATCGTAATTTTAATACTTCATTTTTTGACCCTTCWGGAGGAGGGGATCCTGTTCTATTTCAACAYTTATTT
    ##        id.59            name.59    gene.59
    ## 1 KROK073-19 Erigone autumnalis KROK073-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  sequence.59
    ## 1 GATATTGGTAGTTTATATTTTATTTTTGGTGCATGATCTGCTATAGTAGGGACAGCGATAAGAGTTTTAATTCGAATTGAATTAGGTCAAACTGGTAGTTTATTAGGTGATGACCAATTATATAATGTTATTGTTACTGCTCATGCTTTTATTATAATTTTTTTTATAGTAATACCTATTTTAATTGGAGGGTTTGGAAATTGGTTAGTACCATTAATGTTGGGTGCTCCTGATATAGCTTTTCCTCGAATAAATAATTTAAGTTTTTGGTTATTACCCCCTTCTTTATTATTATTATTTATTTCTAGAATAGACGAAATAGGAGTAGGAGCAGGTTGAACTATTTACCCTCCGTTGGCTTCATTAGAAGGGCATTCTGGTAGATCTGTTGATTTTGCTATTTTTTCTCTTCATTTAGCTGGAGCTTCTTCTATTATAGGGGCTATTAATTTTATTTCTACAATTTTTAATATACGAGGATATGGCATAACTATAGAGAAGATTCCTTTATTTGTTTGGTCTGTATTAATCACAGCTGTTTTGTTATTATTATCTCTTCCCGTTTTAGCAGGAGCTATTACTATGTTGTTAACAGATCGTAATTTTAATACCTCTTTTTTTGATCCTGCGGGAGGGGGTGATCCAGTTTTATTTCAACATTTATTC
    ##        id.60         name.60    gene.60
    ## 1 KROK074-19 Maso sundevalli KROK074-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.60
    ## 1 AAGTTTATATTTTGTGTTTGGTGCGTGAGCTGCCATAGTGGGTACGGCGATGAGAGTATTAATTCGAATTGAGTTGGGACAGACTGGTAGATTATTAGGGGATGACCAGTTGTATAACGTTATTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATGGTTATACCTATTTTAATTGGGGGGTTTGGGAATTGGTTAGTACCGTTGATGTTGGGAGCTCCAGATATAGCTTTTCCCCGCATAAACAACTTGAGATTTTGATTGTTGCCCCCTTCTTTATTATTATTATTTATTTCTAGAATAGATGAGATAGGGGTGGGGGCAGGTTGAACTGTTTATCCACCGCTTGCTTCTTTAGAGGGGCATTCTGGGAGTTCAGTAGATTTTGCTATTTTTTCTCTTCATTTAGCTGGGGCATCGTCTATTATGGGGGCTATTAATTTTATTTCTACTATTATTAATATGCGGGGTTATGGTATAACTATAGAAAAGGTCCCCTTATTTGTATGGTCTGTATTAATTACAGCAGTATTATTGTTGTTATCTTTGCCAGTTTTAGCAGGAGCGATTACTATGCTTTTAACAGATCGAAACTTTAATACTTCTTTTTTTGACCCTGCGGGAGGAGGGGATCCTGTTTTGTTTCAACWSTTATTT
    ##        id.61              name.61    gene.61
    ## 1 KROK075-19 Mermessus trilobatus KROK075-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.61
    ## 1 AAGTTTATATTTTGTTTTTGGGGCTTGATCTGCTATAGTAGGTACAGCGATAAGAGTATTAATTCGAATTGAATTAGGACAAGTTGGTAGACTTTTAGGAGATGATCAATTATATAATGTTATTGTTACAGCTCATGCTTTTATTATAATTTTTTTTATAGTTATGCCTATTTTAATTGGAGGATTTGGTAATTGATTAGTTCCTTTAATATTAGGTGCGCCTGATATAGCTTTTCCTCGAATAAATAATTTAAGATTTTGATTATTGCCCCCTTCTTTATTATTGTTATTTATTTCAAGAATAGATGAAATGGGTGTTGGGGCTGGATGAACTGTTTATCCCCCTTTAGCTTCTTTAGAAGGTCATTCTGGTAGATCAGTGGATTTTGCAATTTTTTCTTTACATTTAGCTGGGGCTTCTTCAATTATAGGAGCTATTAATTTTATTTCTACAATTTTAAATATACGAGGGTATGGTATAACAATAGAAAAAGTACCTTTATTTGTATGATCTGTATTAATTACTGCTGTTTTGTTATTATTATCTTTACCTGTTTTAGCAGGTGCTATTACTATACTTTTAACTGATCGAAATTTTAATACTTCTTTTTTTGATCCTTCTGGAGGGGGAGATCCTGTATTGTTTCAACATTTGTTT
    ##        id.62          name.62    gene.62
    ## 1 KROK077-19 Microneta viaria KROK077-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.62
    ## 1 AAGTTTATATTTTGTATTTGGGGCTTGGTCTGCGATAGTTGGAACGGCAATAAGAGTATTAATTCGAGTTGAGTTAGGTCAAGTTGGTAGTTTGTTAGGAGATGATCAATTATATAATGTAATTGTTACGGCTCACGCTTTTGTTATAATTTTTTTTATAGTGATACCAATTTTAATTGGGGGATTTGGTAATTGGTTAGTTCCTTTAATATTAGGGGCTCCAGATATAGCTTTCCCTCGGATAAATAATTTGAGATTTTGACTTTTACCCCCCTCTTTATTTTTATTGTTTATTTCAAGTATAGATGAGATAGGGGTAGGGGCAGGTTGGACAGTTTATCCTCCTCTTTCTTCATTAGATGGGCATTCGGGGAGTTCAGTGGATTTTGCTATTTTTTCTTTACATTTAGCTGGGGCATCTTCTATTATGGGGGCTATTAATTTTATTTCTACTATTTTAAATATACGAGGGTATGGGATAAGCATAGATAGGGTTCCTTTATTTGTTTGGTCTGTATTAATTACGGCTGTTCTTTTATTGTTATCTTTGCCAGTGTTAGCAGGGGCGATTACGATGTTGTTAACAGATCGAAATTTCAATACATCWTTTTTTGATCCTGCTGGAGGGGGGGATCCTGTTTTGTTTCAACWCTTATTT
    ##        id.63           name.63    gene.63
    ## 1 KROK078-19 Scotargus pilosus KROK078-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                sequence.63
    ## 1 TTGTTACTGCSCMTGCTTTTGTAATAATTTTTTTTATGGTCATGCCAATTTTAATTGGGGGGTTTGGAAATTGGTTAGTTCCTTTAATGTTAGGGGCACCMSATATGGCTTTCCCACGTATGAATAATTTAAGTTTTTGGTTGCTACCCCCGTCTTTATTTTTATTGTTTATTTCTTCTATAGTTGAGATAGGGGTAGGAGCTGGATGGACAGTTTATCCACCMTTAGCGTCTTTAGATGGACATCCTGGCAGTTCTGTTGATTTTGCTATTTTTTCTTTGCATTTGGCGGGGGCTTCTTCTATTATAGGGGCTATTAATTTTATTTCTACTATTATTAATATGCGGTCTTATGGTCTTACGATAGAAAGGGTTTCTTTATTTGTGTGGTCGGTTTTAATTACTGCTATTTTATTATTGTTATCATTACCTGTGTTAGCAGGGGCTATCACAATATTGTTGACAGATCGWAATTTTAATACTTCCTTTTTTCACCCGGCGGGGGGGGGGRAWCSRGKSTAWTTTMATCTTTTGTTT
    ##        id.64               name.64    gene.64
    ## 1 KROK079-19 Tenuiphantes flavipes KROK079-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.64
    ## 1 GACTTTATATTTTATTTTTGGAGCGTGAGCTGCTATAGTAGGAACTGCTATAAGAGTATTAATTCGGATTGAATTGGGGCAAACTGGAAGAATACTGGGGGATGACCAGTTGTATAATGTTATTGTAACTGCACATGCTTTTGTAATAATTTTTTTTATAGTTATACCTATTTTGATTGGAGGATTCGGTAATTGATTAGTTCCTTTAATACTAGGGGCTCCTGATATAGCTTTTCCTCGTATAAATAATTTAAGATTTTGACTTTTACCCCCTTCTCTATTATTATTATTTATTTCAAGTATAGTTGAGATGGGAGTTGGGGCAGGGTGGACAGTGTATCCGCCTCTTGCCTCTTTAGAGGGACATGCAGGAAGTTCTGTTGATTTTGCTATTTTTTCTTTACATTTAGCTGGGGCTTCTTCTATTATAGGGGCAATTAATTTTATTTCCACTATTATTAATATGCGTGGATACGGTGTATCAATGGAAAAGGTTCCGTTATTTGTATGATCTGTTTTAATTACTGCGGTTCTTTTGTTGTTATCATTACCTGTTTTAGCTGGTGCTATTACTATACTTTTAACTGATCGAAATTTTAATACTTCGTTTTTTGATCCTGCAGGAGGAGGAGATCCTGTGTTATTTCAACATTTATTT
    ##        id.65               name.65    gene.65
    ## 1 KROK080-19 Centrophantes roeweri KROK080-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.65
    ## 1 TAGTTTATATTTTATTTTTGGGGCTTGATCTGCTATGGTTGGGACTGCTATAAGAGTTTTAATTCGAATTGAGCTTGGGCAAATTGGGAGAATGTTGGGAGATGACCAATTGTATAATGTTATTGTGACTGCTCATGCGTTTGTTATAATTTTTTTTATAGTTATGCCAATTTTAATTGGGGGGTTCGGGAATTGGTTAGTTCCTTTAATATTGGGGGCTCCAGATATGGCTTTTCCTCGTATAAATAATTTGAGTTTTTGGTTACTACCTCCTTCTTTGTTTTTGTTGTTTATTTCGTCAATAGTGGAAATAGGAGTAGGAGCTGGTTGGACAATTTATCCACCTTTAGCTTCTTTAGAAGGGCATTCTGGGAGATCAGTTGATTTTGCTATTTTTTCTCTTCATTTAGCTGGGGTTTCTTCTATTATAGGGGCTATTAATTTTATTTCAACTATTATCAATATACGCACTTATGGAATAACGATAGAAAAGGTATCTTTATTTGTATGGTCGGTTTTAATTACTGCTGTACTTTTATTATTATCTTTACCAGTTTTAGCTGGGGCTATTACAATATTATTAACTGATCGAAATTTTAATACGTCTTTTTTTGACCCAGCAGGAGGAGGGGATCCTGTGTTATTTCAACATTTATTT
    ##        id.66                  name.66    gene.66
    ## 1 KROK082-19 Tenuiphantes tenebricola KROK082-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               sequence.66
    ## 1 AAGATATTGGAACTTTATATTTTATTTTTGGAGCGTGAGCTGCTATAGTAGGAACTGCTATAAGAGTATTAATTCGAATTGAGTTGGGACAAACTGGAAGTATATTAGGGGATGATCAGTTGTATAATGTTATTGTTACTGCTCATGCTTTTGTTATAATTTTTTTTATAGTTATACCTATTTTAATTGGGGGATTTGGAAATTGGTTAGTACCTTTAATACTTGGTGCTCCTGACATGGCTTTTCCTCGAATAAATAATTTAAGATTCTGGCTTTTACCTCCTTCTTTATTATTATTATTTATTTCAAGTATAGTTGAAATAGGAGTTGGGGCAGGATGAACAGTGTATCCTCCACTTGCTTCTTTAGAAGGACATGCGGGAAGCTCTGTTGATTTTGCTATTTTTTCTCTTCATTTAGCTGGGGCTTCTTCTATTATAGGAGCAATTAATTTTATTTCTACTATTTTTAATATACGTGGATATGGTGTGTCAATGGAAAAGGTTCCATTGTTTGTATGATCTGTTTTGATTACTGCTGTTCTTTTATTGTTGTCATTACCTGTTTTAGCAGGTGCTATTACTATACTTTTAACTGACCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCCGTGTTATTTCAACACTTATTTTGATTTTTTGT
    ##        id.67             name.67    gene.67
    ## 1 KROK083-19 Walckenaeria antica KROK083-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    sequence.67
    ## 1 AAGTTTATATTTTATATTTGGAGCTTGGGSTGCTATAGTAGGAACAGCAATAAGAGTATTAATTCGAATTGAATTAGGGCAAGGTGGTAGTTTGTYAGGGGACGATCAGTTATATAATGTTATTGTTACTGCTCATGCTTTTGTTATAATTTTTTTTATAGTAATACCTATTTTAATTGGAGGGTTTGGTAATTGGTTAGTTCCTTTGATATTAGGAGCTCCGGATATGGCATTTCCTCGTATAAATAATTTAAGATTTTGATTATTACCACCTTCTTTATTATTATTATTTATTTCTAGTATGGATGAGATGGGGGTAGGAGCRGGGTGAACTGTTTATCCYCCACTTGCTTCTTTGGAGGGGCATTCTGGKAGATCGGTAGATTTTGCTATTTTTTCTTTACATTTAGCTGGGGCTTCTTCAATTATAGGAGCTATTAATTTTATTTCTACTATTTTTAATATGCGGGGGTATGGTATAACTATAGAAAGGGTTCCTTTATTTGTTTGGTCTGTTTTGATTACAGCTGTATTATTATTATTGTCTTTACCTGTATTAGCAGGTGCTATTACTATACTTTTAACAGATCGAAATTTTAATACGYCATTTTTTSATCCTSCGGGGGGAGGGGATCC
    ##        id.68              name.68    gene.68
    ## 1 KROK084-19 Walckenaeria mitrata KROK084-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.68
    ## 1 AAGTTTATATTTTATTTTTGGAGCTTGGGCTGCTATAGTAGGTACAGCAATAAGAGTATTAATTCGAATTGAATTAGGACAGATTGGGAGTTTATTGGGAGATGATCAATTATATAATGTTGTTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATAGTAATGCCTATTTTGATTGGGGGATTTGGAAATTGGTTAGTCCCTTTAATGTTAGGGGCACCTGATATAGCTTTTCCTCGTATAAATAATTTAAGATTTTGGTTACTTCCACCTTCTTTATTATTATTGTTTATTTCTAGTATAGATGAAATAGGGGTCGGGGCAGGATGAACTATCTATCCACCCCTTGCTTCTTTGGAGGGGCACTCTGGAAGATCAGTAGATTTTGCTATTTTTTCTTTACATTTAGCTGGGGCGTCATCAATTATAGGGGCTATTAATTTTATTTCAACAATTTTAAATATGCGCGGGTATGGGATAACTATAGAGAGGGTCCCTTTATTCGTTTGATCTGTTCTAATTACAGCTGTATTATTATTATTATCTTTACCTGTTTTAGCAGGAGCTATTACTATATTATTGACAGATCGAAATTTCAATACTTCATTTTTTGATCCTTCTGGGGGAGGGGATCCAGTTTTATTTCAACATTTGTTT
    ##        id.69         name.69    gene.69
    ## 1 KROK085-19 Pardosa alacris KROK085-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.69
    ## 1 TACTTTATATCTAATATTTGGAGTTTGATCGGCTATAATAGGGACTGCTATAAGAGTATTAATTCGAATAGAATTAGGAAATCCTGGGAGATTATTAGGTGATGATCATTTATATAATGTTATAGTTACTGCTCATGCTTTTGTAATAATTTTTTTTATAGTGATACCAATTCTTATTGGAGGTTTTGGGAATTGATTAATTCCTTTAATATTAGGAGCTCCAGATATATCATTTCCTCGAATAAATAATCTTTCTTTTTGATTATTACCTCCTTCTTTATTTTTATTATCTATATCTTCTATAGTGGAGATAGGAGTTGGTGCTGGATGAACTGTTTATCCTCCTTTAGCATCTACGGTTGGTCATATAGGAAGTTCAATAGATTTTGCTATTTTTTCTCTTCATTTGGCTGGAGCTTCTTCTATTATAGGGGCTGTAAATTTTATTTCTACTATTATAAATATACGGATAATAGGAATATCTTTAGAAAAAGTTCCTCTTTTTGTTTGATCAGTTTTAATTACAGCAGTATTATTATTACTTTCTTTACCTGTTTTAGCAGGTGCTATTACTATATTATTAACAGATCGAAATTTTAATACTTCTTTTTTTGATCCTGCTGGTGGAGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.70            name.70    gene.70
    ## 1 KROK086-19 Trochosa terricola KROK086-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    sequence.70
    ## 1 AAGATATTGGTACTTTGTATTTAATGTTTGGTGCATGATCTGCTATAGTGGGAACTGCTATAAGAGTGTTGATTCGTTTAGAATTAGGGAATTCTGGAAGTTTATTAGGGGATGATCATTTATATAATGTTATGGTTACAGCTCATGCTTTTGTGATGATTTTTTTTATAGTAATACCAATTCTTATTGGAGGTTTTGGAAATTGATTAATTCCTTTAATATTAGGTGCTCCTGATATATCGTTTCCTCGAATAAATAATCTTTCTTTTTGGTTATTACCTCCTTCTTTATTTTTATTATCTATGTCTTCTATGGTGGAAATAGGAGTGGGGGCTGGTTGAACAGTTTATCCTCCTTTAGCATCTAGAGTGGGTCATATAGGGAGTTCTATAGATTTTGCTATTTTTTCTCTTCATTTAGCTGGTGCTTCTTCTATTATAGGAGCAGTAAATTTTATTTCTACTATTATTAATATACGAATATTAGGTATATCTATGGATAAAGTACCTTTATTTGTTTGATCAGTTTTGATTACGGCTGTTTTATTATTATTATCTTTACCTGTTTTAGCGGGTGCTATTACTATACTATTAACTGATCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##        id.71        name.71    gene.71
    ## 1 KROK087-19 Zora nemoralis KROK087-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     sequence.71
    ## 1 WAAGATATTGGTACTTTATATTTAATTTTTGGAGTTTGATCTGCTATGGTAGGAACAGCAATAAGAATGTTAATTCGATTGGAATTGGGACAAGTTGGAAGATTTATAGGCGATGATCATTTATATAATGTAATTGTTACTGCTCATGCTTTTGTTATAATTTTTTTTATAGTTATGCCAATTATAATTGGAGGATTTGGAAATTGATTAATTCCTTTAATGTTAGGGGCTCCTGATATAGCTTTTCCTCGAATAAATAACTTAAGTTTTTGATTATTACCACCTTCTTTGTTATTATTAATAATTTCTTCTATAGTTGAAATAGGAGTTGGTGCTGGTTGAACGGTTTATCCTCCGTTAGCTTCTATTATAGGTCATTCTGGTAGTTCTGTGGATTTTGCTATTTTTTCTTTACATCTAGCTGGTGCATCTTCTATTATAGGTTCTATTAATTTTATTACTACTGTAATTAATATACGATCTATTGGTATAACTATAGAAAAGGTTCCTTTATTTGTGTGATCAGTTGTAATTACTGCTGTTCTTTTATTATTATCATTACCAGTATTAGCTGGTGCAATTACTATATTATTGACTGATCGTAATTTTAATACTTCTTTTTTTGACCCTGCTGGGGGGGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.72              name.72    gene.72
    ## 1 KROK088-19 Segestria senoculata KROK088-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.72
    ## 1 GACATTATATTTAATTTTTGGGGCTTGAGCTGCTATAGCGGGGACTGCTATAAGTGTGTTGATTCGGGTTGAATTAGGGCAGGTTGGGAGTTTTTTGGGGGATGATCATCTATATAACGTGGTAGTAACTGCTCACGCGTTGGTAATGATTTTTTTTATAGTTATGCCGATTCTTATTGGGGGGTTTGGGAATTGGTTGGTTCCTTTGATGTTAGGTGCGCCGGATATGGCTTTTCCTCGTATGAATAACTTGAGATTTTGGTTACTTCCCCCCTCTTTAATATTGTTATTATCATCTTCATTGATGGAGAGAGGGGTGGGGGCGGGATGGACAATTTATCCTCCTTTATCTGCCAGTATGGGGCATTCTGGTTATGCTATGGATTTTGCTATTTTTTCGTTGCATTTGGCTGGGGCGTCTTCAATTATAGGAGCTATTAATTTTATTTCTACTGTATTGAATATGCGCTCATTTGGAATGAGAATAGAGAAAGTGCCTTTGTTTGTTTGGTCTGTGTTTATTACTGCTATTTTGTTACTATTGTCGTTGCCTGTGTTAGCGGGAGCAATTACTATATTATTGACTGATCGAAATTTTAATACTTCTTTTTTTGATCCGGCGGGGGGAGGAGATCCTATTTTGTTTCAGCATCTTTTT
    ##        id.73          name.73    gene.73
    ## 1 KROK089-19 Robertus lividus KROK089-19
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      sequence.73
    ## 1 TAAAGATATTGGAACTTTATATTTGATTTTTGGGGTGTGATCAGCTATAGTTGGTACAGCTATGAGTGTCCTAATTCGGGTAGAATTAGGACAATCTGGAAGATTGTTAGGGGATGATCAATTATATAATGTAATTGTAACTGCTCATGCTTTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGGGGGTTTGGAAATTGATTAGTTCCTTTAATGTTAGGGGCTCCAGATATAGCTTTCCCTCGAATAAATAATTTAAGATTTTGATTATTACCTCCTTCTTTATTTCTATTATTTATTTCTTCTATAATTGAAATAGGAGTAGGTGCTGGGTGAACAATTTATCCTCCTTTATCTTCTTTAGAGGGTCATTCAGGAAGATCAGTTGATTTTGCGATTTTTTCTCTTCATCTTGCAGGTGCTTCTTCTATTATAGGGGCTGTAAATTTTATTTCTACTATTTTAAATATACGTGTGTATGGAATATCTATAGAAAAAGTTACTTTATTTGTATGATCAGTTTTAATTACTGCTATTCTTTTATTATTATCGTTACCTGTTTTAGCAGGAGCTATTACTATGTTATTAACTGATCGAAATTTTAATACTTCTTTTTTTGATCCTTCTGGAGGAGGAGATCCAATTTTATTTCAACATTTATTT
    ##        id.74                 name.74    gene.74
    ## 1 KROK090-20 Clinopodes carinthiacus KROK090-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.74
    ## 1 AACCATGTATCTAATTTTTGGTGCTTGGGCGGCAATAGCTGGAACAGCTTTAAGAATTATTGTCCGACTAGAGCTTAGTCAACCTGGGGCCCTAATCGGGGATGACCAAATCTATAATGTAATTGTAACAGCCCATGCCTTTGTAATGATTTTCTTTATAGTTATACCAGTAATAATAGGGGGCTTTGGAAATTGAATGCTCCCGCTCATGCTAGGCGCCCCAGATATAGCCTTTCCACGAATAAATAATCTTAGCTTCTGACTTCTGCCCCCCTCTTTAACCCTTCTTACAACATCAATAATAGTTGAAAGAGGGGCAGGCACCGGCTGAACCGTGTACCCCCCATTAGCTGCAAATATTTCCCACTCAGGGCCCTCTGTTGATATAACAATTTTTTCTCTACACCTAGCTGGTGTCTCCTCTATTCTAGCTTCAATTAATTTTATTACTACAATTATTAATATACGATCTAGTGGCATAGTTCTTGAGCGAATCCCTTTGTTTGTATGAAGAGTAAAAATTACCGCAATCCTACTTTTGCTCTCTCTCCCCGTGTTAGCTGGAGCCATTACAATACTATTAACCGACCGAAACATTAATACAAGTTTCTTCGACCCTGCTGGTGGAGGGGATCCTATCCTATACCAACACCTATTC
    ##        id.75                    name.75    gene.75
    ## 1 KROK091-20 Dicellophilus carniolensis KROK091-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       sequence.75
    ## 1 TCGGGGATGACCAAACTTATAATGTAGTAGTAACAGCTCACGCCTTCGTAATAATTTTTTTCATAGTAATACCTATTATAATAGGAGGATTCGGCAATTGACTTCTACCTCTCATGCTCGGAGCCCCAGATATGGCGTTCCCCCGCCTAAACAACATAAGATTTTGACTCCTCCCCCCATCTCTAACGCTCCTCCTCGCCTCTGCTGCAGTCGAAAGTGGGGCGGGGACCGGCTGAACCGTATATCCCCCCCTCTCGTCAGGACTAGCACACTCCGGCCCATCAGTAGACATAACAATCTTCTCCCTACATCTAGCAGGTGTATCTTCAATCCTCGGGGCCATCAACTTCATCACCACAGTAATTAATATACGCTCCAGAGGAATAGTTATAGAACGAGTCCCTCTCTTCGTCTGGGGAGTAATAATTACCGCCATCCTCCTACTCCTATCCCTCCCCGTCCTTGCAGGCGCAATCACAATGCTACTGACCGACC
    ##        id.76          name.76    gene.76
    ## 1 KROK092-20 Schendyla armata KROK092-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                sequence.76
    ## 1 GGGCCTCAATAGCAGGGACAGCCCTCAGCCTTATCATTCGACTCGAACTAAGCCAGCCAGGGAGTCTCATTGGGGACGACCAAACCTATAACGTTATTGTCACCGCCCATGCCTTTGTAATAATTTTCTTCATAGTAATACCTATCATAATAGGAGGGTTCGGAAACTGACTCCTCCCATTAATACTCGGGGCCCCAGATATGGCCTTCCCCCGGCTAAATAACATAAGTTTTTGACTCCTCCCCCCGTCCCTCACCCTTCTCCTCGCCTCCGCTGCCGTAGAAAGTGGCGCAGGGACGGGCTGAACTGTCTACCCCCCCCTCTCCTCCGGCCTCGCCCACTCAGGCGCATCCGTGGACATAACCATTTTCTCGCTCCACCTAGCAGGCATCTCCTCAATCTTAGGCGCAATCAATTTTATCACCACCGTCATTAATATACGAACAAGAGGCATAGTATTCGAGCGCGTTCCCCTTTTCGTATGAGGCGTTACCATCACCGCGACGCTTCTCCTCCTGGCCCTCCCTGTTCTAGCCGGGGCCATCACGATACTCCTCACAGATCGAAACTTTAACACAAGCTTTTTTGACCCTGCCGGGGGAGGAGACCCAATTCTCTACCAACACCTCTTC
    ##        id.77              name.77    gene.77
    ## 1 KROK095-20 Schendyla tyrolensis KROK095-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        sequence.77
    ## 1 ACTAGAATTGAGCCAGCCAGGGAGTCTCATTGGAGACGACCAAACCTATAATGTCATCGTCACTGCCCACGCTTTTGTAATAATTTTCTTTATAGTAATGCCCATTATAATAGGGGGGTTTGGAAATTGACTCCTCCCCCTAATGCTCGGGGCCCCAGACATGGCCTTCCCCCGTCTTAATAACATAAGCTTTTGACTGCTCCCCCCCTCACTCACCCTTCTTCTCGCCTCCGCTGCAGTAGAAAGAGGGGCAGGCACGGGCTGAACCGTCTACCCCCCTCTCTCCTCCGGACTTGCCCACTCGGGGGCATCCGTAGACATAACCATCTTCTCCCTACATCTAGCCGGTATCTCCTCAATTTTAGGGGCAATCAATTTTATCACCACCGTCATTAACATACGAACAAGAGGAATAGTATTCGAACGAGTCCCCCTCTTCGTCTGAGGAGTTACCATTACAGCCACCCTCCTCCTATTGGCCCTCCCCGTACTAGCCGGAGCCATTACCATGCTCCTCACAGACCGAAACTTTAACACAAGCTTTTTTGACCCAGCAGGCGGAGGAGACCCAATCTTATACCAACATCTCTTC
    ##        id.78             name.78    gene.78
    ## 1 KROK096-20 Strigamia acuminata KROK096-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.78
    ## 1 AACAATATACCTAATCTTCGGAACTTGAGCCGCAATAGCAGGAACAGCCCTAAGCCTAATCATTCGAATAGAATTAAGTCAACCGGGAAGACTAATTGGAGACGACCAAATCTATAACGTAGTAGTAACAGCACATGCCTTCGTAATAATTTTTTTCATAGTAATACCAATCATAATAGGAGGATTCGGTAACTGAATACTCCCACTAATATTAGGAGCCCCAGACATAGCATTTCCCCGAATAAACAACCTAAGATTCTGATTATTACCACCCTCACTTACATTATTAATAGCCTCAATAGCAGTAGAAAGAGGGGCAGGAACAGGATGAACTGTATACCCGCCCCTAGCAACAAACATCTCCCACTCAGGCCCATCTGTTGACATAACTATTTTTTCTCTTCACCTAGCAGGAGTCTCATCAATCCTTGGCTCAATTAATTTCATTACAACTATTATCAACATACGAGCAAGAGGAATAATCATTGAACGAATCCCATTATTCGTATGAAGAGTAAAAATCACAGCTGTTCTACTCCTATTATCTTTACCAGTACTAGCAGGAGCCATCACAATACTTCTTACAGACCGAAACATTAACACAAGCTTCTTTGACCCTGTTGGGGGAGGGGACCCAATTCTTTACCAACACTTATTT
    ##        id.79                 name.79    gene.79
    ## 1 KROK098-20 Clinopodes carinthiacus KROK098-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              sequence.79
    ## 1 AACCATGTATCTAATTTTTGGCGCTTGAGCAGCTATAGCTGGAACAGCTTTAAGAATTATTGTGCGACTAGAGCTCAGCCAACCCGGGGCCCTAATTGGGGATGACCAAATTTATAACGTAATTGTAACAGCCCATGCCTTTGTAATGATTTTCTTCATAGTAATACCAGTAATAATAGGAGGATTCGGAAATTGAATACTCCCCCTTATGTTAGGCGCCCCAGACATGGCCTTCCCCCGAATAAACAATCTCAGCTTCTGACTCCTCCCCCCCTCTTTAACCCTTCTCACAACATCAATAATAGTTGAAAGAGGTGCGGGCACCGGCTGAACCGTATACCCCCCGTTAGCTGCAAACATTTCTCACTCTGGACCCTCTGTTGATATAACAATTTTTTCTCTTCACCTAGCTGGAGTGTCCTCCATTCTAGCCTCAATTAATTTTATTACTACAATCATTAATATACGATCTAGCGGAATGGTTCTTGAACGAATTCCTTTATTTGTGTGGAGAGTAAAAATTACCGCAATTCTACTTTTGCTCTCCCTCCCAGTGTTAGCTGGAGCCATTACAATATTATTAACCGACCGAAACATTAATACAAGCTTCTTCGACCCTGCTGGGGGCGG
    ##        id.80                 name.80    gene.80
    ## 1 KROK100-20 Clinopodes carinthiacus KROK100-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.80
    ## 1 AACCATGTATCTAATTTTTGGTGCTTGGGCGGCAATAGCTGGAACAGCTTTAAGAATTATTGTCCGACTAGAGCTTAGTCAACCTGGGGCCCTAATCGGGGATGACCAAATCTATAATGTAATTGTAACAGCCCATGCCTTTGTAATGATTTTCTTTATAGTTATACCAGTAATAATAGGGGGCTTTGGAAATTGAATGCTCCCGCTCATGCTAGGCGCCCCAGATATAGCCTTTCCACGAATAAATAATCTTAGCTTCTGACTTCTGCCCCCCTCTTTAACCCTTCTTACAACATCAATAATAGTTGAAAGAGGGGCAGGCACCGGCTGAACCGTGTACCCCCCATTAGCTGCAAATATTTCCCACTCAGGGCCCTCTGTTGATATAACAATTTTTTCTCTACACCTAGCTGGTGTCTCCTCTATTCTAGCTTCAATTAATTTTATTACTACAATTATTAATATACGATCTAGTGGCATAGTTCTTGAGCGAATCCCTTTGTTTGTATGAAGAGTAAAAATTACCGCAATCCTACTTTTGCTCTCTCTCCCCGTGTTAGCTGGAGCCATTACAATACTATTAACCGACCGAAACATTAATACAAGTTTCTTCGACCCTGCTGGTGGAGGGGATCCTATCCTATACCAACACCTATTC
    ##        id.81          name.81    gene.81
    ## 1 KROK102-20 Schendyla armata KROK102-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             sequence.81
    ## 1 GAGCATGGGCCTCAATAGCAGGGACAGCCCTCAGCCTTATCATTCGACTCGAACTAAGCCAGCCAGGGAGTCTCATTGGGGACGACCAAACCTATAACGTTATTGTCACCGCCCATGCCTTTGTAATAATTTTCTTCATAGTAATACCTATCATAATAGGAGGGTTCGGAAACTGACTCCTCCCATTAATACTCGGGGCCCCAGATATGGCCTTCCCCCGGCTAAATAACATAAGTTTTTGACTCCTCCCCCCGTCCCTCACCCTTCTCCTCGCCTCCGCTGCCGTAGAAAGTGGCGCAGGGACGGGCTGAACTGTCTACCCCCCCCTCTCCTCCGGCCTCGCCCACTCAGGCGCATCCGTGGACATAACCATTTTCTCGCTCCACCTAGCAGGCATCTCCTCAATCTTAGGCGCAATCAATTTTATCACCACCGTCATTAATATACGAACAAGAGGCATAGTATTCGAGCGCGTTCCCCTTTTCGTATGAGGCGTTACCATCACCGCGACGCTTCTCCTCCTGGCCCTCCCTGTTCTAGCCGGGGCCATCACGATACTCCTCACAGATCGAAACTTTAACACAAGCTTTTTTGACCCTGCCGGGGGAGGAGACCCAATTCTCTACCAA
    ##        id.82                      name.82    gene.82
    ## 1 KROK103-20 Harpolithobius gottscheensis KROK103-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            sequence.82
    ## 1 AACAATATATTTTGTATTAGGAATCTGATCAGCAATAATCGGTACCGGTCTTAGAATTCTTATTCGATTGGAATTAAGACAACCTGGAAGATTAATTGGAGATGACCAAATTTATAATGTAATTGTAACTGCACATGCTTTTATTATAATTTTTTTTATAGTTATACCCATTATAATTGGAGGATTTGGAAATTGATTGGTGCCACTAATATTAGGTGCTCCAGATATGGCATTTCCTCGAATAAATAATATAAGATTTTGATTACTCCCTCCATCTTTAACCCTACTTTTATGCTCTGCAGCAGTAGAAAGAGGAGCAGGAACCGGATGAACAGTATATCCTCCACTGTCTTCAAATATTTCTCACAGAGGAGCTTCTGTTGATATAACAATCTTCTCCCTTCATTTAGCTGGAGCCTCATCAATTTTAGGGGCTATTAATTTTATTTCAACTATTATTAATATACGATCCAGAGGAATATCATTTGAACGAGTTCCTCTTTTCGTATGATCAGTAAAAATTACTGTAATCTTACTTTTATTATCATTACCTGTATTAGCAGGAGCTATTACTATATTATTAACTGATCGTAATCTCAATACAAGATTTTTTGATCCTACCGGAGGAGGGGATCCAATTTTAT
    ##        id.83            name.83    gene.83
    ## 1 KROK104-20 Lithobius dentatus KROK104-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   sequence.83
    ## 1 AACAATATACTTTATTTTAGGAATTTGATCAGCTATAATTGGAACAGGACTTAGCTTATTAATTCGATTAGAACTTAGCCAACCAGGGAGATTAATTGGGGATGATCAAATTTATAATGTCATCGTAACAGCTCATGCTTTTATTATAATCTTTTTTATAGTAATACCAATTATAATTGGAGGATTTGGGAATTGATTAGTACCTTTAATATTAGGAGCTCCTGATATAGCATTCCCCCGAATAAATAATATAAGATTTTGGCTATTACCTCCCTCCCTTACACTTCTTCTTTGCTCAGCCGCTGTAGAAAGTGGAGCTGGAACAGGTTGAACAGTCTACCCTCCCTTATCATCTAATATTTCCCATAGTGGGGCATCAGTAGATATAACAATCTTTTCACTACACTTAGCAGGTGCATCATCAATTCTTGGAGCTATTAATTTTATCTCAACAATTATTAATATACGATCAAGAGGAATATCATTTGAACGAGTCCCTTTATTCGTGTGATCCGTTAAAATCACAGTAATTCTATTATTATTATCCTTACCAGTACTAGCTGGGGCAATCACAATATTATTAACAGATCGTAATCTAAATACAAGATTCTTTGACCCTACAGGGGGAGGAGATC
    ##        id.84         name.84    gene.84
    ## 1 KROK105-20 Lithobius latro KROK105-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        sequence.84
    ## 1 AACCATATATTTTGTATTAGGAATTTGATCAGCAATAATTGGTACAGGACTTAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGTGTATAATGTTATTGTCACAGCCCACGCATTCATTATAATTTTCTTTATAGTAATACCAATTATAATTGGTGGATTCGGAAATTGACTGGTACCCCTTATACTTGGTGCTCCAGATATGGCCTTCCCCCGAATAAATAATATAAGATTTTGGTTACTCCCCCCCTCTCTAACCCTACTTCTTTGCTCTGCTGCAGTAGAGAGAGGAGCAGGAACGGGCTGAACTGTATACCCCCCCTTATCAGCAAATATCTCCCATAGCGGGGCCTCAGTAGATATAACAATTTTTTCTCTACACTTAGCAGGGGCGTCATCAATCTTAGGAGCAATTAACTTTATTTCAACAATTATCAATATACGTACTAGTGGGATATCATTCGAACGAGTACCATTATTTGTATGATCTGTAAAGATTACAGTTATTTTACTTCTTCTTTCCCTTCCCGTTCTTGCCGGAGCTATTACTATACTCCTTACAGACCGAAACTTGAATACAAGATTCTTTGATCCCACAGGGGGAGGAGACCCCATCTTATACCAGCACCTAT
    ##        id.85           name.85    gene.85
    ## 1 KROK106-20 Lithobius validus KROK106-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             sequence.85
    ## 1 CAGCAATAATCGGAACAGGATTAAGCCTTCTCATTCGACTAGAATTAAGCCAACCAGGGAGATTAATTGGAGACGATCAAATTTATAACGTAATCGTAACAGCTCATGCATTTATTATAATTTTCTTCATAGTAATGCCAATCATAATTGGAGGATTTGGTAATTGATTAGTCCCACTAATATTAGGAGCCCCAGACATAGCATTCCCCCGATTAAATAACATAAGATTTTGACTTCTCCCACCCTCCCTCACACTACTTCTTTGTTCAGCAGCTGTTGAAAGAGGCGCAGGAACTGGATGAACCGTTTACCCACCTCTTTCTGCAAACATCTCGCATAGAGGAGCATCAGTGGATATAACAATTTTTTCTCTACACTTAGCAGGTGCCTCCTCTATTCTAGGGGCCATTAATTTTATTTCTACAATTATTAATATACGAACAAGAGGAATATCATTCGAACGAGTTCCATTATTCGTCTGATCAGTAAAAATTACTGTTATTCTCCTTTTATTATCTTTACCAGTACTTGCAGGAGCAATTACCATATTATTAACCGATCGAAATTTAAACACAAGATTCTTCGACCCAACAGGAGGGGGGGATCCTATTTTATACCAACATCTATTC
    ##        id.86              name.86    gene.86
    ## 1 KROK108-20 Lithobius tenebrosus KROK108-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                sequence.86
    ## 1 CACAGGATTAAGAATTCTTATCCGATTAGAACTTAGTCAACCAGGAAGACTAATTGGGGATGATCAAATTTATAATGTAATTGTAACAGCTCACGCATTCATTATAATTTTTTTTATAGTAATACCCATMWYWWTTGGAGKWKTTGRWCMMTGATTGGTGCCCTTAATATTAGGGGCACCAGATATAGCTTTCCCTCGACYAAATAATATAAGATTCTGATTACTCCCGCCTTCCCTAACATTATTATTATCCTCAGCCGCCGTAGAAAGAGGAGCTGGTACAGGATGAACCGTATACCCCCCTMTATCATCTAATATTTSYMAAACAGGAGCAWCAGKAGATAYAACTATTTTTTCTCTCCACTTAGCAGGGGCATCTTCAATCTTGGGAGCAATCAATTTTATCTCAACAATTATTAATATACGATCAAGAGGAAWAACATTTGAACGTGTTCCCCTATTTGTGKGATCTGTAAAAATTACCGTAATCTTACTCCTCCTATCCCTGCCAGTATTAGCAGGAGCCATTACAATATTATTAACCGACCGAAACCTAAACACAARATTCTTTGATCCCACTGAAGGAGGAGACCCAATTTTATACCAGCACTTATTC
    ##        id.87         name.87    gene.87
    ## 1 KROK109-20 Lithobius latro KROK109-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    sequence.87
    ## 1 AACCATATATTTTGTATTAGGAATTTGATCAGCAATAATTGGTACAGGACTCAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGTGTATAATGTTATTGTCACAGCCCACGCATTCATTATAATTTTCTTTATAGTAATACCAATTATAATTGGTGGATTCGGAAATTGACTGGTACCCCTTATACTTGGTGCTCCAGATATGGCCTTCCCCCGAATAAATAATATAAGATTTTGGTTACTCCCCCCCTCTCTAACCCTACTTCTTTGCTCTGCTGCAGTAGAGAGAGGAGCAGGAACGGGCTGAACTGTATACCCCCCCTTATCAGCAAATATCTCCCATAGCGGGGCCTCAGTAGATATAACAATTTTTTCTCTACACTTAGCAGGGGCGTCATCAATCTTAGGAGCAATTAACTTTATTTCAACAATTATCAATATACGTACTAGTGGGATATCATTCGAACGAGTACCATTATTTGTATGATCTGTAAAGATTACAGTTATTTTACTTCTTCTTTCCCTTCCCGTTCTTGCCGGAGCTATTACTATACTCCTTACAGACCGAAACTTGAATACAAGATTCTTTGATCCCACAGGGGGAGGAGACCC
    ##        id.88         name.88    gene.88
    ## 1 KROK111-20 Lithobius latro KROK111-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     sequence.88
    ## 1 TTAGGGATTTGATCAGCAATAATTGGTACAGGACTCAGCCTCCTTATTCGCCTTGAACTTAGCCAACCAGGAAGATTAATTGGAGATGACCAAGTGTATAATGTTATTGTCACAGCCCACGCATTCATTATAATTTTCTTTATAGTAATACCAATTATAATTGGTGGATTCGGAAATTGACTGGTGCCCCTTATACTTGGTGCTCCAGATATGGCCTTCCCCCGAATAAATAATATAAGATTTTGGTTACTCCCCCCCTCTCTAACCCTACTTCTTTGCTCTGCTGCAGTAGAGAGAGGAGCAGGAACGGGCTGAACTGTATACCCCCCCTTATCAGCAAATATCTCCCATAGCGGGGCCTCAGTAGATATAACAATTTTTTCTCTACACTTAGCAGGGGCGTCATCAATCTTAGGAGCAATTAACTTTATTTCAACAATTATCAATATACGTACTAGTGGGATATCATTCGAACGAGTACCATTATTTGTATGATCTGTAAAGATTACAGTTATTTTACTCCTTCTTTCCCTTCCCGTTCTTGCCGGAGCTATTACTATACTCCTTACAGACCGAAACTTGAATACAAGATTCTTTGATCCCACAGGGGGAGGAGACCCCATCTTATATCAGCACCTATTTTGATTTTTTGGTCACCSGGAAATTTTT
    ##        id.89         name.89    gene.89
    ## 1 KROK119-20 Cryptops parisi KROK119-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.89
    ## 1 AACAATATACTTAATTTTTGGAGCTTGAGCAGCYATATTAGGAACATCTTTAAGCTTACTAATYCGACTAGAATTAAGCCAACCAGGAACTTTAATTGGAGAYGAYCAATTATATAATGTTGTAGTAACAGCYCATGCTTTYGTTATAATTTTCTTTATAGTTATACCTATTATAATTGGYGGSTTTGGAAACTGRTTAGTACCYTTAATAATAGGTGCCCCAGACATAGCTTTTCCACGATTAAATAATATAAGCTTCTGAYTATTACCACCTTCTTTAAGAYTGCTATTAGGATCTAGMTTGTTAGAAAGTGGAGCAGGAACAGGATGAACAGTTTATCCACCYCTAGCCTCTTCTCTTGCCCACTCAGGTTGYTCMGTAGATATAACTATTTTTTCTTTRCATCTTGCAGGAGTTTCTTCTATTTTAGGGGCTATTAATTTTATTACAACTATTCTTAATATACGRTCAAAAGGTATAGTATTTGAACGATTACCTCTATTTGCATGATCAGTATTAATCACAGCTATTCTACTCTTACTCTCTCTTCCTGTATTAGCAGGAGCTATTACAATATTACTAACAGACCGAAATTTTAATACCTCATTTTTTGATCCAGCAGGAGGAGGAGACCCTATTCTTTACCAACATTTATTC
    ##        id.90         name.90    gene.90
    ## 1 KROK120-20 Cryptops parisi KROK120-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.90
    ## 1 AACAATATACTTAATTTTTGGAGCTTGAGCAGCCATATTAGGAACATCTTTAAGCTTACTAATCCGACTAGAATTAAGCCAACCAGGAACTTTAATTGGAGATGACCAATTATATAATGTTGTAGTAACAGCCCATGCTTTCGTTATAATTTTCTTTATAGTTATACCTATTATAATTGGCGGCTTTGGAAACTGGTTAGTACCTTTAATAATAGGTGCCCCAGACATAGCTTTTCCACGATTAAATAATATAAGCTTCTGACTATTACCACCTTCTTTAAGCTTGCTATTAGGATCTAGCTTGTTAGAAAGTGGAGCAGGGACAGGATGAACGGTTTATCCACCTCTAGCCTCTTCTCTTGCCCACTCAGGTTGTTCAGTAGACATAACTATTTTTTCTTTGCATCTTGCAGGAATTTCTTCTATTTTAGGGGCTATTAATTTTATTACAACTATTCTTAATATACGATCAAAAGGTATAGTATTTGAACGATTACCTCTATTTGCATGATCAGTATTAATCACAGCTATTCTACTCTTACTCTCTCTTCCTGTTTTAGCAGGAGCTATTACAATATTACTAACAGACCGAAATTTTAATACCTCATTTTTTGATCCAGCAGGAGGAGGAGACCCTATTCTTTACCAACATTTATTC
    ##        id.91         name.91    gene.91
    ## 1 KROK121-20 Cryptops parisi KROK121-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.91
    ## 1 AACAATATACTTAATTTTTGGAGCTTGAGCAGCCATATTAGGAACATCTTTAAGCTTACTAATCCGACTAGAATTAAGCCAACCAGGAACTTTAATTGGAGATGACCAATTATATAATGTTGTAGTAACAGCCCATGCTTTCGTTATAATTTTCTTTATAGTTATACCTATTATAATTGGCGGCTTTGGAAACTGGTTAGTACCTTTAATAATAGGTGCCCCAGACATAGCTTTTCCACGATTAAATAATATAAGCTTCTGACTATTACCACCTTCTTTAAGATTGCTATTAGGATCTAGCTTGTTAGAAAGTGGAGCAGGAACAGGATGAACAGTTTATCCACCTCTAGCCTCTTCTCTTGCCCACTCAGGTTGTTCAGTAGATATAACTATTTTTTCTTTGCATCTTGCAGGAATTTCTTCTATTTTAGGGGCTATTAATTTTATTACAACTATTCTTAATATACGGTCAAAAGGTATAGTATTTGAACGATTACCTCTATTTGCATGATCAGTATTAATCACAGCTATTCTACTCTTACTCTCTCTTCCTGTTTTAGCAGGAGCTATTACAATATTACTAACAGACCGAAATTTTAATACCTCATTTTTTGATCCAGCAGGAGGAGGAGACCCTATTCTTTACCAACATTTATTC
    ##        id.92         name.92    gene.92
    ## 1 KROK122-20 Cryptops parisi KROK122-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.92
    ## 1 AACAATATACTTAATTTTTGGAGCTTGAGCAGCCATATTAGGAACATCTTTAAGCTTACTAATYCGAATAGAATTAAGCCAACCAGGAACTTTAATTGGAGATGAYCAATTATATAATGTTGTAGTAACAGCYCATGCTTTYGTTATAATTTTCTTTATAGTTATACCTATTATAATTGGYGGSTTTGGAAACTGRTTAGTACCYTTAATAATAGGTGCACCAGAYATAGCTTTTCCACGATTAAATAATATAAGCTTCTGAYTATTACCACCTTCTTTAAGAYTRCTATTAGGATCTAGMTTGTTAGAAAGTGGAGCWGGAACAGGATGAACAGTTTATCCACCYCTAGCCTCTTCTCTTGCCCACTCAGGTTGYTCMGTAGAYATAACTATTTTTTCWTTRCATCTTGCAGGAGTTTCTTCTATTYTAGGRGCTATTAATTTTATTACAACTATTCTTAATATACGATCAAAAGGTATAGTATTTGAACGATTACCTCTTTTTGCATGATCAGTATTAATYACAGCTATTCTACTCTTACTCTCTCTTCCTGTTTTAGCAGGAGCTATTACAATATTACTAACAGAYCGAAATTTTAATACCTCATTTTTTGATCCAGCAGGAGGAGGAGAYCCTATTCTTTACCAACATTTATTC
    ##        id.93         name.93    gene.93
    ## 1 KROK123-20 Cryptops parisi KROK123-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.93
    ## 1 AACAATATACTTAATTTTTGGAGCTTGAGCAGCTATATTAGGAACATCTCTAAGCTTACTAATTCGAATAGAATTAAGCCAACCAGGAACYTTAATTGGAGAYGAYCAATTRTATAATGTTGTAGTAACAGCTCATGCTTTYGTTATAATTTTCTTTATAGTTATACCTATTATAATTGGYGGSTTTGGAAACTGRTTAGTACCYTTAATAATAGGTGCACCAGAYATAGCTTTTCCACGATTAAATAATATAAGCTTCTGATTATTACCCCCTTCTTTAAGAYTACTWTTAGGRTCTAGATTRTTAGAAAGTGGAGCWGGAACAGGATGAACAGTTTATCCACCYCTAGCCTCTTCTCTTGCCCACTCAGGKTGYTCMGTAGATATAACTATTTTTTCWTTACATCTTGCAGGAGTTTCTTCTATTCTRGGAGCTATTAATTTTATTACAACTATTCTTAATATACGATCAAAAGGTATAGTATTTGAACGATTACCTCTTTTTGCATGATCAGTATTAATYACAGCTATTCTMCTCTTACTYTCTCTTCCTGTATTAGCAGGAGCTATTACAATATTACTAACAGATCGAAATTTTAATACTTCATTTTTYGATCCAGCAGGAGGAGGAGAYCCTATTCTTTACCAACATTTATTC
    ##        id.94         name.94    gene.94
    ## 1 KROK124-20 Cryptops parisi KROK124-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.94
    ## 1 AACAATATACTTAATTTTTGGAGCTTGAGCAGCTATATTAGGAACATCTCTAAGCTTACTAATTCGAATAGAATTAAGCCAACCAGGAACCTTAATTGGAGACGATCAATTGTATAATGTTGTAGTAACAGCTCATGCTTTTGTTATAATTTTCTTTATAGTTATACCTATTATAATTGGCGGGTTTGGAAACTGATTAGTACCCTTAATAATAGGTGCACCAGATATAGCTTTTCCACGATTAAATAATATAAGCTTCTGATTATTACCCCCCTCTTTAAGACTACTTTTAGGGTCTAGATTATTAGAAAGTGGAGCTGGAACAGGATGAACAGTTTATCCACCCCTAGCCTCTTCTCTTGCCCACTCAGGGTGCTCCGTAGATATAACTATTTTTTCATTACATCTTGCAGGAGTTTCTTCTATTCTGGGAGCTATTAATTTTATTACAACTATTCTTAATATACGATCAAAAGGTATAGTATTTGAACGATTACCTCTTTTTGCATGATCAGTATTAATTACAGCTATTCTCCTCTTACTTTCTCTTCCTGTATTAGCAGGAGCTATTACAATATTATTAACAGATCGAAATTTTAATACTTCATTTTTCGATCCAGCAGGAGGAGGAGATCCTATTCTTTACCAAMATTTATTC
    ##        id.95            name.95    gene.95
    ## 1 KROK125-20 Cryptops hortensis KROK125-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.95
    ## 1 GAGCTTGAGCATCCATACTGGGGACAGCCTTAAGCCTCTTGATCCGCCTAGAGTTAAGACAACCAGGAACCYTAATCGGAGACGACCAACTCTATAACGTTGTAGTCACAGCTCATGCATTTGTRATAATCTTCTTTATAGTTATACCTATCATAATCGGKGGCTTTGGRAACTGATTAGTACCCYTAATAATAGGAGCCCCAGATATAGCTTTTCCCCGCTTAAATAATATAAGATTTTGRCTCCTCCCCCCCTCCTTAATGCTCCTTCTTGGGTCTAGATTAGTWGAAAGCGGAGCAGGGACYGGTTGAACRGTATACCCCCCTCTAGCCTCTTCCATAGCCCACTCAGGCTGTTCAGTAGACCTAACAATTTTTTCTCTACACCTAGCKGGRGTCTCCTCAATCCTTGGAGCTATCAATTTTATTACAACCATTATTAATATACGATCAAGCGGAATAGTGTTTGAGCGCCTCCCTCTCTTTGCCTGATCTGTGTTAATCACAGCTGTYCTACTGTTACTTTCCCTCCCTGTTCTCGCAGGAGCTATTACAATATTGCTTACAGACCGAAACTTCAATACCTCTTTCTTCGACCCTGCRGGAGGGGGTGACCCAATCCTCTAC
    ##        id.96            name.96    gene.96
    ## 1 KROK126-20 Cryptops hortensis KROK126-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.96
    ## 1 AACTATATATTTAATATTTGGAGCTTGAGCATCCATACTGGGGACAGCCTTAAGCCTCTTGATCCGCCTAGAGTTAAGACAACCAGGAACCCTAATCGGAGACGACCAACTCTATAACGTTGTAGTCACAGCTCATGCATTTGTAATAATCTTCTTTATAGTTATACCTATCATAATCGGTGGCTTTGGGAACTGATTAGTACCCTTAATAATAGGAGCCCCAGATATAGCTTTTCCCCGCTTAAATAATATAAGATTTTGGCTCCTCCCCCCCTCCTTAATGCTCCTTCTTGGGTCTAGATTAGTTGAAAGCGGAGCAGGGACTGGTTGAACAGTATACCCCCCTCTAGCCTCTTCCATAGCCCACTCAGGCTGTTCAGTAGACCTAACAATTTTTTCTCTACACCTAGCTGGGGTCTCCTCAATCCTTGGAGCTATCAATTTTATTACAACCATTATTAATATACGATCAAGCGGAATAGTGTTTGAGCGCCTCCCTCTCTTTGCCTGATCTGTGTTAATCACAGCTGTTCTACTGTTACTTTCCCTCCCTGTTCTCGCAGGAGCTATTACAATATTACTTACAGACCGAAACTTCAATACCTCTTTCTTCGACCCTGCAGGAGGGGGTGACCCAATCCTCTACCAACATTTATTC
    ##        id.97          name.97    gene.97
    ## 1 KROK127-20 Coelotes atropos KROK127-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     sequence.97
    ## 1 GAGTATTAATTCGAATTGAATTAGGTCAATCAGGAAGTTTTTTGGGTGATGATCATTTATATAATGTTATTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATAGTGATACCTATTTTAATTGGAGGTTTTGGTAATTGATTAGTACCTTTGATATTAGGTGCTCCAGATATAGCTTTTCCTCGATTAAATAATTTAAGGTTTTGATTATTACCTCCTTCATTATTTTTATTGTTTATTTCTTCTATGGTTGAAATAGGTGTAGGAGCTGGATGGACGGTTTATCCACCATTGGCTTCTAGTATGGGTCATTCTGGAAGATCTGTTGATTTTGCTATTTTTTCTTTACATTTAGCTGGGGCTTCTTCTATTTTAGGAGCTATTAATTTTATTTCTACTATTTTTAATATACGGTCGAATGGAATGACTTTTGAAAAGGTTCCTTTATTTGTTTGATCCGTATTAATTACTGTTGTATTATTATTATTATCTTTGCCTGTATTAGCGGGTGCTATTACAATATTATTAACTGATCGAAATTTTAATACTTCATTTTTTGATCCAGCTGGAGGTGGTGATCCTATTTTATTTCAACATTTATTT
    ##        id.98             name.98    gene.98
    ## 1 KROK128-20 Histopona luxurians KROK128-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.98
    ## 1 AACATTGTATTTAATTTTTGGGACGTGATCTGCTATAGTGGGAATAGCTATAAGTGTTCTTATTCGAATTGAATTAGGACAATCAGGAAGATTTTTGGGTGATGATCACCTTTATAATGTAATTGTTACTGCTCATGCTTTTGTTATAATCTTTTTTATAGTTATGCCTGTAATAATTGGAGGATTTGGAAATTGGTTAATTCCTTTAATATTAGGAACGCCAGATATGGCGTTTCCTCGAATAAATAATTTGAGATTTTGGTTATTACCCCCTTCTTTATTTTTGCTTTTTATTTCTTCTATAGTTGAAATAGGAGTTGGTTCAGGGTGAACTGTGTATCCGCCTTTAGCATCTTCTATTGGACATGTTGGTAGTTCTGTTGATTTTGCGATTTTTTCTTTACATTTGGCTGGAGCTTCTTCAATTATAGGGGCTATTAATTTTATTTCTACTATTTTAAATATACGTTCTCCATTCATGAGAATGGAAAAAGTTCCTTTATTTGTGTGGTCTGTTTTAATTACTGCTGTTCTGTTATTATTGTCTTTGCCAGTTTTAGCTGGAGCTATTACAATATTACTTACTGATCGTAATTTTAATACTTCTTTTTTTGACCCTGCTGGAGGAGGAGATCCTATTTTATTTCAACATTTATTT
    ##        id.99             name.99    gene.99
    ## 1 KROK129-20 Histopona luxurians KROK129-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          sequence.99
    ## 1 AACATTGTATTTAATTTTTGGGACGTGATCTGCTATAGTGGGAATAGCTATAAGTGTTCTTATTCGAATTGAATTAGGACAATCAGGAAGATTTTTGGGTGATGATCACCTTTATAATGTAATTGTTACTGCTCATGCTTTTGTTATAATCTTTTTTATAGTTATGCCTGTAATAATTGGAGGATTTGGAAATTGGTTAATTCCTTTAATATTAGGAACGCCAGATATGGCGTTTCCTCGAATAAATAATTTGAGATTTTGGTTATTACCCCCTTCTTTATTTTTGCTTTTTATTTCTTCTATAGTTGAAATAGGAGTTGGTTCAGGGTGAACTGTGTATCCGCCTTTAGCATCTTCTATTGGACATGTTGGTAGTTCTGTTGATTTTGCGATTTTTTCTTTACATTTGGCTGGAGCTTCTTCAATTATAGGGGCTATTAATTTTATTTCTACTATTTTAAATATACGTTCTCCATTCATGAGAATGGAAAAAGTTCCTTTATTTGTGTGGTCTGTTTTAATTACTGCTGTTCTGTTATTATTGTCTTTGCCAGTTTTAGCTGGAGCTATTACAATATTACTTACTGATCGTAATTTTAATACTTCTTTTTTTGACCCTGCTGGAGGAGGAGATCCTATTTTATTTCAACATTTATTT
    ##       id.100          name.100   gene.100
    ## 1 KROK130-20 Histopona torpida KROK130-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.100
    ## 1 AACATTATATTTAATTTTTGGTGTGTGATCTGCTATAGTGGGGACTGCAATAAGAGTTATTATTCGAATTGAATTAGGTCAGTCTGGTAGTTTTTTAGGAGATGATCATCTTTATAATGTAATTGTTACTGCTCATGCATTTGTGATGATTTTTTTTATAGTTATACCAATTATAATTGGAGGATTTGGAAATTGATTGGTTCCTTTAATGTTAGGTTCTCCAGATATAGCATTTCCTCGAATAAATAATTTAAGTTTTTGGCTGTTACCTCCGTCTTTATTTTTGCTTTTTGTGTCGGCCCTATCTGAGATAGGGGTGGGGGCTGGATGAACTGTTTATCCGCCTCTGGCTTCTTCTATTGGACATATAGGTAGTTCTGTCGATTTTGCTATTTTTTCTTTACATTTGGCTGGGGCTTCTTCAGTAATAGGAGCTATTAATTTTATTTCTACTATTTGAAATATGCGTTCTTATGAAATAAGAATGGATAAAGTACCTTTGTTTGTATGATCTGTTTTGATTACTGCTGTATTATTATTATTATCTTTACCAGTTTTAGCTGGGGCTATTACAATATTGCTTACTGATCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##       id.101               name.101   gene.101
    ## 1 KROK131-20 Inermocoelotes anoplus KROK131-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.101
    ## 1 TTCTATGTATTTAATTTTTGGAGCTTGATSTGCTATAGTTGGTACCGCTATAAGAGTTTTAATCCGAATTGAATTAGGTCAATCAGGAAGATTTTTGGGTGATGATCATTTATATAATGTTATTGTTACTGCTCATGCTTTTATTATAATTTTTTTTATAGTAATACCTATTTTAATTGGAGGTTTTGGGAATTGATTAATTCCTTTAATGTTAGGGGCGCCAGATATGGCTTTTCCTCGAATAAATAATTTGAGTTTTTGGTTGTTACCTCCTTCGTTGTTTTTATTATTTATTTCTTCTATGGTGGAGATAGGAGTAGGGGCTGGATGAACGATTTATCCTCCATTGGCTTCTATGATAGGGCATGCTGGAAGTTCTGTTGATTTTGTTATTTTTTCTTTGCATTTGGCTGGTGTTTCTTCTATTTTAGGAGCTATTAATTTTATTTCTACTATTTTTAATATACGATCTTATGGAATATCTTTTGAGAAGGTACCATTATTTGTTTGGTCGGTATTAATTACTGTTGTGTTATTATTATTATCTTTGCCTGTATTAGCGGGTGCTATTACAATATTGTTAACTGATCGTAATTTTAATACTTCATTTTTTGATCCAGCTGGAGGTGGAGATCCTATTTTATTTCAAYATTTATTT
    ##       id.102               name.102   gene.102
    ## 1 KROK132-20 Inermocoelotes inermis KROK132-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.102
    ## 1 TACTTTGTATTTGATTTTTGGAGCTTGATCTGCTATAGTTGGTACAGCTATAAGAGTTTTGATTCGGATTGAATTAGGTCAACCAGGAAGATTTTTAGGTGATGATCATTTATATAATGTAATTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATAGTAATACCTATTTTAATTGGAGGTTTTGGAAATTGATTAGTTCCTTTAATATTAGGGGCTCCAGATATAGCTTTTCCTCGAATAAATAATTTGAGTTTTTGATTATTACCTCCTTCATTATTTTTATTGTTTATTTCTTCAATAGTTGAAATAGGTGTAGGTGCTGGATGAACAATTTATCCTCCATTGGCTTCTATAATGGGCCATGCTGGAAGTTCTGTTGATTTTGTTATTTTTTCTTTACATTTAGCGGGGGCTTCCTCTATTTTAGGAGCTATTAATTTTATTTCTACTATTTTTAATATACGGTCATATGGAATAACTTTCGAGAAAGTTCCTTTATTTGTGTGGTCAGTATTGATTACTGTTGTATTATTATTGTTGTCTTTACCTGTATTAGCAGGGGCTATTACAATATTATTAACTGATCGTAACTTTAATACTTCGTTTTTTGATCCAGCTGGAGGTGGTGATCCTATTTTATTTCAACATTTGTTT
    ##       id.103             name.103   gene.103
    ## 1 KROK133-20 Tegenaria silvestris KROK133-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     sequence.103
    ## 1 CKTGGTCAWCWAATCATAMAKATWATRGGACATGGTAYWTAATMTTTGGTGCTTGGTCAGSMWTAGTTRGAGSTGSKATSAGAGTTTTAATTCGAATTGAATTGGGTCAGCCGGGGAGATTTATTGGTGATGATCATTTGTATAATGTAATTGTTACGGCTCATGCTTTTGTTATAATTTTTTTTATAGTAATACCAATTTTAATTGGTGGGTTTGGAAATTGATTAGTGCCTTTAATATTAGGGGCGCCTGATATGGCTTTTCCTCGGATAAATAATTTAAGTTTTTGATTATTACCTCCTTCTTTATTTATATTATTTATTTCTTCTATAGTAGATATGGGAGTAGGAGCAGGATGGACTATTTATCCTCCTTTAGCATCTTCTCTTGGTCACATAGGAAGATCTATGGATTTTGCTATTTTTTCTTTACATTTGGCTGGGGCTTCTTCAATTATAGGGGCTATTAATTTTATTTCTACTATTTTAAATATACGTTCAATTGGGATAAAGATAGAGAGGGTCCCGTTGTTTGTTTGGTCAGTATTAATCACTGCTATTTTATTGTTATTATCTTTACCTGTATTAGCAGGTGCTATTACTATATTGTTAACTGATCGAAATTTTAATACTTCATTTTTTGACCCTGCAGGGGGAGGGGATCCAATTTTATTTCAACATTTGTTT
    ##       id.104           name.104   gene.104
    ## 1 KROK134-20 Amaurobius obustus KROK134-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.104
    ## 1 AACATTATATTTAATTTTTGGAGCTTGAGCATCTATAGTTGGAATAGCTATAAGAGTTTTAATTCGAATTGAATTAGGACAATCAGGAAGTTTATTTGGAGATGATCATTTATATAATGTAATTGTAACAGCTCATGCTTTTGTAATAATTTTTTTTATAGTTATACCAATTATAATTGGGGGATTTGGAAATTGAATAGTTCCTTTAATATTAGGAGCTCCTGATATAGCTTTCCCTCGTATAAATAATTTAAGTTTTTGATTATTACCTCCTTCTTTATTATTATTAATTATTTCTTCTATAGTAGAAATAGGAGTAGGAGCAGGTTGGACTATTTATCCTCCATTAGCTTCTATTATAGGACATTCCGGAGGTGCTGTAGATTTTGCTATTTTTTCTTTACATTTAGCTGGTGCTTCATCAATTATAGGGGCTATTAATTTTATTTCTACTATTATTAATATACGATTATTAGGAATAACTATAGAGAAAGTTCCTTTATTTGTTTGGTCAATTTTTATTACTGTAATTTTATTGTTATTATCTTTACCTGTTTTAGCGGGTGCTATTACTATATTGTTAACTGATCGAAATTTTAATACTTCTTTTTTTGATCCTGCTGGAGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##       id.105        name.105   gene.105
    ## 1 KROK135-20 Comaroma simoni KROK135-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.105
    ## 1 GACGTTATATTTTCTATTTGGGTCTTGAGCAGCGATAGTGGGGACAGGTATGAGAATACTAATTCGTATTGAATTAGGACAGAGGGGGAGTTTGTTAGGGGATGACCAATTATATAATGTGATTGTTACTGCTCATGCTTTTGTGATAATTTTTTTTATGGTTATGCCCATTCTAATTGGGGGGTTTGGGAATTGATTGGTGCCGTTAATATTGGGGGCCCCTGATATGGCTTTTCCTCGTATGAATAATTTGAGGTTTTGGTTGCTCCCCCCCTCTTTGGTTATGTTGTTTATTTCTTCTATGGTTGAGATGGGAGTAGGGGCCGGGTGGACTATTTATCCCCCTTTGGCCTCCTTGGAGGGGCATTCGGGGAGAGCTGTGGATTTTGCTATTTTTTCTTTGCATTTAGCGGGGGCTTCTTCAATTATGGGGGCTATTAATTTTATTACTACTATTTTTAATATGCGTAGGGCAGGGATAAGGTTAGAGAAGGTACCTTTGTTTGTATGGTCGGTTTTAATTACAGCTGTTTTATTGTTGTTGTCTCTGCCCGTTCTAGCGGGGGCTATTACAATGCTGTTGACTGATCGAAACTTTAATACGTCATTTTTTGACCCTTCAGGGGGGGGGGACCCAATTTTATTTCAGCACTTGTTT
    ##       id.106           name.106   gene.106
    ## 1 KROK136-20 Araneus diadematus KROK136-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.106
    ## 1 GACTTTGTACTTAGTTTTTGGGGCATGAGCCGCTATGGTAGGGACAGCAATAAGTGTATTGATTCGAATTGAATTAGGTCAGCCTGGGAGATTTATTGGAGATGATCAACTTTATAATGTTATTGTAACTGCGCATGCGTTTGTAATAATTTTTTTTATAGTTATACCTATTTTAATTGGGGGATTTGGAAATTGATTAGTGCCTTTAATGTTAGGGGCTCCTGATATAGCGTTTCCTCGAATAAATAATTTAAGATTTTGATTACTTCCTCCATCTTTATTTCTTTTGATTGTTTCTTCAATAGTTGAGATAGGAGTTGGTGCAGGGTGGACTGTATATCCTCCTTTAGCCGGATTAGAGGGTCATGCTGGAAGATCAGTGGATTTTGCAATTTTTTCTTTGCATTTAGCGGGGGCTTCTTCTATTATAGGGGCTATTAATTTTATTTCTACAATTATTAATATGCGTTTTTATGGAATAACAATAGAAAAAGTTCCTTTATTTGTGTGGTCTGTATTAATTACGGCTGTTTTACTATTACTTTCTTTACCCGTTTTGGCAGGTGCTATTACTATATTATTAACTGACCGAAATTTTAATACATCATTTTTTGATCCTTCGGGAGGGGGAGATCCTATTTTATTTCAACATTTATTT
    ##       id.107            name.107   gene.107
    ## 1 KROK137-20 Clubiona terrestris KROK137-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.107
    ## 1 AAGTTTATACTTAATTTTTGGTACTTGATCTGCTATGGTTGGAACAGCTATAAGAGTTTTAATTCGAATAGAATTAGGACAATCTGGTATATTTTTAGGAGATGATCATCTATATAATGTAGTAGTTACAGCTCATGCTTTTGTTATAATTTTTTTTATGGTTATACCAATTATAATTGGTGGATTTGGAAATTGAATAGTTCCAATGATATTAGGGGCAGCTGATATAGCTTTTCCTCGAATAAATAATTTAAGTTTTTGACTATTACCTCCTTCTTTATTGTTATTATTTATTTCGTCTATGGCTGAGATAGGAGTTGGTGCGGGCTGAACAGTATATCCTCCTTTAGCCTCTACTGTGGGACATATGGGGAGAGCTATGGATTTTGCTATTTTTTCGTTACATTTAGCTGGTGCTTCTTCTATTATAGGTGCAGTAAATTTTATTACTACAATTATTAATATACGATCTGTAGGAATAAGAATGGAAAAAATTCCTTTATTTGTTTGATCTGTGTTGATTACAGCAGTTCTTTTATTGTTATCATTACCTGTATTAGCAGGTGCTATTACTATATTATTAACAGATCGAAATTTTAATACTTCTTTCTTTGATCCTGCTGGAGGAGGAGATCCTATTTTATTTCAACATTTATTT
    ##       id.108          name.108   gene.108
    ## 1 KROK138-20 Dysdera adriatica KROK138-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.108
    ## 1 TACTTTATATTTGTTGTTTGGTGCTTGATCTGCTATAGTGGGGACAGCTATGAGTGTTTTGATTCGGGCTGAATTAGGGCAGGTGGGTGGTTTATTGGGAGATGATCATTTGTTCAATGTTGTTGTAACCGCTCATGCGTTGGTTATGATTTTTTTTATGGTAATGCCTATTATAATTGGGGGGTTTGGAAATTGGTTGGTTCCGTTAATGATTGGGGCCCCCGATATAGCTTTTCCACGTATAAATAATTTAAGCTTTTGACTTCTACCCCCATCGTTAGTGTTATTGGTAATTTCTTCTATAGTTGAAATAGGGGTAGGGGCGGGTTGAACTATTTATCCACCTCTTTCTGGGAGAGTAGGGCATTTTGGTGTATCTGTAGATTTGGCTATTTTTAGTCTTCATTTAGCGGGAGCGTCTTCTATTATGGGGGCTATTAATTTTATTTCGACGATTTTTAATATGCGATCTGTTGGTATAACTATAGAGAGGGTACCTTTGTTTGTGTGGTCTGTGTTGGTTACTGCTATTTTGTTGCTTTTATCTCTTCCTGTTTTAGCAGGGGCTATTACTATATTATTGACGGATCGAAATTTTAATACATCGTTTTTTGACCCGGCGGGGGGCGGGGATCCAATTTTGTTTCAGCATTTATTT
    ##       id.109          name.109   gene.109
    ## 1 KROK139-20 Dysdera adriatica KROK139-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.109
    ## 1 TACTTTATATTTGTTGTTTGGTGCTTGATCTGCTATAGTGGGGACAGCTATGAGTGTTTTGATTCGGGCTGAATTAGGGCAGGTGGGTGGTTTATTGGGAGATGATCATTTGTTCAATGTTGTTGTAACCGCTCATGCGTTGGTTATGATTTTTTTTATGGTAATGCCTATTATAATTGGGGGGTTTGGAAATTGGTTGGTTCCGTTAATGATTGGGGCCCCCGATATAGCTTTTCCACGTATAAATAATTTAAGCTTTTGACTTCTACCCCCATCGTTAGTGTTATTGGTAATTTCTTCTATAGTTGAAATAGGGGTAGGGGCGGGTTGAACTATTTATCCACCTCTTTCTGGGAGAGTAGGGCATTTTGGTGTATCTGTAGATTTGGCTATTTTTAGTCTTCATTTAGCGGGAGCGTCTTCTATTATGGGGGCTATTAATTTTATTTCGACGATTTTTAATATGCGATCTGTTGGTATAACTATAGAGAGGGTACCTTTGTTTGTGTGGTCTGTGTTGGTTACTGCTATTTTGTTGCTTTTATCTCTTCCTGTTTTAGCAGGGGCTATTACTATATTATTGACGGATCGAAATTTTAATACATCGTTTTTTGACCCGGCGGGGGGCGGGGATCCAATTTTGTTTCAGCATTTATTT
    ##       id.110          name.110   gene.110
    ## 1 KROK140-20 Dysdera adriatica KROK140-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.110
    ## 1 TACTTTATATTTGTTGTTTGGTGCTTGATCTGCTATAGTGGGGACAGCTATGAGTGTTTTGATTCGGGCTGAATTAGGGCAGGTGGGTGGTTTATTGGGAGATGATCATTTGTTCAATGTTGTTGTAACCGCTCATGCGTTGGTTATGATTTTTTTTATGGTAATGCCTATTATAATTGGGGGGTTTGGAAATTGGTTGGTTCCGTTAATGATTGGGGCCCCCGATATAGCTTTTCCACGTATAAATAATTTAAGCTTTTGACTTCTACCCCCATCGTTAGTATTATTGGTAATTTCTTCTATAGTTGAAATAGGGGTAGGGGCGGGTTGAACTATTTATCCACCTCTTTCTGGGAGAGTAGGGCATTTTGGTGTATCTGTAGATTTGGCTATTTTTAGTCTTCATTTAGCGGGAGCGTCTTCTATTATGGGGGCTATTAATTTTATTTCGACGATTTTTAATATGCGATCTGTTGGTATAACTATAGAGAGGGTACCTTTGTTTGTGTGGTCTGTGTTGGTTACTGCTATTTTGTTGCTTTTATCTCTTCCTGTTTTAGCAGGGGCTATTACTATATTATTGACGGATCGAAATTTTAATACATCGTTTTTTGACCCGGCGGGGGGCGGGGATCCAATTTTGTTTCAGCATTTATTT
    ##       id.111            name.111   gene.111
    ## 1 KROK141-20 Dasumia canestrinii KROK141-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.111
    ## 1 AACTTTATATTTATTGTTTGGAGCTTGATCGGCTATAGCCGGAACTGCAATGAGAGTGCTTATTCGGGTTGAGTTGGGTCAGTTGGGGAGATTGTTGGGTGATGATCATTTGTATAATGTTGTGGTTACAGCACATGCATTAGTGATGATTTTTTTTATAGTGATACCTATTATAATTGGGGGTTTTGGGAATTGGTTGGTTCCTTTGATGCTGGGCGCGCCGGACATGGCGTTTCCTCGAATAAATAATTTAAGTTTTTGGTTGTTGCCCCCTTCGTTGATTTTGTTGATTTTATCTTCTATGGTGGAAACAGGGGTGGGGGCCGGATGGACAATTTATCCCCCATTATCTGCTTCTTTGGGGCATGGGGGTGTATCAGTGGATTTAGCGATTTTTTCTTTACATTTGGCGGGAGCGTCTTCTATTATAGGGGCTATTAATTTTATTTCTACGATTATTAATATGCGTATATACGGTATAAGAATAGATAGGGTTCCTTTGTTTGTGTGATCTGTTTTGGTTACAGCAATTCTTTTGCTTTTGTCGTTGCCGGTTTTAGCGGGCGCTATTACTATGTTGTTGACGGACCGAAATTTTAATACTTCTTTTTTTGATCCCGCCGGAGGAGGAGATCCTATTTTGTTTCAACATTTGTTT
    ##       id.112               name.112   gene.112
    ## 1 KROK143-20 Centromerus cavernarum KROK143-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.112
    ## 1 AAGTTTATATTTAGTTTTTGGGGCTTGAGCTGCTATAGTTGGAACTGCAATAAGAGTTTTAATTCGTGTAGAATTGGGGCAAGTTGGGAGAATGTTAGGGGATGACCAGTTGTATAATGTTATTGTTACTGCTCATGCTTTTGTTATGATTTTTTTTATAGTGATGCCTATTTTGATTGGGGGATTTGGGAATTGGTTAGTCCCTTTAATGTTAGGGGCTCCGGATATAGCTTTTCCTCGAATGAATAATTTGAGATTTTGGTTACTTCCCCCTTCTTTATTTTTGTTATTTATTTCTTCTATAGTGGAGATAGGGGTAGGAGCGGGTTGAACTATTTATCCTCCTTTGGCTTCTTTGGAAGGGCATTCTGGAAGATCTGTGGATTTTGCTATTTTTTCTCTTCATTTAGCGGGAGCTTCATCTATTATAGGGGCTATTAATTTTATTTCTACAATTATTAATATACGTGCTTATGGGATAGGGATAGAAAAAATCTCTTTATTTGTGTGGTCTGTTTTGATTACAGCTGTTCTTTTATTGCTTTCATTGCCAGTTCTTGCAGGGGCTATTACGATATTATTAACGGATCGAAATTTTAATACTTCTTTTTTTGACCCAGCAGGGGGAGGGGACCCTATTTTGTTTCAGCATTTATTT
    ##       id.113           name.113   gene.113
    ## 1 KROK144-20 Ceratinella brevis KROK144-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.113
    ## 1 GAGTTTATATTTTATTTKTGGAGCKTGAGCTGCTATAGTAGGGACAGCAATAAGAGTATTGATTCGTGTTGAGTTAGGACAAATTGGAAGATTATTAGGGGATGATCAGTTGTATAATGTTATTGTTACGGCTCATGCTTTTGTWATAATTTTTTTTATGGTGATACCTATTTTAATTGGTGGTTTKGGGAATTGGTTGGTTCCTTTAATGTTGGGGGCACCTGATATAGCTTTTCCTCGAATAAATAATTTAAGATTTTGATTATTACCTCCTTCTTTATTATTATTATTTATTTCTAGAATAGATGAGATGGGGGTAGGAGCGGGGTGAACTATTTATCCTCCTCTTGCTTCTTTAGAAGGGCATTCTGGAAGATCAGTAGATTTTGCTATTTTTTCTTTACATTTAGCAGGAGCGTCATCAATTATAGGTGCTATTAATTTTATTTCTACTATTTTAAACATACGGGGGTATGGGATAACAATAGAAAAAGTTCCTTTATTTGTTTGATCTGTTTTAATTACGGCTGTTTTATTACTTTTGTCTTTACCAGTATTAGCTGGGGCGATTACTATGCTTTTAACAGATCGAAATTTTAATACATCATTTTTTGATCCAGCGGGTGGAGGGGATCCGGTTTTATTTCAAMWTTTRTTT
    ##       id.114         name.114   gene.114
    ## 1 KROK145-20 Microneta viaria KROK145-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.114
    ## 1 AAGTTTATATTTTGTATTTGGGGCTTGGTCTGCGATAGTTGGAACTGCAATAAGAGTGTTAATTCGAATTGAGTTAGGTCAAGTTGGTAGTTTGTTAGGAGACGACCAACTATATAATGTGATTGTTACGGCTCATGCTTTTGTTATAATTTTTTTTATAGTGATACCAATTTTAATTGGGGGGTTTGGTAATTGGTTAGTTCCTTTAATATTAGGGGCTCCAGATATAGCTTTTCCTCGGATAAACAATTTGAGATTTTGGCTTTTACCCCCCTCTTTATTTTTATTGTTTATTTCAAGTATAGACGAGATAGGGGTAGGAGCAGGTTGGACAGTTTATCCTCCTCTTTCTTCATTAGATGGCCATTCGGGAAGTTCAGTGGATTTTGCTGTTTTTTCTTTACATTTAGCTGGGGCATCTTCTATTATGGGGGCTATTAATTTTATTTCTACTATTTTGAATATACGAGGGTATGGGATAAGCATAGATAGGGTTCCTTTATTTGTTTGGTCTGTGTTAATTACGGCTGTTCTTTTATTGTTATCTTTGCCAGTGTTAGCAGGGGCGATTACGATATTGTTAACAGATCGAAATTTCAATACGTCATTTTTTGACCCTGCTGGGGGAGGGGACCCTGTTTTGTTTCAACACTTATTT
    ##       id.115          name.115   gene.115
    ## 1 KROK146-20 Scotargus pilosus KROK146-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.115
    ## 1 AACGTTATATTTGATTTTTGGGGCTTGAGCTGCTATAGTAGGAACTGCTATAAGAATACTAATTCGAATTGAGTTGGGACAAGGGGGAAGAATATTGGGGGATGATCAGTTGTATAATGTTATTGTTACTGCGCATGCTTTTGTAATAATTTTTTTTATGGTCATGCCAATTTTAATTGGGGGGTTTGGAAATTGGTTAGTTCCTTTAATGTTAGGGGCACCAGATATAGCTTTCCCACGTATGAATAATTTAAGTTTTTGGTTGCTACCCCCGTCTTTATTTTTATTGTTTATTTCTTCTATAGTTGAGATAGGGGTAGGAGCTGGATGGACAGTTTATCCACCATTAGCGTCTTTAGATGGACATCCTGGCAGTTCTGTTGATTTTGCTATTTTTTCTTTGCATTTGGCAGGGGCTTCTTCTATTATAGGGGCTATTAATTTTATTTCTACTATTATTAATATGCGGTCTTATGGTCTTACGATAGAAAGGGTTTCTTTATTTGTGTGGTCGGTTTTAATTACTGCTATTTTATTATTGTTATCATTACCTGTGTTAGCAGGGGCTATCACAATATTGTTGACAGATCGTAATTTTAATACTTCCTTTTTTGACCCGGCGGGGGGGGGGRATCCGGKGTTATTTCASCATTTGTTT
    ##       id.116              name.116   gene.116
    ## 1 KROK147-20 Tenuiphantes flavipes KROK147-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.116
    ## 1 GACTTTATATTTTATTTTTGGAGCGTGAGCTGCTATAGTAGGAACTGCTATAAGAGTATTAATTCGGATTGAATTGGGGCAAACTGGAAGAATACTGGGGGATGATCAGTTGTATAATGTTATTGTAACTGCACATGCTTTTGTAATAATTTTTTTTATAGTTATACCTATTTTGATTGGAGGATTCGGTAATTGATTAGTTCCTTTAATACTAGGGGCTCCTGATATAGCTTTTCCTCGTATAAATAATTTAAGATTTTGACTTTTACCCCCTTCTCTATTATTATTATTTATTTCAAGTATAGTTGAGATGGGAGTTGGGGCAGGGTGGACAGTGTATCCCCCTCTTGCCTCTTTAGAGGGACATGCAGGAAGTTCTGTTGATTTTGCTATTTTTTCTTTACATTTAGCTGGGGCTTCTTCTATTATAGGGGCAATTAATTTTATTTCCACTATTATTAATATGCGTGGATACGGTGTATCAATGGAAAAGGTTCCGTTATTTGTATGATCTGTTTTAATTACTGCGGTTCTTTTGTTGTTATCATTACCTGTTTTAGCTGGTGCTATTACTATACTTTTAACTGATCGAAATTTTAATACTTCGTTTTTTGATCCTGCAGGAGGAGGAGATCCTGTGTTATTTCAACATTTATTT
    ##       id.117                 name.117   gene.117
    ## 1 KROK148-20 Tenuiphantes tenebricola KROK148-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.117
    ## 1 AACTTTATATTTTATTTTTGGAGCGTGAGCTGCTATAGTAGGAACTGCTATAAGAGTATTAATTCGAATTGAGTTGGGACAAACTGGAAGTATATTGGGGGATGATCAGTTGTATAATGTTATTGTTACTGCTCATGCTTTTGTTATAATTTTTTTTATAGTTATACCTATTTTAATTGGGGGATTTGGAAATTGGTTAGTACCTTTAATACTTGGTGCTCCTGACATGGCTTTTCCTCGAATAAATAATTTAAGATTCTGGCTTTTACCTCCTTCTTTATTATTATTATTTATTTCAAGTATAGTTGAAATAGGAGTTGGGGCAGGATGAACAGTGTATCCTCCACTTTCTTCTTTAGAAGGACATGCGGGAAGCTCTGTTGATTTTGCTATTTTTTCTCTTCATTTAGCTGGGGCTTCTTCTATTATAGGAGCAATTAATTTTATTTCTACTATTTTTAATATACGTGGATATGGTGTGTCAATGGAAAAGGTTCCATTGTTTGTATGATCTGTTTTGATTACTGTCGTTCTTTTATTGTTGTCATTACCTGTTTTAGCAGGTGCTATTACTATACTTTTAACTGACCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCCGTGTTATTTCAACACTTATTT
    ##       id.118        name.118   gene.118
    ## 1 KROK149-20 Pardosa alacris KROK149-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.118
    ## 1 TACTTTATATTTAATATTTGGAGTTTGATCGGCTATAATAGGGACTGCTATAAGAGTATTAATTCGAATAGAATTAGGAAATCCTGGGAGATTATTAGGTGATGATCATTTATATAATGTTATAGTTACTGCTCATGCTTTTGTAATAATTTTTTTTATAGTAATACCAATTCTTATTGGAGGTTTTGGGAATTGATTAATTCCTTTAATATTAGGAGCTCCAGATATATCATTTCCTCGAATAAATAATCTTTCTTTTTGATTATTACCTCCTTCTTTATTTTTATTATCTATATCTTCTATAGTGGAGATAGGAGTTGGTGCTGGATGAACTGTTTATCCTCCTTTAGCATCTACGGTTGGTCATATAGGAAGTTCAATAGATTTTGCTATTTTTTCTCTTCATTTGGCTGGAGCTTCTTCTATTATAGGGGCTGTAAATTTTATTTCTACTATTATAAATATACGGATAATAGGAATATCTTTAGAAAAGGTTCCTCTTTTTGTTTGATCAGTTTTAATTACAGCAGTATTATTATTACTTTCTTTACCTGTTTTAGCAGGTGCTATTACTATATTATTAACAGATCGGAATTTTAATACTTCTTTTTTTGATCCTGCTGGTGGAGGAGATCCTATTTTATTTCAACATTTATTT
    ##       id.119           name.119   gene.119
    ## 1 KROK150-20 Trochosa terricola KROK150-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.119
    ## 1 TACTTTGTATTTAATGTTTGGTGCATGATCTGCTATAGTGGGAACTGCTATAAGAGTGTTGATTCGTTTAGAATTAGGGAATTCTGGAAGTTTATTAGGGGATGATCATTTATATAATGTTATGGTTACAGCTCATGCTTTTGTGATGATTTTTTTTATAGTAATACCAATTCTTATTGGAGGTTTTGGAAATTGATTAATTCCTTTAATATTAGGTGCTCCTGATATATCGTTTCCTCGAATAAATAATCTTTCTTTTTGGTTATTACCTCCTTCTTTATTTTTATTATCTATGTCTTCTATGGTGGAAATAGGAGTGGGGGCTGGTTGAACAGTTTATCCTCCTTTAGCATCTAGAGTGGGTCATATAGGGAGTTCTATAGATTTTGCTATTTTTTCTCTTCATTTAGCTGGTGCTTCTTCTATTATAGGAGCAGTAAATTTTATTTCTACTATTATTAATATACGAATATTAGGTATATCTATGGATAAAGTACCTTTATTTGTTTGATCAGTTTTGATTACGGCTGTTTTATTATTATTATCTTTACCTGTTTTAGCGGGTGCTATTACTATACTATTAACTGATCGAAATTTTAATACTTCTTTTTTTGACCCTGCAGGGGGAGGGGATCCTATTTTATTTCAACATTTATTT
    ##       id.120       name.120   gene.120
    ## 1 KROK151-20 Zora nemoralis KROK151-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.120
    ## 1 TACTTTATATTTAGTTTTTGGAGTTTGATCTGCTATAGTAGGAACGGCAATAAGAATATTGATTCGATTGGAATTAGGACAAGTTGGAAGATTTATAGGTGATGATCATTTATATAATGTAATTGTTACTGCTCATGCTTTTGTTATAATTTTTTTTATAGTAATACCTATTATAATTGGGGGATTTGGTAATTGATTAATTCCTTTAATGTTAGGAGCTCCTGATATGGCTTTTCCTCGAATAAATAATTTAAGTTTTTGATTATTACCACCTTCTTTATTATTATTATTTATTTCTTCTATAGTTGAGATAGGAGTTGGTGCGGGTTGAACAGTTTATCCTCCGTTGGCTTCTGTTATAGGTCATTCTGGTAGAGCTGTGGATTTTGCTATTTTTTCTTTACATTTAGCTGGTGCATCTTCTATTATAGGTGCTATTAATTTTATTACTACTGTAATTAATATACGATCTATTGGAATAACTATAGAAAAGGTTCCTTTATTTGTATGATCAGTTGTAATTACTGCAGTTCTTTTATTACTATCATTACCGGTATTAGCTGGTGCAATTACTATACTATTGACTGATCGTAATTTTAATACTTCTTTTTTTGATCCTGCTGGAGGAGGAGATCCTATTTTATTTCAACACTTATTT
    ##       id.121          name.121   gene.121
    ## 1 KROK152-20 Dysdera adriatica KROK152-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.121
    ## 1 TACTTTATATTTGTTGTTTGGTGCTTGATCTGCTATAGTGGGGACAGCTATGAGTGTTTTGATTCGGGCTGAATTAGGGCAGGTGGGTGGTTTATTGGGAGATGATCATTTGTTCAATGTTGTTGTAACCGCTCATGCGTTGGTTATGATTTTTTTTATGGTAATGCCTATTATAATTGGGGGGTTTGGAAATTGGTTGGTTCCGTTAATGATTGGGGCCCCCGATATAGCTTTTCCACGTATAAATAATTTAAGCTTTTGACTTCTACCCCCATCGTTAGTGTTATTGGTAATTTCTTCTATAGTTGAAATAGGGGTAGGGGCGGGTTGAACTATTTATCCACCTCTTTCTGGGAGAGTAGGGCATTTTGGTGTATCTGTAGATTTGGCTATTTTTAGTCTTCATTTAGCGGGAGCGTCTTCTATTATGGGGGCTATTAATTTTATTTCGACGATTTTTAATATGCGATCTGTTGGTATAACTATAGAGAGGGTACCTTTGTTTGTGTGGTCTGTGTTGGTTACTGCTATTTTGTTGCTTTTATCTCTTCCTGTTTTAGCAGGGGCTATTACTATATTATTGACGGATCGAAATTTTAATACATCGTTTTTTGACCCGGCGGGGGGCGGGGATCCAATTTTGTTTCAGCATTTATTT
    ##       id.122         name.122   gene.122
    ## 1 KROK153-20 Robertus lividus KROK153-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.122
    ## 1 GACTTTATATTTGATTTTTGGGGTGTGATCAGCTATAGTTGGTACAGCTATGAGTGTCCTAATTCGGGTAGAATTAGGACAATCTGGAAGATTGTTAGGGGATGATCAATTATATAATGTAATTGTAACTGCTCATGCTTTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGGGGGTTTGGAAATTGATTAGTTCCTTTAATATTAGGGGCTCCAGATATAGCTTTCCCTCGAATAAATAATTTAAGATTTTGATTATTACCTCCTTCTTTATTTCTATTATTTATTTCTTCTATAGTTGAAATAGGAGTAGGAGCTGGGTGGACAATTTATCCTCCTTTATCTTCTTTAGAGGGTCATTCAGGAAGATCAGTTGATTTTGCTATTTTTTCTCTTCATCTTGCAGGTGCTTCTTCTATTATAGGGGCTGTAAATTTTATTTCTACTATTTTAAATATACGTGTGTATGGAATATCTATAGAAAAAGTTACTTTATTTGTATGATCAGTTTTAATTACTGCTATTCTTTTATTATTATCGTTACCTGTTTTAGCAGGAGCTATTACTATGTTATTAACTGATCGAAATTTTAATACTTCTTTTTTTGACCCTTCTGGAGGGGGAGATCCAATTTTATTTCAACATTTATTT
    ##       id.123         name.123   gene.123
    ## 1 KROK154-20 Robertus lividus KROK154-20
    ##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         sequence.123
    ## 1 GACTTTATATTTGATTTTTGGGGTGTGATCAGCTATAGTTGGTACAGCTATGAGTGTCCTAATTCGGGTAGAATTAGGACAATCTGGAAGATTGTTAGGGGATGATCAATTATATAATGTAATTGTAACTGCTCATGCTTTTGTAATAATTTTTTTTATAGTAATACCTATTATAATTGGGGGGTTTGGAAATTGATTAGTTCCTTTAATATTAGGGGCTCCAGATATAGCTTTCCCTCGAATAAATAATTTAAGATTTTGATTATTACCTCCTTCTTTATTTCTATTATTTATTTCTTCTATAGTTGAAATAGGAGTAGGAGCTGGGTGGACAATTTATCCTCCTTTATCTTCTTTAGAGGGTCATTCAGGAAGATCAGTTGATTTTGCTATTTTTTCTCTTCATCTTGCAGGTGCTTCTTCTATTATAGGGGCTGTAAATTTTATTTCTACTATTTTAAATATACGTGTGTATGGAATATCTATAGAAAAAGTTACTTTATTTGTATGATCAGTTTTAATTACTGCTATTCTTTTATTATTATCGTTACCTGTTTTAGCAGGAGCTATTACTATGTTATTAACTGATCGAAATTTTAATACTTCTTTTTTTGACCCTTCTGGAGGGGGAGATCCAATTTTATTTCAACATTTATTT

We want to extract the columns for “id” and “sequence”.

Credit for below code:
<https://stackoverflow.com/questions/26973029/split-one-row-after-every-3rd-column-and-transport-those-3-columns-as-a-new-row>

``` r
seqlist2<- as.data.frame(matrix(unlist(sequence_df2, use.names = FALSE), ncol = 4, byrow= TRUE))
```

``` r
seqlist3=seqlist2
seqlist3 <- as.tibble(seqlist2) %>%select(1,4)
colnames(seqlist3) = c("processid", "retrieved_seq")
```

now seqlist3 contains the data we need to merge with our original file.
“retrieved_seq” is the column with our retrieved sequences.

``` r
sequence_merge_main <- merge(seqlist3, bdj, by = "processid")
```

Our retrieved sequences and the original “bdj” file are merged by the
“processid” column into the “sequence_merge_main” dataframe. This is now
the dataframe for the first steps of the tree. Next step is to make the
fasta file for the tree. Credit below code: Seth Bannister
<https://stackoverflow.com/questions/23374100/convert-table-into-fasta-in-r>

``` r
names <- (seqlist3$processid)
sequences <- (seqlist3$retrieved_seq)
dfintermediate <- data.frame(names,sequences)
df1.fasta = dataframe2fas(dfintermediate, file = "df1.fasta")
```

df.fasta1 is our new fasta file. Now we will use “msa” to align the
reads.

``` r
#fastatry <- system.file("df1.fasta", package = "msa"
mySequences <- readDNAStringSet("df1.fasta")
mySequences
```

    ## DNAStringSet object of length 124:
    ##       width seq                                             names               
    ##   [1]   658 AACATTATACTTTATTTTTGGT...AATTTTATACCAACATTTATTT KROK002-19
    ##   [2]   658 AACTTTATATTTTATTTTTGGT...TATTTTATATCAACATTTATTT KROK003-19
    ##   [3]   658 AACTTTATATTTCATTTTCGGG...AATTCTTTATCAACATTTATTT KROK004-19
    ##   [4]   658 AACTTTATATTTTATTTTTGGT...TGTTTTATATCAACATTTATTT KROK005-19
    ##   [5]   415 AAATAATATAAGATTTTGACTT...AATTCTCTACCAACATTTATTT KROK006-19
    ##   ...   ... ...
    ## [120]   658 TACTTTGTATTTAATGTTTGGT...TATTTTATTTCAACATTTATTT KROK150-20
    ## [121]   658 TACTTTATATTTAGTTTTTGGA...TATTTTATTTCAACACTTATTT KROK151-20
    ## [122]   658 TACTTTATATTTGTTGTTTGGT...AATTTTGTTTCAGCATTTATTT KROK152-20
    ## [123]   658 GACTTTATATTTGATTTTTGGG...AATTTTATTTCAACATTTATTT KROK153-20
    ## [124]   658 GACTTTATATTTGATTTTTGGG...AATTTTATTTCAACATTTATTT KROK154-20

Next align the sequences.

``` r
#The below code is extremely taxing and produces an incorrect alignment. 
#myFirstAlignment <- msa(mySequences)
#myFirstAlignmentconvert <- myFirstAlignment
```

``` r
#Looks perfect!

#msaPrettyPrint(myFirstAlignment, output="pdf", showNames="none",
#showLogo="none", askForOverwrite=FALSE, verbose=FALSE)
```

``` r
#alignmentConvert <- msaConvert(myFirstAlignmentconvert, "seqinr::alignment")
#alignConvert <- msaConvert(myFirstAlignmentconvert, "bios2mds::align")
```

The below code is credit to
<https://fuzzyatelin.github.io/bioanth-stats/module-24/module-24.html#step_1>

``` r
library(ape)
#dna <- fasta2DNAbin("df1.fasta")
#Dis_pairwise <- dist.dna(dna, model = "TN93")
#length(Dis_pairwise)
#number of pairwise distances, computed as n(n-1)/2
```

The number of pairwise distances is 7626.

The problem here, I think, is that we need to plot the heatmap of the
pairwise distances.

``` r
#temp <- as.data.frame(as.matrix(Dis_pairwise))
#table.paint(temp, clegend = 1, clabel.row= 1, clabel.col= 1)
#table.paint(D, x = 1:ncol(df), y = nrow(df):1, 
    #row.labels = row.names(df), col.labels = names(df), 
    #clabel.row = 1, clabel.col = 1, csize = 1, clegend = 1)
```

``` r
#table.paint(temp, x = 1:ncol(temp), y = nrow(temp):1, 
    #row.labels = row.names(temp), col.labels = names(temp), 
    #clabel.row = 1, clabel.col = 1, csize = 1, clegend = 1)
#this is not populating the visualization right
```

``` r
#tutorial
#dna1 <- fasta2DNAbin(file="http://adegenet.r-forge.r-project.org/files/usflu.fasta")
#annot <- read.csv("http://adegenet.r-forge.r-project.org/files/usflu.annot.csv", header=TRUE, row.names=1)
#annot
#library(ape)
#D1 <- dist.dna(dna1, model = "TN93")
#length(D1) #number of pairwise distances, computed as n(n-1)/2
#bemp <- as.data.frame(as.matrix(D1))
#table.paint(bemp, cleg=0, clabel.row=.5, clabel.col=.5) #darker shades of gray mean a larger distance # you can also make cool color plots but they're much more complicated because they use the image() function
```

``` r
#tutorial
#This block is an attempt to make a heatmap from our msa multiple sequence alignments
```

``` r
library(ggimage)
library(ggtree)
library(TDbook)
# load `tree_boots`, `df_tip_data`, and `df_inode_data` from 'TDbook'
p <- ggtree(tree_boots) %<+% df_tip_data + xlim(-.1, 4)
p2 <- p + geom_tiplab(offset = .6, hjust = .5) +
    geom_tippoint(aes(shape = trophic_habit, color = trophic_habit, 
                size = mass_in_kg)) + 
    theme(legend.position = "right") + 
    scale_size_continuous(range = c(3, 10))

p2 %<+% df_inode_data + 
    geom_label(aes(label = vernacularName.y, fill = posterior)) + 
    scale_fill_gradientn(colors = RColorBrewer::brewer.pal(3, "YlGnBu"))
```

    ## Warning: Removed 7 rows containing missing values (geom_label).

![](data_inspection_files/figure-gfm/unnamed-chunk-31-1.png)<!-- -->

``` r
#library("Biostrings")
#library("seqinr")
#library("ape")
#install.packages("phylogram")
#library("phylogram")
#install.packages("dendextend")
#library("dendextend")

#fasta.res <- read.alignment(file = "df1.fasta", format = "fasta")
#fasta.res.dist.alignment = dist.alignment(msf.res, matrix = "identity")
#fasta.res.dist.alignment.nj = nj(fasta.res.dist.alignment)
#plot(fasta.res.dist.alignment.nj, main = "from fasta files")
```

``` r
#tre <- nj(D)
#class(tre) #all trees created using {ape} package will be of class phylo
```

We think we have met a dead end here. We will try working with the fuzzy
script, from start to end.
