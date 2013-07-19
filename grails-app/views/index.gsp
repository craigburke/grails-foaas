<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Grails </title>

	</head>
	<body>
        <div class="container">
            <div class="hero-unit">
               <h1>FOAAS</h1>
               <h2>Fuck Off As A Service</h2>

               <p>A grails FOAAS implementation based on <a href="http://www.foaas.com">FOAAS v0.0.1</a>.</p>

               <p><strong>Note:</strong> this is not my idea, just my implementation. See <a href="#credits">credits</a> for more details</p>

           </div>
       </div>

    <div class="container">
    <div class="content" style="margin-left:50px;">
        <h2 id="introduction">Introduction</h2>
        <p>FOAAS (Fuck Off As A Service) provides a modern, RESTful, scalable solution to the common problem of telling people to fuck off.</p>

        <h2>Content Negotiation</h2>

        <p>FOAAS will respond to the following 'Accept:' values with appropriate content</p>

        <ul>
            <li>text/plain - Content will be returned as a plain string.</li>
            <li>application/json - Content will be returned as a JSON object { message: 'message', subtitle: 'subtitle' }</li>
            <li>text/html - Content will be returned as an HTML page with a twitter bootstrap hero unit, containing the message and the subtitle.</li>
        </ul>

        <h2>API</h2>

        <h3>/off/:name/:from</h3>

        <p>Will return content of the form 'Fuck off, :name. - :from', e.g. /off/Tom/Chris will return 'Fuck off, Tom - Chris'</p>

        <h3>/you/:name/:from</h3>

        <p>Will return content of the form 'Fuck you, :name. - :from', e.g. /you/Tom/Chris will return 'Fuck you, Tom - Chris'</p>

        <h3>/this/:from</h3>

        <p>Will return content of the form 'Fuck this - :from', e.g. /this/Chris will return 'Fuck this. - Chris'</p>

        <h3>/that/:from</h3>

        <p>Will return content of the form 'Fuck that. - :from', e.g. /that/Chris will return 'Fuck that. - Chris'</p>

        <h3>/everything/:from</h3>

        <p>Will return content of the form 'Fuck everything. - :from', e.g. /everything/Chris will return 'Fuck everything. - Chris'</p>

        <h3>/everyone/:from</h3>

        <p>Will return content of the form 'Everyone can go and fuck off. - :name', e.g. /everyone/Tom will return 'Everyone can go and fuck off. - Tom'</p>

        <h3>/donut/:name/:from</h3>

        <p>Will return content of the form ':name, go and take a flying fuck at a rolling donut. - :from', e.g. /donut/Tom/Chris will return 'Tom, go and take a flying fuck at a rolling donut. - Chris'</p>

        <h3>/shakespeare/:name/:from</h3>

        <p>Will return content of the form ':name, Thou clay-brained guts, thou knotty-pated fool, thou whoreson obscene greasy tallow-catch! - :from', e.g. /shakespeare/Falstaff/Prince%20Henry will return 'Falstaff, Thou clay-brained guts, thou knotty-pated fool, thou whoreson obscene greasy tallow-catch! - Prince Henry</p>

        <h3>/linus/:name/:from</h3>

        <p>Will return content of the form ':name, there aren't enough swear-words in the English language, so now I'll have to call you perkeleen vittupää just to express my disgust and frustration with this crap. - :from'. </p>

        <h3>/king/:name/:from</h3>

        <p>Will return content of the form 'Oh fuck off, just really fuck off you total dickface. Christ :name, you are fucking thick. - :from'. </p>

        <h3>/pink/:from</h3>

        <p>Will return content of the form 'Well, Fuck me pink. - :from'. </p>

        <h3>/life/:from</h3>

        <p>Will return content of the form 'Fuck my life. - :from', e.g. /life/Phil will return 'Fuck my life. - Phil'</p>

        <h3>/chainsaw/:name/:from</h3>

        <p>Will return content of the form 'Fuck me gently with a chainsaw, :name. Do I look like Mother Teresa? - :from', e.g. /chainsaw/Chris/Heather will return 'Fuck me gently with a chainsaw, Chris. Do I look like Mother Teresa? - Heather</p>


        <h2 id="credits">Credits</h2>

        <p>This is all based off of the concept and API designed by Dionysus (<a href="https://twitter.com/foaas">@foaas</a>). This was ported to a grails app by Craig Burke (<a href="https://twitter.com/craigburke1">@craigburke1</a>).</p>

    </div>
    </div>
	</body>
</html>
