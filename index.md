
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
            grid-template-rows: 1fr 1fr;
            display: grid;
        }

        .edu-grid {
            grid-row: 1;
        }

        .projects {
            grid-column: 1/span 2;
            grid-template-columns: 1fr 1fr;
            display: grid;
            grid-gap: 20px;
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

        .learning {
            <!-- align-self: end; -->
            grid-row: 2;
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

        .edu-color {
        }

        .sql {
            grid-column: 1;
        }

        .c {
            grid-column: 2;
        }
        
        .ruby {
            grid-column: 3;
        }
        
        .clisp {
            grid-column: 4;
        }

        .git {
            grid-column: 1;
        }

        .bash {
            grid-column: 2;
        }

        .proj-1 {
            grid-column: 1;
        }

        .proj-2 {
            grid-column: 2;
        }

        .proj-header {
            grid-column: 1/span 2;
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
                During my experience at Concordia University, I've learned to appreciate many aspects of computer science over the years. For example, I loved my course on theoretical computer science where I got to learn how turing machines worked and how computers interpreted different grammars. I also enjoyed data structures and algorithms because it was satisfying for me to see different sorting algorithm's effectiveness at play. Furthermore, I've gained a particular interest in computer graphics. In fact, so much so that I would love to pursue a job that is closely related to computer graphics in the near future.
                </p>
                <p>
                Thanks to my game design minor, I also had the opportunity to combine the very technical aspects of computer science with art! I have always been a very artistic person and I absolutely didn't want to let my talents go to waste, which is why I am very interested in creating games. It perfectly combines the mathematical and logical aspects of computer science with art, something that is very hard to find in professional fields. 
                </p>
                <p>  
                When it comes to programming, one of my competences is my ability to learn new programming languages and softwares very quickly. Before applying to my major, I had no previous knowledge in coding. However, it only took me a couple of months to finally catch up to the standards of the classes I was taking, and even exceeded other students in my program.
                </p>
            </div>
        </div>

        <div class="education">

            <div class="edu-grid">
            <h3> Education </h3>
            <div class="edu-color">
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
                        <li>Computer Graphics - COMP 371 </li>
                        <li>Databases - COMP 353 </li>
                        <li>Advanced Program Design with C++ - COMP 345 </li>
                    </ul>  
                </div>

                <div class="taking">
                    <p class="cs-title">
                        <u> Courses I am currently taking OR going to take this year</u>
                    </p>
                    <p>
                        Relevant courses:
                    </p>
                    <ul>
                        <li>Introduction to Game Development - COMP 376</li>
                        <li>Numerical Methods</li>
                        <li>Advanced Game Development</li>
                        <p>
                            OR
                        </p>
                        <li>Computer Vision</li>
                    </ul>  
                </div>
            </div> <!-- end of edu color class -->
            </div> <!-- end of edu-grid class -->

        <div class="learning">
            <div class="edu">
               <!-- <div>
                    Currently learning how to use:
                </div> -->
            </div>
            
        </div> <!-- end of learning class -->

        </div> <!-- end of education class -->

        


        <div class="skills">
            <h3>Skills</h3>
            <div class="edu">
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
                    <img src="static/cpp_logo.png" alt="C++ Logo" width="60" height="60">
                </div>
                <div class="lang">
                    <h4>C++:</h4> 
                    <p> Used C++ to create a recreation of the boardgame "PowerGrid" in my "Advanced Program Design with C++" class and to make a succesful Ray-Tracing program for my "Computer Graphics" class. Both projects of which I am very proud of.
                    </p>
                </div>
            </div>

            <div class="ski">
                <div class="icon">
                    <img src="static/javascript_logo.png" alt="JS Logo" width="60" height="60">
                </div>
                <div class="lang">
                    <h4>Javascript:</h4> 
                    <p>Used it for my web programming class and for the creation of the "Zorkemon" group project (which can be found on my github page), as well as the ConUHacks
                    API challenge sponsored by TouchTunes which my team and I have won! </p>
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

            <div class="sql">
                <div class="icon">
                    <img src="static/sql_logo.png" alt="SQL Logo" width="60" height="60">
                </div>
                <div>
                <h4>MySQL/SQL</h4> 
                </div>
            </div>

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

        <div class="ski">
            <div class="icon">
                <img src="static/opengl_logo.png" alt="OpenGL Logo" width="60" height="60">
            </div>
            <div class="lang">
                <h4>OpenGL:</h4> 
                <p> Used OpenGl to get first hand experience of Computer Graphics. Learned how
                    to use callback functions using the GLM library, how to implement vector and fragment shaders that can be modified in the graphics pipeline of the GPU, how to use VAOs, VBOs and EBOs, how to compute realistic lighting such as Phong and Gouraud lighting methods, and finally, I learned how to compute shadows and textures. 
                </p>
            </div>
        </div>

        <div class="ski">
            <div class="icon">
                <img src="static/processing_logo.png" alt="Processing Logo" width="60" height="60">
            </div>
            <div class="lang">
                <h4>Processing:</h4> 
                <p>Used this software for the making of my game "Chicken Rush"</p>
            </div>
        </div>

        <div class="ski">
            <div class="icon">
                <img src="static/blender_logo.png" alt="Blender Logo" width="60" height="60">
            </div>
            <div class="lang">
                <h4>Blender:</h4> 
                <p>3D modeling and animation software used for making my "Monster Bat" project</p>
            </div>
        </div>

        <div class="edu">
            <div>
                Web Development:
            </div> 
        </div>

        <div class="ski">
            <div class="icon">
                <img src="static/html_css_js_logo.png" alt="HTML Logo" width="80" height="60">
            </div>
            <div class="lang">
                <h4>HTML, CSS, Javascript:</h4> 
                <p>Fair amount of experience with these basic web development tools. For instance, I used them to make this website!</p>
            </div>
        </div>

        <div class="ski">
            <div class="icon">
                <img src="static/vue_logo.png" alt="Vue Logo" width="60" height="60">
            </div>
            <div class="lang">
                <h4>Vue.js:</h4> 
                <p>Used vue.js to make the frontend and UI of the "Zorkemon" project</p>
            </div>
        </div>

        <div class="ski">
            <div class="icon">
                <img src="static/php_logo.png" alt="PHP Logo" width="60" height="60">
            </div>
            <div class="lang">
                <h4>PHP:</h4> 
                <p>Used this language for my database project</p>
            </div>
        </div>

        <div class="edu">
            <div>
                Tools:
            </div>
        </div>

        <div class="group">
            <div class="git">
                <div class="icon2">
                    <img src="static/git_logo.png" alt="Git Logo" width="60" height="60">
                    <div>
                    <h4>Git</h4> 
                    </div>
                </div>
            </div>

            <div class="ruby">
                <div class="icon2">
                    <img src="static/ubuntu_logo.png" alt="Ubuntu Logo" width="60" height="60">
                    <div>
                    <h4>Bash (Ubuntu)</h4> 
                    </div>
                </div>
            </div>
        </div> <!-- end of group class -->

        </div> <!-- end of skills class -->


        <div class="projects">

            <div class="proj-header">
                <h3> Projects </h3>
                <p> I would like to share with you guys some interesting projects and things I've learnt over the years </p>
            </div>

        <div class="proj-1">
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
        </div> <!-- end of proj-1 class -->

        <div class="proj-2">
            <div class="proj">
                <img src="static/Chicken_Rush.PNG" alt="Chicken Rush Logo" width="480" height="270">
                <h4>Chicken Rush</h4>
                <p>(Made using Processing)</p>
            </div>

            <div>
                <p>
                This was my final project for my Computation Arts I class (CART 253). We were given complete creative freedom to create a game from scratch and this is what I chose to do. It is a competitive two player game where each player in the game plays as a very confused chicken desperately trying to survive by trying to find the most food as possible before the other. These chickens have absolutely no sense of orientation and constantly turn in circles until a player tells them to go in a given direction. However, the player needs to time the orientation of the chicken at the right moment to be able to get the correct angle towards a grain.
                </p>
                <p>
                How to play:
                </p>
                <img src="static/keyboard.png" alt="keys" width="448" height="152">
                <p>
                To control the white chicken you press "Shift" and to control the brown chicken you press the "Up" key.
                </p>
                <p>
                To win you have to eat the most seeds before the time is up. The more seeds, the more points you get.
                </p>
            </div>

        </div> <!-- end of proj-2 class -->

        </div> <!-- end of projects class -->

    

    </body>

</html>
