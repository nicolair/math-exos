# -*- coding: utf-8 -*-
n = 10


M = 0 
for i in range(n):
    for j in range(n):
        M += max(i+1,j+1)
        
print(M,(4*n**3 + 3*n**2 - n)/6)