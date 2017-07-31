

curl -XPOST 'dhadlx22.dns21.socgen:9200/lawrence/tutorials' -d '{
    "title" : "youtube Data API",
    "category" : "PHP",
    "tags" : ["Youtube","API","PHP"],
    "duration": 600
}'


curl -XPOST 'dhadlx22.dns21.socgen:9200/lawrence/tutorials' -d '
{
    "title" : "Facebook API ertetr etrtr",
    "category" : "PHP",
    "tags" : ["Facebook","API","PHP"],
    "duration": 60,
    "test": "rzerez"
}'


curl -XPOST 'dhadlx22.dns21.socgen:9200/lawrence/tutorials' -d '{-d '{
    "title" : "Indesign",
    "category" : "Indisign",
    "tags" : ["Indisgn","CV"],
    "duration": 180,
    "nombre" : "ezzer:zer/ezar (a457603)"
}'
curl -XPOST 'dhadlx22.dns21.socgen:9200/lawrence/tutorials' -d '{
    "title" : "dfg",
    "category" : "fgd",
    "tags" : ["df","TEc","BT"],
    "duration": 180,
    "user-fdg" : "Lawrence KOTHA (a457603)"
}'

curl -XPOST 'dhadlx22.dns21.socgen:9200/lawrence/test' -d '{
    'title' : 'Metier',
    'category' : 'SG',
    'tags' : ['Dev','TEc','BT'],
    'duration": 180,
    'user-fdg" : 'Lawrence KOTHA (a457603)'
}'
curl -XGET 'dhadlx22.dns21.socgen:9200/lawrence/tutorials/R0bKxI-1SVK_oK5Z4JzLyw'

curl -XDELETE 'dhadlx22.dns21.socgen:9200/lawrence/tutorials/AVqqETThAGiYG1Lz3MzB' 

curl -XPUT 'dhadlx22.dns21.socgen:9200/lawrence/person/_mapping
{
  "person": {
    "properties": {
      "file": {
        "type": "attachment",
        "fields": {
          "content": {
            "type": "string",
            "term_vector":"with_positions_offsets",
            "store": true
          }
        }
      }
    }
  }
}


curl -XGET 'dhadlx22.dns21.socgen:9200/_analyse?text=Devoxx, la conférence des développeur passionnnées.' 

curl -XPUT 'dhadlx22.dns21.socgen:9200/lawrence/_mapping' -d '
{
  "settings": {
    "analysis": {
      "filter": {
        "french_elision": {
        "type": "elision",
            "articles": [ "l", "m", "t", "qu", "n", "s",
                          "j", "d", "c", "jusqu", "quoiqu",
                          "lorsqu", "puisqu"
                        ]
        },
        "french_stop": {
          "type": "stop",
          "stopwords": "_french_" 
        },
        "french_keywords": {
          "type":       "keyword_marker",
          "keywords":   [] 
        },
        "french_stemmer": {
          "type":       "stemmer",
          "language":   "light_french"
        }
      },
      "analyzer": {
        "french": {
          "tokenizer":  "standard",
          "filter": [
            "french_elision",
            "lowercase",
            "french_stop",
            "french_keywords",
            "french_stemmer"
          ]
        }
      }
    }
  }
}'




################# ANALYSER #########################

curl -XPUT 'dhadlx22.dns21.socgen:9200/edd' -d '{
  "mappings": {
    "metadata": {
      "properties": {
        "title": {
          "type":     "text",
          "analyzer": "standard"
        }
      }
    }
  }
}' 



curl -XPOST 'dhadlx22.dns21.socgen:9200/wandrille1' -d '{
    "title" : "youtube Data API",
    "category" : "PHP",
    "tags" : ["Youtube","API","PHP"],
    "duration": 600
}'

curl -XDELETE 'dhadlx22.dns21.socgen:9200/lawrence'

curl -XDELETE 'localhost:9200/twitter?prett


########### CREER UN INDEX ################



curl -XPUT 'dhadlx22.dns21.socgen:9200/lawrence' -d '{
    "settings" : {
        "number_of_shards" : 1,
        "number_of_replicas" : 1
    }
}'

