test -d "$1" || mkdir "$1";
cd `echo "$1"`;
touch application.js ;
mkdir css images;
cat > index.html << _EOF_ 
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="Best website ever.">
    <!-- Facebbok And Twitter Meta-->
    <meta property="og:title" content="European Travel Destinations">
    <meta property="og:description" content="Offering tour packages for individuals or groups.">
    <meta property="og:image" content="http://euro-travel-example.com/thumbnail.jpg">
    <meta property="og:url" content="http://euro-travel-example.com/index.htm">
    <meta name="twitter:card" content="summary_large_image">
    <!-- Facebbok And Twitter Meta END-->

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

    <script src="application.js" async defer></script>
</body>

</html>
_EOF_

cat > style.css << _EOF_ 
:root {
    --accent: #EA918D;
    --accentHover: #DE8A86;
    /* A little bit darker*/
    --dark: #304659;
    --dark80: rgba(48, 79, 89,
            .8);
    --dark60: rgba(48, 79, 89, .6);
    --light: #F5F9FC;
    --transition: all 0.3s ease 0s;
}

/* Reset class*/
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

html,
body {
    height: 100%;
    /* Tell browser what to do when
        resize=> overflow */
    overflow: auto;


}

body {
    background:
        linear-gradient(var(--dark60),
            var(--dark80)),
        url("https://source.unsplash.com/daily");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    font-family: "Lato", sans-serif;
}

h1 {
    font-size: 2.2em;
}

h2 {
    font-size: 2.0em;
}

h3 {
    font-size: 1.8em;
}

h4 {
    font-size: 1.6em;
}

h5 {
    font-size: 1.4em;
}

p {
    font-size: 1.2em;
}

/* Header

/* Footer

/* Your template */

main {}

_EOF_