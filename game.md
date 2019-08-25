
<html>
    <head>
        <title> Rose Dufresne </title>
        <script type="text/processing" data-processing-target="chicken">
            void setup() {
            size(200, 200);
            background(100);
            stroke(255);
            ellipse(50, 50, 25, 25);
            println('hello web!');
            }
        </script>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <div class="picture">
        
            <div> 
                <img src="Rose_Dufresne_img.jpg" alt="Rose Dufresne" width="300" height="300" style="border-radius: 300px;">
            </div>

            <div>
                <div class="name"> Rose Dufresne </div>
                    <div class="groupOf3">
                        <div class="cv"><a href="CV-english.pdf"> CV </a></div>
                        <div class="home"><a href="index.html"> Home </a></div>
                        <div class="projs"><a href="projects.html"> Projects </a></div>
                    </div>
            </div>
        </div>

        <canvas id="chicken"></canvas>
        <!-- <canvas id="chicken" data-processing-sources="chicken_rush.pde" width="640" height="480"></canvas> -->
        

    </body>

</html>
