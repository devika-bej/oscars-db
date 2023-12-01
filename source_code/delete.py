import pymysql
import pymysql.cursors
import common as com


def ceremony(con, cur):
    try:
        print("enter the details for the new ceremony")
        year = int(input("year (last 2 digits of 20__): "))
        venue = input("venue: ")
        host = int(input("id of host (integer): "))
        date = input("date (yyyy-mm-dd): ")
        query = "insert into Ceremony values('%d','%s','%d','%s')" % (
            year,
            venue,
            host,
            date,
        )
        com.modify(con, cur, query)
        print("inserted successfully :D")
    except Exception as e:
        com.error(con, e)


def movie(con, cur):
    try:
        print("enter the details for the new movie")
        movie = int(input("movie id (year + category): "))
        title = input("title: ")
        year = int(input("year (yyyy): "))
        budget = int(input("budget (in USD): "))
        income = int(input("gross income (in USD): "))
        genre = input("genre: ")
        result = input("result id: ")
        director = int(input("director id: "))
        query = "insert into Movie values('%d','%s','%d','%d','%d','%s','%s','%d')" % (
            movie,
            title,
            year,
            budget,
            income,
            genre,
            result,
            director,
        )
        com.modify(con, cur, query)
        print("inserted successfully :D")
    except Exception as e:
        com.error(con, e)


def song(con, cur):
    try:
        print("enter the details for the new song")
        genre = int(input("genre id: "))
        title = input("title: ")
        results = input("results (Winner or Nominated): ")
        year = int(input("year (yyyy): "))
        lang = input("language: ")
        query = (
            "insert into Song(Genre_Id, Title, Results, Year_Of_Nomination, Language) values('%d','%s','%s','%d','%s')"
            % (genre, title, results, year, lang)
        )
        com.modify(con, cur, query)
        print("inserted successfully :D")
    except Exception as e:
        com.error(con, e)


def drive(con):
    with con.cursor() as cur:
        print("welcome to insertion!")
        print("you can insert the following entity types")
        print("1 - ceremony")
        print("2 - movie")
        print("3 - song")
        ch = int(input("what do you want to insert? "))
        match ch:
            case 1:
                ceremony(con, cur)
            case 2:
                movie(con, cur)
            case 3:
                song(con, cur)
            case _:
                print("sorry, that is not a valid option")
    return
