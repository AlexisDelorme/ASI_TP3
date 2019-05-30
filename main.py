from flask import Flask, render_template, redirect, url_for
from modele import articles
from flask import request


app = Flask(__name__)


@app.route('/AddArticle')
def article_form():
    return render_template('AddArticle.html')


@app.route('/articles')
def display_articles():
    results = article.Article.getAll()
    return render_template('table.html', items=results)


@app.route('/insertdb', methods=['POST'])
def display_form():
    a = article.Article(article.Article.getlastid()+1, request.form['autheur'], request.form['titre'],
                        request.form['section'], request.form['date'],
                        request.form['statu'], request.form['texte'])
    b = article.Article.print(a)
    c = [b]
    article.Article.insertdb(c)
    return redirect(url_for('display_articles'))


if __name__ == '__main__':
    app.run()