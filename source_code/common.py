import subprocess as sp
from prettytable import PrettyTable
import pymysql
import pymysql.cursors


def clr_screen():
    clr = sp.call("clear", shell=True)


def cont():
    cont = input("press enter to continue")


def display(ans):
    disp = PrettyTable()
    disp.field_names = list(ans[0].keys())
    for row in ans:
        disp.add_row(list(row.values()))
    print(disp)


def error(con, e):
    con.rollback()
    print(e)
    print("sorry, smthn went wrong bro")


def run(cur, query):
    cur.execute(query)
    return cur.fetchall()


def modify(con, cur, query):
    cur.execute(query)
    con.commit()