curl -XPUT 'dhadlx22.dns21.socgen:9200/lawrence1/edd' -d '{
    "mappings" : {
        "edd" : {
            "properties" : {
                "nom" : { "type" : "text" }
             }
        }
    }
}'

######################################################

        RECHERCHE D'UNE CHAINE DE CARACTERE

######################################################

{
   "query" : {
      "query_string" : {
          "query" : "iTextSharp"
       }
    }
}

{
    "query": {
        "match_all": {}
    }
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                          
                                                          DEFINITION DE L'INDEX

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


NOT ANALYSE 


            "fields": {
              "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            }


curl -XDELETE 'dhadlx22.dns21.socgen:9200/eddt' 


curl -XPUT 'dhadlx22.dns21.socgen:9200/edd2' -d '{
  "settings": {
    "number_of_shards" : 3,
    "number_of_replicas" : 1,
    "analysis": {
      "filter": {
        "french_elision": {
        "type":         "elision",
            "articles": [ "l", "m", "t", "qu", "n", "s",
                          "j", "d", "c", "jusqu", "quoiqu",
                          "lorsqu", "puisqu"
                        ]
        },
        "french_stop": {
          "type":       "stop",
          "stopwords":  "_french_" 
        },
        "french_stemmer": {
          "type":       "stemmer",
          "language":   "light_french"
        }
      },
      "analyzer": {
        "french": {
          "tokenizer":  "standard",
          "filter": [
            "french_elision",
            "lowercase",
            "french_stop",
            "french_stemmer"
          ]
        }
      }
    }
  },
  "mappings" : {
        "pdf" : {
            "properties" : {
                "title" : { 
                  "type" : "String",
                  "boost" : 2
                },
                "NomDuFichier" : { 
                  "type" : "String",
                  "boost" : 2 
                },
                "localisationDuFichier" : {   
                  "type" : "String" 
                },
                "contenu" : { 
                  "type" : "String"
                }
            }
        },
        "doc" : {
            "properties" : {
                "title" : { 
                  "type" : "String",
                  "boost" : 2
                },
                "NomDuFichier" : { 
                  "type" : "String",
                  "boost" : 2 
                },
                "localisationDuFichier" : {   
                  "type" : "String" 
                },
                "contenu" : { 
                  "type" : "String"
                }
            }
        },
        "docx" : {
            "properties" : {
                "title" : { 
                  "type" : "String",
                  "boost" : 2
                },
                "NomDuFichier" : { 
                  "type" : "String",
                  "boost" : 2 
                },
                "localisationDuFichier" : {   
                  "type" : "String" 
                },
                "contenu" : { 
                  "type" : "String"
                }
            }
        },
        "xls" : {
            "properties" : {
                "title" : { 
                  "type" : "String",
                  "boost" : 2
                },
                "NomDuFichier" : { 
                  "type" : "String",
                  "boost" : 2 
                },
                "localisationDuFichier" : {   
                  "type" : "String" 
                },
                "contenu" : { 
                  "type" : "String"
                },
                "SheetNames" : { 
                  "type" : "String",
                  "boost" : 1.5
                }
            }
        },
        "pptx" : {
            "properties" : {
                "title" : { 
                  "type" : "String",
                  "boost" : 2
                },
                "NomDuFichier" : { 
                  "type" : "String",
                  "boost" : 2 
                },
                "localisationDuFichier" : {   
                  "type" : "String" 
                },
                "contenu" : { 
                  "type" : "String"
                }
            }
        }
    }
}'


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                          
                                                          DEFINITION DE L'INDEX 2

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

curl -XDELETE 'dhadlx22.dns21.socgen:9200/eddt' 


curl -XPUT 'dhadlx22.dns21.socgen:9200/eddt' -d '{
  "settings": {
    "number_of_shards" : 3,
    "number_of_replicas" : 1,
    "analysis": {
      "filter": {
        "french_elision": {
        "type":         "elision",
            "articles": [ "l", "m", "t", "qu", "n", "s",
                          "j", "d", "c", "jusqu", "quoiqu",
                          "lorsqu", "puisqu"
                        ]
        },
        "french_stop": {
          "type":       "stop",
          "stopwords":  ["de","des"] 
        },
        "french_stemmer": {
          "type":       "stemmer",
          "language":   "light_french"
        }
      },
      "analyzer": {
        "french": {
          "tokenizer": "standard",
          "filter": [
            "french_elision",
            "lowercase",
            "french_stop",
            "french_stemmer",
            "asciifolding",
            "snowball"
          ]
        }
      }
    }
  },
  "mappings" : {
        "documents" : {
            "properties" : {
                "title" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 2
                },
                "nomDuFichier" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 2 
                },
                "localisationDuFichier" : {   
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            } 
                },
                "contenu" : { 
                  "analyzer" : "stop",
                  "type" : "String"
                },
                "typeDocument" : { 
                  "type" : "String"
                }
            }
        },
        "xls" : {
            "properties" : {
                "title" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 2
                },
                "nomDuFichier" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 2 
                },
                "localisationDuFichier" : {   
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            }
                },
                "contenu" : { 
                  "analyzer" : "stop",
                  "type" : "String"
                  
                },
                "sheetNames" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 1.5
                },
                "typeDocument" : { 
                  "type" : "String"
                }
            }
        }
    }
}'
























