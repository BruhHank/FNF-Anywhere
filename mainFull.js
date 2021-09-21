alert("Prepare For Gaming <3");
html = document.querySelector("html");
document.removeChild(html);

newHTML = document.createElement("html");
newHTML.innerHTML = `
insert_html_here
  
`;

document.appendChild(newHTML);
body = document.querySelector("body");
script = document.createElement('script');
script.innerHTML = `insert_js_here`;
body.appendChild(script)