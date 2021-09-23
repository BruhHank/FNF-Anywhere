function load(name) {
    // Clear body
    html = document.querySelector("html");
    body = html.querySelector("body");
    html.removeChild(body);
    newBody = document.createElement("body");

    // Configure Iframe
    iframe = document.createElement('iframe');

    iframeHeight = window.screen.height - 200;
    iframeWidth = window.screen.width - 200;

    iframe.style.margin = "auto";
    iframe.style.border = "1px solid #ccc";

    console.log("Iframe Height: " + iframeHeight);
    console.log("Iframe Width: " + iframeWidth);

    iframe.style.height = iframeHeight+'px';
    iframe.style.width = iframeWidth+'px';
    iframe.src="https://1.1.1.1";

    newBody.appendChild(iframe)
    html.appendChild(newBody);
}
