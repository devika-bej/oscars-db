import pymysql
import pymysql.cursors
import common as com
import selection as sel
import projection as proj
import aggregate as agg
import search as srch
import analysis as ana


def retrieve():
    with con.cursor() as cur:
        com.clr_screen()
        print("1 - selection")
        print("2 - projection")
        print("3 - aggregate")
        print("4 - search")
        print("5 - analysis")
        ch = int(input("what kind of information do you want? "))
        match ch:
            case 1:
                sel.drive(con)
            case 2:
                proj.drive(con)
            case 3:
                agg.drive(con)
            case 4:
                srch.drive(con)
            case 5:
                ana.drive(con)
            case _:
                print("sorry, that is not a valid option")
        com.cont()


def modify():
    pass


while 1:
    com.clr_screen()

    usr = input("enter username: ")
    pw = input("enter password: ")

    try:
        con = pymysql.connect(
            host="localhost",
            user=usr,
            password=pw,
            db="phase_4",
            cursorclass=pymysql.cursors.DictCursor,
        )
        com.clr_screen()
        if con.open:
            print("connected")
        else:
            print("connection failed")
        com.cont()

        with con.cursor() as cur:
            while 1:
                com.clr_screen()
                print("1 - modify the database")
                print("2 - retrieve from the database")
                print("3 - exit")
                ch = int(input("what is your command? "))
                com.clr_screen()
                if ch == 3:
                    print("good bye friend :)")
                    exit()
                elif ch == 2:
                    retrieve()
                elif ch == 1:
                    modify()
                else:
                    print("sorry, that is not a valid option")
                    com.cont()

    except Exception as e:
        com.clr_screen()
        print(e)
        print("possible issues: ")
        print("username or password is incorrect")
        print("user does not have access to database")
        com.cont()
