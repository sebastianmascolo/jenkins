pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn package --file Code/pom.xml'
            }
        }
    }
}
