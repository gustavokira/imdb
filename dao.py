# -*- coding: utf-8 -*-

import MySQLdb

class Dao:
    def __init__(self):
        self.con = MySQLdb.connect(host='localhost', user='root', passwd='',db='info3')
        self.c = self.con.cursor()

    def getAtorById(self,id):
        self.c.execute('SELECT * FROM atores where id="'+id+'"')
        result = self.c.fetchone()
        return result

    def getMovieById(self,id):
        self.c.execute('SELECT * FROM filmes where id="'+id+'"')
        result = self.c.fetchone()
        return result

    def getDiretorById(self,id):
        self.c.execute('SELECT * FROM diretores where id="'+id+'"')
        result = self.c.fetchone()
        return result

    def insertAtor(self,ator):
        str = ",".join([
            '"'+ator["id"]+'"',
            '"'+ator["name"]+'"',
            '"'+ator["place"]+'"',
            '"'+ator["birth"]+'"'
        ])
        self.c.execute("insert into atores (id, nome, pais, nascimento) values("+str+");");
        result = self.con.commit()
        return result
    def insertDiretor(self,ator):
        str = ",".join([
            '"'+ator["id"]+'"',
            '"'+ator["name"]+'"',
            '"'+ator["place"]+'"',
            '"'+ator["birth"]+'"'
        ])
        self.c.execute("insert into diretores (id, nome, pais, nascimento) values("+str+");");
        result = self.con.commit()
        return result

    def insertCast(self,cast):
        for c in cast:
            str = ",".join([
                '"'+c["movie_id"]+'"',
                '"'+c["actor_id"]+'"'
            ])
            try:
                self.c.execute("insert into atores_e_filmes (filme_id,ator_id) values("+str+");");
                result = self.con.commit()
            except Exception as e:
                print "provalvelmente ja cadastrado"
                print c
                # print e
