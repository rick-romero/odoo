#!/bin/bash 
OPT=$1
echo "=== INITIALIZING ==="
case $OPT in
  -p|-P) 
	echo "Installing Python dependencies"
	sudo apt-get -y install python-dev 
	sudo apt-get -y install python-yaml 
	sudo apt-get -y install python-feedparser
	sudo apt-get -y install python-geoip
	sudo apt-get -y install python-imaging
	sudo apt-get -y install python-pybabel
	sudo apt-get -y install python-unicodecsv
	sudo apt-get -y install wkhtmltopdf 
	sudo apt-get -y install libxml2-dev
	sudo apt-get -y install libxmlsec1-dev
	sudo apt-get -y install python-argparse
	sudo apt-get -y install python-Babel 
	sudo apt-get -y install python-cups
	sudo apt-get -y install python-dateutil
	sudo apt-get -y install python-decorator
 	sudo apt-get -y install python-docutils
	sudo apt-get -y install python-feedparser
	sudo apt-get -y install python-gdata
	sudo apt-get -y install python-gevent
	sudo apt-get -y install python-greenlet
	sudo apt-get -y install python-Jinja2
	sudo apt-get -y install python-libxslt1
	sudo apt-get -y install python-lxml
	sudo apt-get -y install python-Mako
	sudo apt-get -y install python-MarkupSafe
	sudo apt-get -y install python-mock
	sudo apt-get -y install python-openid
	sudo apt-get -y install python-passlib
	sudo apt-get -y install python-psutil
	sudo apt-get -y install python-psycopg2
	sudo apt-get -y install python-pychart
	sudo apt-get -y install python-pydot
	sudo apt-get -y install python-pyparsing
	sudo apt-get -y install python-pyPdf
	sudo apt-get -y install python-ldap
	sudo apt-get -y install python-yaml
	sudo apt-get -y install python-reportlab
	sudo apt-get -y install python-requests
	sudo apt-get -y install python-simplejson
	sudo apt-get -y install python-six
	sudo apt-get -y install python-tz
	sudo apt-get -y install python-unittest2
	sudo apt-get -y install python-vatnumber
	sudo apt-get -y install python-vobject
	sudo apt-get -y install python-webdav
	sudo apt-get -y install python-Werkzeug
	sudo apt-get -y install python-wsgiref
	sudo apt-get -y install python-xlwt
	sudo apt-get -y install python-zsi
	sudo apt-get -y install python-dev
	sudo apt-get -y install libpq-dev
	sudo apt-get -y install poppler-utils
	sudo apt-get -y install python-pdftools
	sudo apt-get -y install antiword
	#sudo apt-get -y install pyboleto
	#sudo apt-get install build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev
	echo "Installing PIP dependencies"  
	sudo apt-get install python-pip
	sudo apt-get install python-setuptools
	sudo pip install pyserial==2.7
	sudo pip install psycogreen==1.0
	sudo pip install pyusb==1.0.0b1
	sudo pip install qrcode==5.0.1
	sudo pip install Pillow==2.5.1
	sudo pip install boto==2.38.0
	sudo pip install oerplib==0.8.4
	sudo pip install jcconv==0.2.3
	sudo pip install pytz==2014.4
	sudo pip install odoorpc
	sudo pip install suds_requests
	sudo pip install unidecode
	sudo pip install pyboleto
	echo "Installing graphics dependencies"  
	sudo apt-get -y install xfonts-base xfonts-75dpi xfonts-encodings xfonts-utils 
	sudo apt-get -y install fontconfig fontconfig-config libexpat1 libfontconfig1 libfreetype6 libjbig0 
	sudo apt-get -y install libjpeg8 libpng12-0 libssl1.0.0 libx11-6 libx11-data libxau6 libxcb1
	sudo apt-get -y install libxdmcp6 libxext6 libxfont1 libfontenc1 libxrender1 ttf-dejavu-core ucf x11-common
	sudo wget http://download.gna.org/wkhtmltopdf/0.12/0.12.2/wkhtmltox-0.12.2_linux-trusty-amd64.deb -P /tmp/wkhtmltopdf
	sudo dpkg -i /tmp/wkhtmltopdf/wkhtmltox-0.12.2_linux-trusty-amd64.deb
	sudo cp /usr/local/bin/wkhtmltopdf /usr/bin
	sudo cp /usr/local/bin/wkhtmltoimage /usr/bin
	;;
  -g|-G) 
	echo "Installing GitHub"
	sudo apt-get install git
	echo "Installing GitHub Dependecies"
	sudo git clone https://github.com/aricaldeira/geraldo --branch master /tmp/geraldo
	sudo python /tmp/geraldo/setup.py install
	sudo git clone https://github.com/rick-romero/PySPED --branch 8.0 --depth 1 /tmp/PySPED
	sudo python /tmp/PySPED/setup.py install
	sudo git clone https://github.com/rick-romero/pyxmlsec --branch master --depth 1 /tmp
	sudo python /tmp/pyxmlsec/setup.py install
	#sudo pip install pyxmlsec-0.3.0.tar.gz
	#sudo git clone https://github.com/aricaldeira/pyxmlsec --branch master /tmp
	#sudo python /tmp/pyxmlsec/setup.py install
	echo "=== DONE ==="
	;;
esac
