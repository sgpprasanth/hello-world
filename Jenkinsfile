node {
         stage('checkout') {
           
             git 'https://github.com/sgpprasanth/hello-world.git'
			 
        }
        
        stage('compile package') {
    // define maven home jinto veriable 
    
      def mavenHome =tool name: 'Maven', type: 'maven'
      // set the maven path to bin directory and execute command
        bat "${mavenHome}/bin/mvn  package"
      }
        stage(' deploy to tomcat server'){
		steps{
                bat 'move "F:\\apache-tomcat-7.0.82\\webapps\\hello-world.war" "F:\\apachebackup\\hello-world-%date:~10,4%%date:~7,2%%date:~4,2%-%time:~0,2%%time:~3,2%.war"'
		bat 'timeout 15'
		bat 'Xcopy C:\\Users\\sgp\\.jenkins\\workspace\\hello-world_pipeline\\target\\hello-world.war F:\\apache-tomcat-7.0.82\\webapps'
		}
        }
      
      stage('Email Notification') {
    // some block
         mail bcc: '', body: '''Hi There,

            Hello-world pipeline job compiled and packaged successfully

            Thanks''', cc: '', from: '', replyTo: '', subject: 'Hello-world pipeline code', to: 'somisetty.prasanth@gmail.com'

    
      }
         
     
}
