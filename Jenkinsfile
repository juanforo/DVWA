node {
    def app

    stage('Preparation') {
        /* Let's make sure we have the repository cloned to our workspace */
        git "https://github.com/juanforo/DVWA.git"
    }

    stage('Build') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
        sh 'chmod +x main.sh'
        app = docker.build("juanforo/dvwa-test")
    }

    stage('Test') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a demo */
        sh 'phpunit dvwa/tests/test.php'
    }

    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("latest")
        }
    }
    
    stage('Deploy image') {
        /* . */
        /*docker.image('registry.hub.docker.com/juanforo/dvwa-test').withRun("-p 5000:80"){*/
        sh 'docker-compose up -d'
        /*input 'Do you want to terminate the instance?'*/
        /*}*/
    }
}
