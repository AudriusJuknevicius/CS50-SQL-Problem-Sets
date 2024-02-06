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
Some of the biggest issues with such approach is the scalability and performance once this database gets big. Simply meaning that the bigger it becomes, the bigger
the performance issues will become ultimately leading towards new servers instead of upgradability and scalability of the pre-existing ones despite potentially
not reaching the storage thresholds.

## Partitioning by Hour

<!-- **Will the observations likely be evenly distributed across all boats,
even if AquaByte most commonly collects observations between midnight and 1am? Why or why not?**

The observations will not be evenly distributed.

**Suppose a researcher wants to query for all observations between midnight and 1am. On how many of the boats will they need to run the query?**

The researcher will need to run the query on only some of the boats. -->

Adopting this approach would help with performance of queries and also make it less complex as less boats have to be used in queries to find results.
The biggest issue is due to bad partinioning or the inequal division of data, boat A for example will be overwhelmed with data whilst boat B in this
instance will not be utilized much at all.



## Partitioning by Hash Value

<!-- **Will the observations likely be evenly distributed across all boats,
even if AquaByte most commonly collects observations between midnight and 1am? Why or why not?**

The observations will be evenly distributed.

**Suppose a researcher wants to query for all observations between midnight and 1am.
On how many of the boats will they need to run the query?**

The researcher will likely need to run the query on all of the boats.

**Suppose a researcher wants to query for a specific observation, which occurred at exactly 2023-11-01 00:00:01.020.
On how many of the boats will they need to run the query?**

The researcher will need to run the query on only some of the boats. -->


