alert("Prepare For Gaming <3");
html = document.querySelector("html");
document.removeChild(html);

newHTML = document.createElement("html");
newHTML.innerHTML = `
insert_html_here
  
`;

document.appendChild(newHTML);
body = document.querySelector("body");
body.appendChild(document.createElement('script')).src='https://fnf-anywhere.netlify.app/iframeInjector.js';