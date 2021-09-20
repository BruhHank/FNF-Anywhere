# Import JS Minifier
from jsmin import jsmin

# Build loaderMin
with open('loader.js', 'r') as loader:
    loaderMinJS = jsmin(loader.read())
    with open('loaderMin.js', 'w') as loaderMin:
        loaderMin.write(loaderMinJS)

# Build loaderFullMin
with open('main.js', 'r') as loaderFull:
    with open('index.html') as html:
        loaderFullJS = loaderFull.read()
        loaderFullJS = loaderFullJS.replace('insert_html_here', html.read())
        loaderMinJS = jsmin(loaderFull.read())

        with open('loaderFullMin.js', 'w') as loaderMin:
            loaderMin.write(loaderMinJS)