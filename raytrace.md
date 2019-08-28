
<html>
    <head>
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
            <pre>
                https://www.scratchapixel.com/code.php?id=11&origin=/lessons/3d-basic-rendering/ray-tracing-polygon-mesh

                https://www.scratchapixel.com/lessons/3d-basic-rendering/ray-tracing-rendering-a-triangle/barycentric-coordinates
            </pre>

            <div class="code">
                <pre>
                    //method that computes color of objects depending on whether or not there is intersection with ray

                    glm::vec3 cast_ray(glm::vec3 rayorig, glm::vec3 &raydir, 
	                vector&ltshared_ptr&ltObject&gt&gt objects,
	                vector&ltLight&gt &lights, Camera *cam)
                </pre>
            </div>
            <div class="code">
                <pre>
                    //assigns the minimum point of intersection

                    bool trace(glm::vec3 origin, glm::vec3 direction, 
	                vector&ltshared_ptr&ltObject&gt&gt objects, float &tmin, int &index, shared_ptr&ltObject&gt &object)
                </pre>
            </div>
            <div class="code">
                <pre>
                    //renderer

                    void render(vector&ltshared_ptr&ltObject&gt&gt &objects, vector&ltLight&gt &lights, Camera *camera)
                </pre>
            </div>
            <div class="code">
                <pre>
                    //renderer

                    void render(vector&ltshared_ptr&ltObject&gt&gt &objects, vector&ltLight&gt &lights, Camera *camera)
                </pre>
            </div>
            <div class="code">
                <pre>
                    //read scene file

                    void render(vector&ltshared_ptr&ltObject&gt&gt &objects, vector&ltLight&gt &lights, Camera *camera)
                </pre>
            </div>
            <div class="code">
                <pre>
                    //computes if there is a point of intersection with the ray

                    bool Sphere::intersect(const glm::vec3 &rayorig, const glm::vec3 &raydir, float &t, int &index) {
                </pre>
            </div>
        </div>


    </body>

</html>
