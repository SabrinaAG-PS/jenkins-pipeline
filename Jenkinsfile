/* // second fenkinsfile attempt
pipeline {
  agent { label "linux" }
  stages {
    stage("build") {
      steps {
        sh """
          docker build -t hello_there .
        """
      }  
    }
    stage("run") {
      steps {
        sh """
          docker run --rm hello_there
        """
      }  
    }
  }  
} */




/* first jenkinesfile attempt
node {    
      def app     
      stage('Clone repository') {               
             
            checkout scm    
      }     
      stage('Build image') {         
       
            app = docker.build("sabrinagps/jenkins-practice")    
       }     
      stage('Test image') {           
            app.inside {            
             
             sh 'echo "Tests passed"'        
            }    
        }     
       stage('Push image') {
                                                  docker.withRegistry('https://registry.hub.docker.com', 'git') {            
       app.push("${env.BUILD_NUMBER}")            
       app.push("latest")        
              }    
           }
        } */