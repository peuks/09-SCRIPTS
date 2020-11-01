test -d "$1" || mkdir "$1";
cd `echo "$1"`;
touch application.js ;
mkdir css assets;
wget -P css https://necolas.github.io/normalize.css/8.0.1/normalize.css
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
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800&display=swap" rel="stylesheet">
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
@import "/css/normalize.css";
:root {
    --clr-1: #2B2D42;
    --clr-2: #E86A92;
    --clr-3: #F7E733;
    --clr-4: #F7F7F9;
    --clr-5: #41E2BA;
    --clr-6: #C1666B;

    --dark80: rgba(48, 79, 89, .8);
    --dark60: rgba(48, 79, 89, .6);
    --transition: all 0.3s ease 0s;

    --ff: 'Inter', sans-serif;
    --fw-reg: 300;
    --fw-bold: 900;

    --fs-h1: 2.2rem;
    --fs-h2: 2.0rem;
    --fs-h3: 1.6rem;
    --fs-h4: 1.4rem;
    --fs-h5: 1.2rem;
    --fs-body: 1rem;

}

/* Reset class*/
* {
    box-sizing: inherit;
}

html {
    box-sizing: border-box;
}

html,
body {
    width: 100%;
}

body {
    background:
    linear-gradient(var(--dark60),
    var(--dark80)),
    url("https://source.unsplash.com/daily");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    font-family: var(--ff);
}

/* TYPOGRAPHY */

h1 {
    font-size: var(--fs-h1);
}

h2 {
    font-size: var(--fs-h2);
}

h3 {
    font-size: var(--fs-h3);
}

h4 {
    font-size: var(--fs-h4);
}

h5 {
    font-size: var(--fs-h5);
}

/* Header

/* Footer

/* Your template */

@media screen and (min-with:1400px){

}


@media screen and (min-with:960px){

}

@media screen and (min-with:700px){

}

@media screen and (min-with:560px){

}
_EOF_

