# update-scala.sh
# updates to the latest version of scala and installs it to the system
# tested with Ubuntu 12.04 LTS
# repat<repat@repat.de>
# Oct2013

# Download latest file, you might want to change the address here
# Have a look at http://www.scala-lang.org/download/
wget http://www.scala-lang.org/files/archive/scala-2.10.3.tgz

# untar it
tar zxf scala-2.10.3.tgz

# move to the right folder
sudo mv scala-2.10.3 /usr/share/scalasudo rm /usr/bin/scala

# remove old binaries
sudo rm /usr/bin/scala
sudo rm /usr/bin/scalac
sudo rm /usr/bin/fsc
sudo rm /usr/bin/sbaz
sudo rm /usr/bin/sbaz-setup
sudo rm /usr/bin/scaladoc
sudo rm /usr/bin/scalap

# link new binaries
sudo ln -s /usr/share/scala/bin/scala /usr/bin/scala
sudo ln -s /usr/share/scala/bin/scalac /usr/bin/scalac
sudo ln -s /usr/share/scala/bin/fsc /usr/bin/fsc
sudo ln -s /usr/share/scala/bin/sbaz /usr/bin/sbaz
sudo ln -s /usr/share/scala/bin/sbaz-setup /usr/bin/sbaz-setup
sudo ln -s /usr/share/scala/bin/scaladoc /usr/bin/scaladoc
sudo ln -s /usr/share/scala/bin/scalap /usr/bin/scalap
