
<html>
    <head>
        <meta charset="UTF-8">
        <title> RayTracer Project </title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <div class="picture">
        
            <div> 
                <img src="static/RayTrace.bmp" alt="Ray-Trace" width="480" height="270">
            </div>

            <div>
                <div class="name-proj"> Ray-Tracing Project </div>
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

            <div class="heading">
                cast_ray:
            </div>
            <p>
                Method that computes color of objects depending on whether or not there is intersection with ray. Returns a vector (glm::vec3) for the color.
            </p>
            <p>
                Parameters:
            <br>
                <ul style="list-style-type:none;">
                <li>rayorig : glm::vec3
                    <ul style="list-style-type:none;">
                    <li>This is the ray's point of origin from the camera's position.</li>
                    </ul>
                </li>
                <li>raydir : glm::vec3
                    <ul style="list-style-type:none;">
                    <li>This is the ray's direction. A vector in computer graphics needs both it's point of origin (rayorig) and it's direction (raydir) or else it could be situated anywhere in the world space.</li>
                    </ul>
                </li>
                <li>objects : vector&#60;shared_ptr&#60;Object&#62;&#62;
                    <ul style="list-style-type:none;">
                    <li>A vector of pointers to objects that are stored in the memory. Objects include Spheres, Planes and Meshes. </li>
                    </ul>
                </li>
                <li>lights : vector&#60;shared_ptr&#60;Light&#62;&#62;
                    <ul style="list-style-type:none;">
                    <li>A vector of pointers to lights that are stored in the memory. There can possibly be multiple lights. </li>
                    </ul>
                </li>
                <li>cam : Camera* 
                    <ul style="list-style-type:none;">
                    <li>A pointer to a camera that is stored in the memory. It is safe to assume there is only one camera. </li>
                    </ul>
                </li>
                </ul>  
            </p>
            <div class="code">
                <p>
                    glm::vec3 surfaceColor = glm::vec3(0); //default initial color
	            <br>  
                    shared_ptr#60;Object#62; hitObject = nullptr; //target object
	            <br>
                    int index = 0;
                <br>
                <br>
	                float tmin; //the closest point of intersection from ray origin to object
                <br>
	                //computing the colors produced by the ray on an object (with light)
	            <br>    
                    if (trace(rayorig, raydir, objects, tmin, index, hitObject)) {
		        <br>    
                    //itterate through all the lights
		        <br>    
                    for (int i = 0; i < lights.size(); i++) {
                <br>
                <br>           
			        glm::vec3 phit = rayorig + raydir * tmin; //point hit in parametric form (p0 +dt)
			    <br>    
                    glm::vec3 nhit = glm::normalize(hitObject-#62;getNormal(phit, index)); //normal of the point hit (normal calculation is different between planes and spheres)
			    <br>    
                    glm::vec3 view_direction = glm::normalize(cam-#62;getPosition() - phit); //camera view direction
			    <br>    
                    glm::vec3 lightDirection = glm::normalize(lights[i].getPosition() - phit); //light direction vector
                <br>
                <br>
			        //computing shadows (similar calculation of trace)
			    <br>   
                    float tshadow = INFINITY;
                <br>
                    float bias = 1e-8; //add bias
			    <br>    
                    shared_ptr#60;Object#62; objectShadow = nullptr;
                <br>
                <br>
			        //if object is not in shadow, compute surface color normally using Phong
			    <br>    
                    if ((!trace(phit + nhit * bias, -lightDirection, objects, tshadow, index, objectShadow)) || (hitObject == objectShadow)) {
				<br>
                <br>
				    surfaceColor += ComputePointLight(lights[i], nhit, phit, view_direction, lightDirection, hitObject);
                <br>
                <br>
			        }
                <br>
                    else //just the ambient color of an object if object IS in shadow
				<br>    
                    surfaceColor = hitObject-#62;getAmb();
		        <br>    
                    }
	            <br>    
                    }
                <br>
                <br>
	                //resulting color
	            <br>    
                    return surfaceColor;
                </p>
            </div>
            <div class="code">
                <p>
                    //assigns the minimum point of intersection
                <br>
                    bool trace(glm::vec3 origin, glm::vec3 direction, 
	                vector&#60;shared_ptr&#60;Object&#62;&#62;objects, float &tmin, int &index, shared_ptr&#60;Object&#62;&object)
                </p>
            </div>
            <div class="code">
                <p>
                    //renderer
                <br>
                    void render(vector&#60;shared_ptr&#60;Object&#62;&#62;&objects, vector&#60;Light&#62;&lights, Camera *camera)
                </p>
            </div>
            <div class="code">
                <p>
                    //renderer
                <br>
                    void render(vector&#60;shared_ptr&#60;Object&#62;&#62;&objects, vector&#60;Light&#62;&lights, Camera *camera)
                </p>
            </div>
            <div class="code">
                <p>
                    //read scene file
                <br>
                    void render(vector&#60;shared_ptr&#60;Object&#62;&#62;&objects, vector&#60;Light&#62;&lights, Camera *camera)
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
