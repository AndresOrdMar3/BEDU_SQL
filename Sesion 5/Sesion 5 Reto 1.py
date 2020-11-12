#!/usr/bin/env python
# coding: utf-8

# In[1]:


import re
from pymongo import MongoClient

# Requires the PyMongo package.
# https://api.mongodb.com/python/current

client = MongoClient('mongodb+srv://beduUsr:Versingetorix3@beducluster.47mtr.mongodb.net/test?authSource=admin&replicaSet=atlas-ht0ej4-shard-0&connectTimeoutMS=600000&socketTimeoutMS=6000000&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
filter={
    'number_of_reviews': {
        '$gte': 50
    }, 
    'review_scores.review_scores_rating': {
        '$gte': 80
    }, 
    'amenities': {
        '$in': [
            re.compile(r"ethernet(?i)")
        ]
    }, 
    'address.country': re.compile(r"brazil(?i)")
}

result = client['sample_airbnb']['listingsAndReviews'].find(
  filter=filter
)


# In[ ]:




