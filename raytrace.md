
<html>
    <head>
        <meta charset="UTF-8">
        <title> PowerGrid Project </title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <div class="picture">
        
            <div> 
                <img src="static/RayTrace.bmp" alt="Ray-Trace" width="480" height="270">
            </div>

            <div>
                <div class="name-proj"> PowerGrid Board Game Project </div>
                    <div class="groupOf3">
                        <div class="cv"><a href="CV-english.pdf"> CV </a></div>
                        <div class="home"><a href="index.html"> Home </a></div>
                        <div class="projs"><a href="projects.html"> Projects </a></div>
                    </div>
            </div>

        </div>

        <div class="description">
            <p>
                Computer Graphics (COMP 371) final project
            </p>
            <div class="info">
                GLM library and Cimg needed: ..\CImg_latest\CImg-2.5.5;..\glm;%(AdditionalIncludeDirectories)
            </div>
            <p>
                Thanks to scratchapixel, I was able to do this project
            </p>
            <p>
                https://www.scratchapixel.com/code.php?id=11&origin=/lessons/3d-basic-rendering/ray-tracing-polygon-mesh
            <br>
                https://www.scratchapixel.com/lessons/3d-basic-rendering/ray-tracing-rendering-a-triangle/barycentric-coordinates
            </p>

            <div class="code">
                <p>
                    //method that computes color of objects depending on whether or not there is intersection with ray
                <br>
                    glm::vec3 cast_ray(glm::vec3 rayorig, glm::vec3 &raydir, 
	                vector &#60 shared_ptr &#60 Object &#62 &#62 objects,
	                vector &#60 Light &#62 &lights, Camera *cam)
                </p>
            </div>
            <div class="code">
                <p>
                    //assigns the minimum point of intersection
                <br>
                    bool trace(glm::vec3 origin, glm::vec3 direction, 
	                vector &#60 shared_ptr &#60 Object &#62 &#62 objects, float &tmin, int &index, shared_ptr &#60 Object &#62 &object)
                </p>
            </div>
            <div class="code">
                <p>
                    //renderer
                <br>
                    void render(vector &#60 shared_ptr &#60 Object &#62 &#62 &objects, vector &#60 Light &#62 &lights, Camera *camera)
                </p>
            </div>
            <div class="code">
                <p>
                    //renderer
                <br>
                    void render(vector &#60 shared_ptr &#60 Object &#62 &#62 &objects, vector &#60 Light &#62 &lights, Camera *camera)
                </p>
            </div>
            <div class="code">
                <p>
                    //read scene file
                <br>
                    void render(vector &#60 shared_ptr &#60 Object &#62 &#62 &objects, vector &#60 Light &#62 &lights, Camera *camera)
                </p>
            </div>
            <div class="code">
                <p>
                    //computes if there is a point of intersection with the ray
                <br>
                    bool Sphere::intersect(const glm::vec3 &rayorig, const glm::vec3 &raydir, float &t, int &index) {
                </p>
            </div>
        </div>


    </body>

</html>
