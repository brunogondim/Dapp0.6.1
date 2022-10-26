import LinearAlgebraPurePython as la 
import sys

import sqlite3

def regressao():

    con = sqlite3.connect("data.db")
    cur = con.cursor()
    cur.execute('SELECT * FROM medical')
    result = cur.fetchall()

    X = []
    Y = []
    for item in result:
        age = float(item[0])
        sex = 0 if item[1] == 'male' else 1
        bmi = float(item[2])
        children = float(item[3])
        smoker = 0 if item[4] == 'no' else 1
        #region = item[5]
        charges = float(item[6])

        X.append([age,sex,bmi,children,smoker])
        Y.append(charges)


    # la = lr.Lr()

    #X = [[2,3,4,2,3,4],[1,2,3,1,2,3],[1,2,3,1,2,3],[1,2,3,1,2,3],[1,2,3,1,2,3],[1,2,3,1,2,3]]
    #Y = [1.8,2.3,2.8,2.2,2.7,3.2]
    
    coefs = la.least_squares(X, Y)
    la.print_matrix(coefs)
    
    # XLS = [[1,1.5,2,2.5,3,3.5,4],[0,0.5,1,1.5,2,2.5,3]]
    # XLST = la.transpose(XLS)
    # XLST1 = la.insert_at_nth_column_of_matrix(1,XLST,len(XLST[0]))
    # YLS = la.matrix_multiply(XLST1, coefs)
    # YLST = la.transpose(YLS)
