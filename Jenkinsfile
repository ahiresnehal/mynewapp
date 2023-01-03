pipeline {
                          agent any
                            environment {  
                            registry = "docker.io/snehalahire123" 
                            registryCredential = 'dockerhub' 
                             dockerImage = ''
                                                 }
            stages {
                         stage('Hello') {
                                     steps {
                                               echo 'Hello World'
                                               }
                                               }
                         stage('git clone') {
                                              steps {
                                         git credentialsId: 'github', url: 'https://github.com/ahiresnehal/mynewapp.git'
                                                        }
                                                        }
            
        stage('Docker Build and Tag') {
                                              steps {
                                                   //sh 'docker build -t nginxt:1.2 .' 
                                                     //sh 'docker build -t demo2:latest .' 
                                                     //sh 'docker tag demo2 snehalahire123/demo2:1.2'
                                                     //sh 'docker tag nginxte snehalahire123/nginxte:$BUILD_NUMBER'
                                                
                                                sh 'docker build -t mynewapp .'
                                                 sh 'docker tag mynewapp snehalahire123/mynewapp'
                                                 //sh 'docker tag mynewapp snehalahire123/mynewapp:$BUILD_NUMBER'
                                                       }
                                                       }
        stage('Publish image to Docker Hub') {
                                                          steps {
                                                             withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
                                                             sh 'docker push snehalahire123/mynewapp'
                                                              //sh 'docker push snehalahire123/mynewapp:$BUILD_NUMBER' 
                                                              }
                                                              }
                                                              }
       /* stage('deploy to rancher') {
                                       steps {
                                        script{  
                                                 sh 'docker pull snehalahire123/my-nginx-image:latest'
                                                 sh 'docker images'
                                                 sh 'ls'
                                                
                                                 }
                                                 }
                                                 }*/
  }
  }
