pushd D:\apache-tomcat-6.0.39\bin
move "D:\apache-tomcat-6.0.39\webapps\hello-world.war" "F:\\apachebackup\\hello-world-%date:~10,4%%date:~7,2%%date:~4,2%-%time:~0,2%%time:~3,2%.war"
PING localhost -n 15 >NUL
Xcopy C:\Users\sgp\.jenkins\workspace\hello-world_pipeline\target\hello-world.war D:\apache-tomcat-6.0.39\webapps

