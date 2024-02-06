<!-- https://cs50.harvard.edu/sql/2024/psets/6/deep/ -->

# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

<!-- **Will the observations likely be evenly distributed across all boats,
even if AquaByte most commonly collects observations between midnight and 1am? Why or why not?**

The observations will be evenly distributed.

Looking at Boat A, B and C, it is clear from the date and time that although the data is distributed randomly it follows a pattern
of A>B>C>A>B>C.

**Suppose a researcher wants to query for all observations between midnight and 1am. On how many of the boats will they need to run the query?**

The researcher will need to run the query on all of the boats.

As per the previous answer, in order to access all of the data all of the boats included in the random distribution list have to be queried. -->


The benefits of random partitioning include even load distribution therefore balancing several servers for instance in terms of storage capacity.
This would also mean that performance of those servers would be similar, promoting equalised indexing and creation of views.
Some of the biggest issues with such approach is the scalability 



## Partitioning by Hour

TODO

## Partitioning by Hash Value

TODO