//////////////////////////////////////////////////



curl -XPOST 'dhadlx22.dns21.socgen:9200/eddt/_search?pretty' 

clear


curl -XDELETE 'dhadlx22.dns21.socgen:9200/edd_final_test_excel2' 


curl -XPUT 'dhadlx22.dns21.socgen:9200/edd_final_test_excel2' -d '{
  "settings": {
      "number_of_shards" : 3,
      "number_of_replicas" : 1,
      "analysis": {
       "filter": {
         "french_elision": {
         "type": "elision",
             "articles": [ "l", "m", "t", "qu", "n", "s",
                           "j", "d", "c", "jusqu", "quoiqu",
                           "lorsqu", "puisqu"
                         ]
         },
         "french_stop": {
           "type": "stop",
           "stopwords": "_french_"
         },
         "french_stemmer": {
           "type": "stemmer",
           "language": "light_french"
         },
         "my_ascii_folding" : {
            "type" : "asciifolding",
            "preserve_original" : true
         }
       },
       "analyzer": {
         "francais_custom": {
           "tokenizer": "standard",
           "filter": [
             "french_elision",
             "lowercase",
             "french_stop",
             "french_stemmer",
             "my_ascii_folding"
           ]
         }
       }
     }
   },
  "mappings" : {
        "others" : {
            "properties" : {
                "nomDuFichier" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 2 
                },
                "nameFile" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 2 
                },
                "localisationDuFichier" : {   
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            } 
                },
                "typeDocument" : { 
                  "type" : "String"
                }
            }
        },
        "documents" : {
            "properties" : {
                "title" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 2
                },
                "nomDuFichier" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 2 
                },
                "nameFile" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 2 
                },
                "localisationDuFichier" : {   
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            } 
                },
                "contenu" : { 
                  "type" : "String",
                  "analyzer" : "francais_custom" 
                },
                "typeDocument" : { 
                  "type" : "String"
                }
            }
        },
        "xls" : {
            "properties" : {
                "title" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 2
                },
                "nomDuFichier" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 2 
                },
                "nameFile" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 2 
                },
                "localisationDuFichier" : {   
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            }
                },
                "contenu" : { 
                  "type" : "String",
                  "analyzer" : "francais_custom"                  
                },
                "sheetNames" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 1.5
                },
                "typeDocument" : { 
                  "type" : "String"
                }
            }
        }
    }
}'



"others" : {
            "properties" : {
                "nomDuFichier" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 2 
                },
                "nameFile" : { 
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            },
                  "boost" : 2 
                },
                "localisationDuFichier" : {   
                  "type" : "String",
                  "fields": {
                "raw": { 
                "type" :  "string",
                "index" : "not_analyzed"
              }
            } 
                },
                "typeDocument" : { 
                  "type" : "String"
                }
            }
        },


curl -XGET 'dhadlx22.dns21.socgen:9200/_analyze' -d '
{
  "analyzer" : "standard",
  "text" : "Le Big Data est le metier d'avenir is a test"
}'


curl -XGET 'dhadlx22.dns21.socgen:9200/_analyze' -d '
{
  "analyzer" : "standard",
  "text" : ["this is a test", "the second text"]
}'

curl -XGET 'dhadlx22.dns21.socgen:9200/_analyze?analyzer=lowercase' -d 'Je SUis UN joEUR'

curl -XGET 'dhadlx22.dns21.socgen:9200/_analyze?tokenizer=keyword&filters=asciifolding' -d 'this is a test'



curl -XDELETE 'dhadlx22.dns21.socgen:9200/my_test2'

curl -XPUT 'dhadlx22.dns21.socgen:9200/my_test2' -d '{
   "settings": {
     "analysis": {
       "filter": {
         "french_elision": {
         "type": "elision",
             "articles": [ "l", "m", "t", "qu", "n", "s",
                           "j", "d", "c", "jusqu", "quoiqu",
                           "lorsqu", "puisqu"
                         ]
         },
         "french_stop": {
           "type": "stop",
           "stopwords": "_french_"
         },
         "french_stemmer": {
           "type": "stemmer",
           "language": "light_french"
         }
       },
       "analyzer": {
         "francais_custom": {
           "tokenizer": "standard",
           "filter": [
             "french_elision",
             "lowercase",
             "french_stop",
             "french_stemmer"
           ]
         }
       }
     }
   }
}'


curl -XGET 'dhadlx22.dns21.socgen:9200/my_test2/_analyze?analyzer=francais_custom&pretty' -d "était je de DES avec données le BIG  data est treta hassen"




curl -XPOST dhadlx22.dns21.socgen:9200/my_test2/_search -d '{ "query": { "query_string" : { "query": "données" } } }' 
curl -XPOST dhadlx22.dns21.socgen:9200/my_test2/_search -d '{ "query": { "match_all" : {} } }' 

curl -XPOST 'dhadlx22.dns21.socgen:9200/my_test2' -d '{
    "title" : "youtube Data API",
    "category" : "PHP",
    "tags" : ["Youtube","API","PHP"],
    "duration": "données",
    "tes": "BIG"
}'












http://dhadlx277.dns21.socgen:10000/
c'est le lien vers jupyter
keras et h2o sty installés dessus
après tu recherches des tutos "MNIST h2o(ou keras)"



#########################################################
              CONNNEXION ENV Pythton 2.7
##########################################################

Depuis la dhadlx55

export PATH="/applis/hadd/produits/anaconda3/bin:$PATH"

source activate py27


/tmp/pyrnn/ocropy/tests 


**************************

Tesseract 

*************************

for i in *.pdf; do convert $i $i.png; done

for i in *.png; do tesseract $i $i; done

****************
      TEXTCLEAN 
****************
textcleaner -g -e normalize -f 30 -o 12 -s 2 imageName out.png

textcleaner -g -e stretch -f 25 -o 10 -u -s 1 -T -p 10 imageName out.png


****************************
CONVERTIR NIVEAU DE GRIS
***************************

for i in *.png; do mogrify -type Grayscle $i; done

convert -type Grayscale input-picture.png output-picture.png

for i in *.png; do convert -type Grayscale $i gray_$i; done

********************
CONVERTIR TAILLE 
********************

for i in *.png; do convert $i -resize 1750x1750! -quality 100 resize_$i; done

convert "input.jpg" -resize 500x500! -quality 100 "output.png"



for i in *.png; do convert $i old_$i; done

******************
DELETE FICHIER VIDE
*******************

for i in *;do if [ ! -s "$i" ]; then echo "$i est vide";fi;done






 train_old = np.empty(142, 1750*1750)
i=0
for element in os.listdir('.'):
        old = misc.imread(element)
        train_old[i,] = old.ravel()
        i+=1


****************************
DATA SET POUR LE TRAINNING 
*****************************

a = 237
a1 = 0,75*a
train_cni_old = [[] for _ in xrange(a)]

i=0
for element in os.listdir('.'):
    if element.endswith('.png'):
        old = misc.imread(element)
        train_cni_old[i] = old.ravel()
        #print(element)
        i+=1



b = 951
b1 = 0,75*b
train_cni_new = [[] for _ in xrange(b)]

i=0
for element in os.listdir('.'):
    if element.endswith('.png'):
        new = misc.imread(element)
        train_cni_new[i] = new.ravel()
        #print(element)
        i+=1