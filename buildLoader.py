# Import JS Minifier
from jsmin import jsmin

# Build loaderMin
with open('loader.js', 'r') as loader:
    loaderMinJS = jsmin(loader.read())
    with open('loaderMin.js', 'w') as loaderMin:
        loaderMin.write(loaderMinJS)

# Build loaderFullMin
with open('main.js', 'r') as loaderFull:
    loaderFullJS = loaderFull.read()
    with open('index.html') as html:
        loaderFullJS = loaderFullJS.replace('insert_html_here', html.read())
        loaderFullMinJS = jsmin(loaderFullJS)

        with open('loaderFullMin.js', 'w') as loaderFullMin:
            loaderFullMin.write(loaderFullMinJS)