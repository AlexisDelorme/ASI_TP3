from flask import Flask, render_template, redirect, url_for
from flask import request
from modele import articles



appli = Flask(__name__)

@appli.route('/AddArticle')

def article_info():
    return render_template('AddArticle.html')


@appli.route('/articles')

def show_articles():
    results = article.Articles.getAll()
    return render_template('table.html', items=results)


@appli.route('/insertdb', methods=['POST'])

def show_info():
    a = article.Articles(article.Articles.getlastid()+1, request.form['author'], request.form['titre'],
                        request.form['section'], request.form['date'],
                        request.form['status'], request.form['text'])
    b = article.Articles.print(a)
    c = [b]
    article.Articles.inserttodb(c)
    return redirect(url_for('show_articles'))

if __name__ == '__main__':
    app.run()