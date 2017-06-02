# -*- coding: utf-8 -*-

import wget,os,sys,re
from dao import Dao
from bs4 import BeautifulSoup

def getMovie(movie_id):
    url = "http://www.imdb.com/title/"+movie_id+"/"
    return get(url,"mv");

def getMovieCast(movie_id):
    url = "http://www.imdb.com/title/"+movie_id+"/fullcredits?ref_=tt_cl_sm#cast"
    return get(url,"mc");

def getPerson(person_id):
    url = "http://www.imdb.com/name/"+person_id+"/"
    return get(url,"pr");

def parseMovie(data):
    soup = BeautifulSoup(data, 'html.parser')

    h1 = soup.find('h1')
    title = h1.find(text=True).rstrip().lstrip()
    year = h1.find('span',id='titleYear').find('a').find(text=True).rstrip().lstrip()
    runtime = soup.find('time')['datetime'].replace('PT','').replace('M','')
    h4s = soup.findAll('h4')
    imdb_id = soup.find('span',class_='see-more').find('a',{'href':True})['href'].replace('/title/','').replace('/awards?ref_=tt_awd','')

    budget = ""
    country = ""
    director_id = ""
    for h4 in h4s:
        if('Budget' in h4.find(text=True)):
            budget = h4.parent.text.replace('Budget:','').replace('(estimated)','').replace('$','').rstrip().lstrip().replace(',','')
        if('Director' in h4.find(text=True)):
            director_id = h4.parent.find('span').find('a',{'href':True})['href'].replace('/name/','').replace('?ref_=tt_ov_dr','').rstrip().lstrip()
            director_name = h4.parent.find('span').find('a',{'href':True}).text.rstrip().lstrip()

    movie = {}
    movie['id'] = imdb_id
    movie['title'] = title
    movie['year'] = year
    movie['runtime'] = runtime
    movie['budget'] = budget
    movie['director_id'] = director_id
    return movie

def parseCast(data):
    cast = []
    soup = BeautifulSoup(data, 'html.parser')

    header = soup.find('div',class_='subpage_title_block').find('a',{'href':True})
    movie_id = header['href'].replace('/title/','').replace('/?ref_=ttfc_fc_tt','').rstrip().lstrip()

    table = soup.find('table',class_='cast_list')
    trs = table.findAll('tr')
    name = ""
    imdb_id = ""
    for tr in trs:
        if('Rest of cast listed alphabetically' in tr.text):
            break

        actor = tr.find('td',class_='itemprop')

        if actor != None:
            a = actor.find('a',{'href':True})
            imdb_id = a['href'].replace('/name/','').rstrip().lstrip()
            imdb_id = re.sub('\/\?ref_=ttfc_fc_cl_t.*$','',imdb_id).rstrip().lstrip()
            name = a.text.rstrip().lstrip()
            a = {}
            a["movie_id"] = movie_id
            a["actor_id"] = imdb_id
            cast.append(a)
    return cast

def parsePerson(data):
    soup = BeautifulSoup(data, 'html.parser')
    born = soup.find('div',id='name-born-info')
    h1 = soup.find('h1',class_='header').find('span',class_='itemprop').text
    metas = soup.findAll('meta')

    actor_id = ""
    nameStr = ""
    timeStr = ""
    placeStr = ""
    for meta in metas:
        if meta.get("property", None) == "pageId":
            actor_id = meta['content']

    nameStr = h1

    if born is not None:
        time = born.find('time',{'datetime':True})
        place = born.findAll('a')[-1].text.split(',')[-1].rstrip().lstrip()
        if time is not None:
            timeStr = time['datetime']
        else:
            timeStr = ""
        if place is not None:
            placeStr = place
        else:
            placeStr = ""

    person = {}
    person['id'] = actor_id
    person['name'] = nameStr
    person['birth'] = timeStr
    person['place'] = placeStr
    return person

def get(url,str):
    down = wget.download(url,str+".temp")
    f = open(down, 'r')
    htmlText = "\n".join(f.readlines())
    f.close()
    os.remove(str+".temp")
    return htmlText

dao = Dao()
for line in sys.stdin:
    id = line.rstrip().lstrip()
    print id

    fromDbMovie = dao.getMovieById(id)
    if fromDbMovie is None:
        print "filme "+id+" não encontrado"

    else:
        print "filme "+id+" já cadastrado"
        print fromDbMovie

    movieHtml = getMovie(id)
    movie = parseMovie(movieHtml)

    fromDbDiretor = dao.getDiretorById(movie["director_id"])

    if fromDbDiretor is None:
        print "diretor "+c["director_id"]+" nao encontrado"
        print "fazendo o download e inserindo no banco..."
        personHtml = getPerson(c["director_id"])
        person = parsePerson(personHtml)
        dao.insertDiretor(person)
    else:
        print "diretor "+movie["director_id"]+" ja cadastrado"
        print fromDbDiretor

    castHtml = getMovieCast(id)
    cast = parseCast(castHtml)

    for c in cast:
        fromDb = dao.getAtorById(c["actor_id"])
        if fromDb is None:
            print c["actor_id"]+" nao encontrado"
            print "fazendo o download e inserindo no banco..."
            personHtml = getPerson(c["actor_id"])
            person = parsePerson(personHtml)
            dao.insertAtor(person)

    dao.insertCast(cast)
