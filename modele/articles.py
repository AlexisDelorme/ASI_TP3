import mysql.connector as mariadb
import os
import config


def test():

    mariadb_connexion = mariadb.connect(user=os.environ.get('DB_USER'), password=os.environ.get('DB_PASSWORD'), database=os.environ.get('DB_NAME'))
    cursor = mariadb_connexion.cursor()
    results = []
    cursor.execute("SELECT author,title from article where author=\'Alexis\'")
    for row in cursor.fetchall():
        results.append(row)
    return results


class Articles(object):

    def __init__(self, id, author, title, date, section, status, text):

        self.id = id
        self.section = section
        self.statut = statut
        self.texte = texte
        self.auteur = auteur
        self.titre = titre
        self.date = date


    @staticmethod

    def inserttodb(articles):

        try:
            mariadb_connexion = mariadb.connect(user=os.environ.get('DB_USER'), password=os.environ.get('DB_PASSWORD'), database=os.environ.get('DB_NAME'))
            cursor = mariadb_connexion.cursor()
            sql_query = """INSERT INTO article(auteur, titre, date, section, statut, texte) 
            VALUES (%s,%s,%s,%s,%s,%s)"""
            cursor = mariadb_connexion.cursor(prepared=True)
            result = cursor.executemany(sql_insert_query, articles)
            mariadb_connexion.commit()
            return cursor.rowcount, "Record inserted in users table"
        except mariadb.Error as error:
            return ("Failed to insert into MySQL table {}".format(error))
        finally:
            # closing database connection.
            if (mariadb_connexion.is_connected()):
                cursor.close()
                mariadb_connexion.close()
                return ("MySQL connection is closed")


    @staticmethod

    def getlastid():

        mariadb_connexion = mariadb.connect(user=os.environ.get('DB_USER'), password=os.environ.get('DB_PASSWORD'), database=os.environ.get('DB_NAME'))
        cursor = mariadb_connexion.cursor()
        cursor.execute("SELECT article_id from article ORDER BY article_id DESC ")
        for row in cursor.fetchone():
            results = row
        return results


    @classmethod

    def getAll(self):

        mariadb_connexion = mariadb.connect(user=os.environ.get('DB_USER'), password=os.environ.get('DB_PASSWORD'), database=os.environ.get('DB_NAME'))
        cursor = mariadb_connexion.cursor()
        results = []
        cursor.execute("SELECT * from article")
        for row in cursor.fetchall():
            row = Articles(row[0], row[1], row[2], row[3], row[4], row[5], row[6])
            results.append(row)
        return results


    def print(self):
        x = (self.auteur, self.titre, self.date, self.section, self.statut, self.texte)
        return x
