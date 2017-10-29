ls
pwd
ls
cd /etc
ls
ls -lrt | grep -i py
uname -a
uname
cd code
wget https://github.com/tsaisuguna/Python.git
wget -O https://github.com/tsaisuguna/Python.git
echo "# Python" >> README.md
sudo echo "# Python" >> README.md
echo "# Python" >> README.md
sudo su -
logout
locale
cd /etc
ls
ls -lrt | grep -i env
vi environment
su -
sudo su -
logout
locale
cd /etc
ls -lrt | grep -i env
vi environment
locale
sudo su -
locale
yum install language
su -
sudo su -
ls
systemctl status tomcat
clear
systemctl stop tomact
sudo su -
cd /etc
ls
ls -lrt 
ls -lrt | grep -i jen
cd ..
cd
ls
pwd
history
sudo su -
l
ls
pwd
ls
ls
awscli
aws
sudo su -
ls
l
ls
clear
python --version
boto --version
aws
pip install boto
pip instal boto
pip install boto
sudo pip install boto
sudo su -
ls
cd /home
ls
cd ec2-user
ls
sudo su -
xi
ls
history
sudo su -
python --version
which python3
python3 -V
yum install pip
sudo su -
ls
sud su -
sudo su -
ls
python --version
pip --version
git init
echo "# DevopsProject" >> README.md
git init
git add README.md
git commit -m "first commit"
git config --global user.name "t.saisuguna@gail.com"
git config --global user.name "sai suguna"
git config --global user.email "t.saisuguna@gmail.com"
git commit -m "first commit"
git remote add origin https://github.com/Saisuguna/DevopsProject.git
git push -u origin master
ls
pwd
touch CI_Test1.py
chmod 755 CI_Test1.py
vi CI_Test1.py
git add .
git push -m "second"
git push --all "second"
git comit -m "second"
git commit -m "second"
git remote add https://github.com/Saisuguna/DevopsProject.git
git remote add origin https://github.com/Saisuguna/DevopsProject.git
git push -u origin master
ls
python CI_Test1.py
pip install BeautifulSoup4
python CI_Test1.py
ls
jenkins --version
jenkins -version
ls
java -version
mvn -version
cd ..
mkdir pipeline
git clone import hudson.model.*
def jobsToDelete = []
// For each project
for(item in Hudson.instance.items) {
  // check that job is not building
    if (item.scm instanceof hudson.plugins.git.GitSCM) {  
      println("Item name: " + item.name);
      item.scm.repositories.each {
        println("Repo " + it.name);
        it.URIs.each {uri ->
          println("URI: " + uri.toString());
          item.scm.branches.each {
            println("Branch " + it.name);
            // Skip empty/regex branch definitions
            if (it.name.length() != 0 && it.name.indexOf("*") > -1) {
              // Use git ls-remote to verify branch existence
              def command = "git ls-remote --heads " + uri + " " + it.name
              def sout = new StringBuffer(), serr = new StringBuffer()
              Process proc = command.execute()
              proc.consumeProcessOutput(sout, serr)
              proc.waitFor()               println("SOUT: " + sout)
              if (sout.size() == 0) {
                println("Branch does not exist")
                jobsToDelete << item
              }
            }
          

        }

      }
    }
  }
  else {
    println("Skipping job "+item.name+", currently building")
  }
}

jobsToDelete.each {
  println("Job to delete: " + it.name)
  it.delete()
}

git clone https://github.com/Saisuguna/PipelineTest.git
exit
sudo su -
exit
mvn -version
ls
cd /
ls
cd root
mvn -version
sudo su -
ls
sudo su -
pwd
mvn -version
sudo su -
ls
touch CI_Test.py
chmod 755 CI_Test.py
l
ls
vi CI_Test.py
python CI_test.py
python CI_Test.py
vi CI_Test.py
python CI_Test.py
python 2085 CI_Test.py
python 8080 CI_Test.py
clear
python 8080 CI_Test.py
python CI_Test.py
sudo su -
ls
clear
ls
clear
ls
python CI_Test.py
find . / jenkins password
ls
cd /root/.jenkins/
sudo su -
ls
sudo su -
ls
python CI_Test.py
yum install jenkins
sudo su -
ls
history | grep -i jenkins
sudo su -
ls
mvn --version
mvn -version
history
history | grep -i bs4
history | grep -i bs
history | grep -i b
ls
mvn -version
mvn --version
mvn --verision
mvn -verision
sudo su -
