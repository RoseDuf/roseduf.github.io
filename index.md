
<html>
    <head>
        <title> Rose Dufresne </title>

    <style>
        h1, h2, h3 {
            font-family: sans-serif;
            font-size: 30px;
            font-weight: 400;
            text-transform: uppercase;
        }

        body {
            font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
            font-size: 16px;
            line-height: 1.5;
            margin: 0;
            background: #2a2a2a;
        }

        .background {
            background-image: linear-gradient(white, transparent 70%), url('');
            background-size: 100% 100%;
            background-position: 0% 0%;
            background-blend-mode: screen; /* so many of them */

            position: absolute;
            width: 100%;
            height: 200px;
            left: 0;
            bottom: 0;
        }

        .outer {
            width: 80%;
            margin: auto;
            background: #fcfcfc;
            padding-top: 25px;
        }

        .inner {
            width: 90%;
            margin: auto;
            display: grid;
            grid-template-columns: 1fr 1fr;
            grid-gap: 24px 24px;
            padding-top: 25px;
        }

        .header {
            text-aligh: center;
        }

        .introduction {
            grid-column: 1/span 2;
        }

        .education {
            grid-column: 1;
        }

        .projects {
            grid-column: 1;
        }

        .skills {
            grid-column: 2;
        }

        .ski {
            grid-template-columns: 1fr 4fr;
            display: grid;
        }

        .intro {
            color: black;
            font-size: 16px;
            padding: 15px;
            background-color: pink;
            padding-left: 90px;
            padding-right: 90px;
            padding-top: 50px;
            padding-bottom: 50px;
        }

        .name {
            vertical-align: top;
            color: black;
            font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
            font-size: 90px;
        }       

        .edu {
            font-size: 18px;
            font-weight: bold;
            grid-template-columns: 2fr 1fr;
            display: grid;
        } 

        .gd-title {
            text-align: center;
            font-weight: bold;
        }

        .cs-title {
            text-align: center;
            font-weight: bold;
        }

        .proj {
            text-align: center;
        }

        .picture {
            grid-column: 1/span 2;
            display: grid;
            grid-template-columns: 1fr 2fr;
            grid-gap: 24px 24px;
        }

        .date {
            grid-column: 2;
            font-size: 14px;
            padding-top: 5px;
        }

        .lang {
            grid-column: 2;
            font-size: 12px;
        }

        .icon {
            text-align: center;
            padding-top: 26px;
        }

        .icon2 {
            text-align: center;
            font-size: 12px;
            line-height: 0.3;
            padding-top: 10px;
        }

        .group {
            grid-template-columns: 1fr 1fr 1fr;
            display: grid;
        }

        .c {
            grid-column: 1;
        }
        
        .ruby {
            grid-column: 2;
        }
        
        .clisp {
            grid-column: 3;
        }

    </style>

    </head>

    <body>
        <div class="picture">
        
            <div> 
                <img src="Rose_Dufresne_img.jpg" alt="Rose Dufresne" width="300" height="300" style="border-radius: 300px;">
            </div>

            <div>
                <div class="name"> Rose Dufresne </div>
                <div> 
                    <p><a href="CV-english.pdf"> CV </a></p>
                </div>
            </div>
        </div>

        <div class="introduction">
            <h3 class="header"> Introduction </h3>
            <div class="intro">
                <p> 
                I am a third year student majoring in Computer Science and minoring in Game Design at Concordia University. Being a person that is always interested in learning new skills and determined at completing challenges to the best of my ability, I am very interested in pursuing any opportunity to expand my knowledge in my field.
                </p>
                <p>
                During my experience at Concordia University, I've learned to appreciate many aspects of computer science over the years. For example, I loved my course on theoretical computer science where I got to learn how turing machines worked and how computers interpreted different grammars. I also enjoyed data structures and algorithms because it was satisfying for me to see different sorting algorithm's effectiveness at play. 
                </p>
                <p>
                Thanks to my game design minor, I also had the opportunity to combine the very technical aspects of computer science with art! I have always been a very artistic person and I absolutely didn't want to let my talents go to waste, which is why I am very interested in creating games. It perfectly combines the mathematical and logical aspects of computer science with art, something that is very hard to find in professional fields. 
                </p>
                <p>
                When it comes to programming, one of my competences is my ability to learn new programming languages and softwares very quickly. Before applying to my major, I had no previous knowledge in coding. However, it only took me a couple of months to finally catch up to the standards of the classes I was taking, and even exceeded other students in my program.
                </p>
                <p>
                That being said, I will go through the different languages I've learned during the years.
                </p>
            </div>
        </div>

        <div class="education">
            <h3> Education </h3>
            <div class="edu">
                <div>
                    Concordia University, Montreal, QC
                </div>
                <div class="date">
                    (from 2016 until now)
                </div>
            </div>

            <div class="gd">
                <p class="gd-title">
                    <u>Game Design Minor</u>
                </p>
                <p>
                    Relevant courses I have taken:
                </p>
                <ul>
                    <li>3D Digital Production - CART 361</li>
                    <li>Computation Arts I - CART 253</li>
                </ul>  
            </div>

            <p></p>

            <div class="cs">
                <p class="cs-title">
                    <u>Computer Applications Major (BCompS)</u>
                </p>
                <p>
                    Relevant courses I have taken:
                </p>
                <ul>
                    <li>Object-Oriented Programming I, II - COMP 248, COMP 249</li>
                    <li>Data Structures and Algorithms - COMP 352</li>
                    <li>Web Programming - SOEN 287</li>
                    <li>Introduction to Software Engineering - COMP 354</li>
                    <li>Introduction to Theoretical Computer Science - COMP 335</li>
                    <li>Computer Graphics - COMP 371 (currently taking)</li>
                    <li>Databases - COMP 353 (currently taking)</li>
                    <li>Advanced Program Design with C++ - COMP 345 (currently taking)</li>
                </ul>  
            </div>
        </div>

        <div class="skills">
            <h3>Skills</h3>
            <div class="edu>
                <div>
                    Programming languages:
                </div>
            </div>
            <div class="ski">
                <div class="icon">
                    <img src="static/java_logo.png" alt="Java Logo" width="60" height="60">
                </div>
                <div class="lang">
                    <h4>Java:</h4> 
                    <p>Most experienced with java as I've been using it for most of my time at Concordia University.</p>
                </div>
            </div>

            <div class="ski">
                <div class="icon">
                    <img src="static/javascript_logo.png" alt="JS Logo" width="60" height="60">
                </div>
                <div class="lang">
                    <h4>Javascript:</h4> 
                    <p>Used it for my web programming class and for the creation of the "Zorkemon" group project (which can be found on my github page)</p>
                </div>
            </div>

            <div class="ski">
                <div class="icon">
                    <img src="static/prolog_logo.png" alt="Prolog Logo" width="60" height="60">
                </div>
                <div class="lang">
                    <h4>Prolog:</h4> 
                    <p>Used it the most for helping in the creation of the "Zorkemon" card parser</p>
                </div>
            </div>

            <div class="group">
            <div class="c">
                <div class="icon2">
                    <img src="static/c_logo.png" alt="C Logo" width="60" height="60">
                    <div>
                    <h4>C</h4> 
                    </div>
                </div>
            </div>

            <div class="ruby">
                <div class="icon2">
                    <img src="static/ruby_logo.png" alt="Ruby Logo" width="60" height="60">
                    <div>
                    <h4>Ruby</h4> 
                    </div>
                </div>
                
            </div>

            <div class="clisp">
                <div class="icon2">
                    <img src="static/clisp_logo.png" alt="CLisp Logo" width="60" height="60">
                    <div>
                    <h4>CLisp</h4> 
                    </div>
                </div>
            </div>
            </div> <!-- end of group class -->

            <div class="edu">
                <div>
                    Game Design:
                </div>
            </div>

            <div class="edu">
                <div>
                    Web Development:
                </div>
            </div>

            <div class="edu">
                <div>
                    Tools:
                </div>
            </div>
        </div>


        <div class="projects">
            <h3> Projects </h3>
            <p> I would like to share with you guys some interesting projects and things I've learnt over the years </p>

            <div class="proj">
                <video width="480" height="270" autoplay loop>
                    <source src="RoseD_Monster_ANI.mov" type="video/mp4">
                    <source src="RoseD_Monster_ANI.mov" type="video/ogg">
                    Your browser does not support the video tag.
                </video>

                <h4> Monster Bat </h4>
                <p>(Made using Blender)</p>
            </div>
            <div>
                <p>
                    This was my very first 3D modeling and animation project that I had to do for my 3D digital design class. It is inspired by Pteropus bats, more commonly known as "Flying Foxes". I started by making a basic sculpt of the bat while making sure to have uniform quad polygons all accross the model. I then proceeded with the texturing, materials and colors using references and added fur which wasn't required for the class. I then added HDR lighting, and finally animated it flying in a natural manner. 
                </p>
                <p>
                    I really enjoyed making this project and would like to further my knowledge in 3D animation in the future. I have used Unity in the class and am planning on getting more experience with that engine to make models such as this one and using them in games.
                </p>     
            </div>

            <div class="proj">
               <!-- chicken rush -->
            </div>
        </div>

        


    </body>

</html>
