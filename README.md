# Build Resume CI/CD with Docker and Latex

### Running locally
- Steps to run
    ``` 
    git clone https://github.com/im-ajaymeena/Resume.git 
    cd Resume 
    docker compose up 
    ```
- resume.tex file is being continuously monitored and any change in it triggers latexmk command <br />  to generate updated PDF. This is being done with ```latex/monitor.sh```
- output resume would be at ```latex/output/resume.pdf```
<br />

### Continuous Deployment
- `push` on main branch create release attached with pdf coresponding to latex tex file in main

- `push` on develop branch create artifact of pdf coresponding to latex tex file in develop


# Check my resume

[AjayMeena_Resume.pdf](https://github.com/im-ajaymeena/Resume/releases/download/latest/AjayMeena_Resume.pdf)

<img src="https://github.com/im-ajaymeena/Resume/releases/download/latest/AjayMeena_Resume.jpg" alt="AjayMeena_Resume" width="773" height="1107">