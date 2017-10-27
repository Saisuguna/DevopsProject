import sys
import urllib
import urllib3
from bs4 import BeautifulSoup
jenkinsUrl = "http://localhost:2085"
if len( sys.argv ) > 1 :
    jobName = sys.argv[1]
    jobNameURL = urllib.quote(jobName)
    jenkinsStream   = urllib3.urlopen( jenkinsUrl + jobNameURL + "/lastBuild/api/xml" )
    soup = BeautifulSoup(jenkinsStream, "xml")
    result = soup.find_all('result')
    print(result.string)

