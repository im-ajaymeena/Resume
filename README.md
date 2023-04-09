# Find my resume here

[Resume_AjayMeena.pdf](https://github.com/im-ajaymeena/Resume/releases/download/untagged-74012c21b772e7e0a121/Ajay_Meena_Resume.pdf)



# CI/CD Resume with Docker

### Running locally
- Steps to run
    ``` 
    git clone https://github.com/im-ajaymeena/Resume.git 
    cd Resume 
    docker compose up 
    ```
- resume.tex file is being continuously monitored and any change in it triggers latexmk command <br />  to generate updated PDF. This is being done with ```latex\monitor.sh```

<br />

### Continuous Deployment
- `push` on main branch create release attached with pdf coresponding to latex tex file in main

- `push` on develop branch create artifact of pdf coresponding to latex tex file in develop