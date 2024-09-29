<div id="vid"></div>

<script>
    // Function to get the value of a URL parameter
    var urlParams = new URLSearchParams(window.location.search);
    var videoLink = urlParams.get('video');

    if (videoLink) {
        var iframe = document.createElement('iframe');
        iframe.setAttribute('allowfullscreen', '');
        iframe.setAttribute('frameborder', '0');
        iframe.setAttribute('height', '400');
        iframe.setAttribute('sandbox', 'allow-forms allow-pointer-lock allow-same-origin allow-scripts allow-top-navigation');
        iframe.setAttribute('scrolling', 'no');
        iframe.setAttribute('width', '100%');
        iframe.setAttribute('height', '100%');
        iframe.src = videoLink;

        // Append the iframe to the 'vid' div
        document.getElementById('vid').appendChild(iframe);
    } else {
        console.error('Video link parameter "video" is missing in the URL.');
    }
</script>

<style>
    #vid {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
</style>
