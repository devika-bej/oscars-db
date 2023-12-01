import pymysql
import pymysql.cursors
import common as com


def gend_gross(con, cur):
    try:
        query = ""
        ans = com.run(cur, query)
        if not ans:
            print("sorry, nothing to see here :(")
            return
        com.display()
    except Exception as e:
        com.error(con, e)


def age_gend(con, cur):
    try:
        query = ""
        ans = com.run(cur, query)
        if not ans:
            print("sorry, nothing to see here :(")
            return
        com.display()
    except Exception as e:
        com.error(con, e)


def num_gend(con, cur):
    try:
        query = ""
        ans = com.run(cur, query)
        if not ans:
            print("sorry, nothing to see here :(")
            return
        com.display()
    except Exception as e:
        com.error(con, e)


def drive(con):
    with con.cursor() as cur:
        print("welcome to analysis!")
        print("we can give the following analysis")
        print(
            "1 - relationship between the gender of the director and the gross income of the movies"
        )
        print(
            "2 - closeness of age of actor to the age of the character and its dependency on the gender of the actor"
        )
        print(
            "3 - relationship between number of movies directed and the gender of the director"
        )
        ch = int(input("what analysis do you want? "))
        match ch:
            case 1:
                gend_gross(con, cur)
            case 2:
                age_gend(con, cur)
            case 3:
                num_gend(con, cur)
            case _:
                print("sorry, that is not a valid option")
    return
