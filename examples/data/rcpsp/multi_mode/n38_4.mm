************************************************************************
file with basedata            : cn38_.bas
initial value random generator: 1736605278
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  124
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  3   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       33        9       33
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           8  10  12
   3        3          3           8  11  17
   4        3          2           5   9
   5        3          2           6  10
   6        3          2           7  11
   7        3          2           8  12
   8        3          2          13  16
   9        3          3          12  13  17
  10        3          2          11  17
  11        3          2          13  16
  12        3          2          15  16
  13        3          1          14
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2  N 3
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0
  2      1     4       8   10    0    7    1
         2     4       6   10    8    0    0
         3     8       4   10    0    8    0
  3      1     3       9    5    9    0    0
         2     7       5    4    5    0   10
         3     9       4    3    0    0    9
  4      1     6       6    9    0    8    3
         2     8       3    5    0    2    0
         3     9       2    1    0    0    1
  5      1     1       8    7    0   10    0
         2     5       6    7    0    7    8
         3     8       6    7    0    5    7
  6      1     2      10    9    4    7    0
         2     3       8    8    0    6    0
         3     6       8    5    0    0    3
  7      1     2       8    9    6    3    2
         2     4       7    6    0    3    0
         3     8       6    4    0    2    1
  8      1     1       3    2    4    0    8
         2     1       3    2    5    0    0
         3     6       2    1    0    0    8
  9      1     1       7    5    0    3    0
         2     3       6    4    6    3    6
         3     6       6    4    4    2    2
 10      1     7       8    7    3    0    0
         2     9       5    6    0   10    6
         3    10       3    2    0    0    4
 11      1     3       8    9    0    9    0
         2     7       7    7    0    8    0
         3    10       7    4    0    8    0
 12      1     5       9    3    0    0   10
         2     7       9    2    0    6    8
         3    10       8    1    9    4    7
 13      1     6       1    8    3    0    0
         2     6       1    8    0    4    0
         3     9       1    8    0    0    1
 14      1     1       5    6    0    0    4
         2     1       6    7    0    4    1
         3     2       2    6    5    0    0
 15      1     9       6    6    7    0    6
         2     9       6    8    0    3    6
         3    10       4    4    0    0    6
 16      1     3       5    9    9    0    0
         2     4       4    8    9    0    0
         3     5       4    7    8    6    0
 17      1     2       5    5    5    1    0
         2     3       5    5    4    0    7
         3     8       4    4    4    0    3
 18      1     0       0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2  N 3
   23   24   29   33   29
************************************************************************
