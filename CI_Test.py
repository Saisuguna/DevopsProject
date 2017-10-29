from requests.auth import HTTPBasicAuth
import argparse
import requests
import jenkins
from bs4 import BeautifulSoup

server = jenkins.Jenkins('http://localhost:8080',username = 't.saisuguna', password = 'Jenkins@3d')

job_name = ''

def get_status():
	jobs = server.get_jobs()

	if not job_name == '':
		for job_instance in jobs:
			if(job_instance['name'] == job_name):
				test_CI(job_name)

	else:
		for job_instance in jobs:
			test_CI(job_instance['name'])

def test_CI(jobname):
	print ("_________________________")
	print ('\n Job Name: %s' % (jobname))
	print ("_________________________")
	result_xml = server.get_job_config(jobname)
	soup = BeautifulSoup(result_xml, "xml")

	# Getting the job's XML file
	url = "http://localhost:8080/job/" + jobname + "/api/xml"
	resp = requests.get(url, auth=HTTPBasicAuth('t.saisuguna', 'Jenkins@3d'))
	soup = BeautifulSoup(resp.content, "xml")
	builds = soup.find_all('build')
	counter = 0
	
	# Checking if the job has been built atleast once before proceeding
	if len(builds) > 0:
		
		for build in builds:
			
			# Counter used to check the total number of builds
			counter = counter+1
			
			# Checking XML files of each build
			url = "http://localhost:8080/job/" + jobname +"/"+ build.find('number').string +"/api/xml"
			resp = requests.get(url, auth=HTTPBasicAuth('t.saisuguna', 'Jenkins@3d'))
			soup = BeautifulSoup(resp.content, "xml")
			building = soup.find('building')
			
			if building:
				
				print("\n Build number: " + soup.find('number').string)
				rep_url = soup.find('remoteUrl')
				
				if rep_url:
					print(" Repository URL: " + rep_url.string)
					rep_kind = soup.find('kind')
					print (" Repository kind: " + rep_kind.string)
				else:
					print (" No repository")

				# Checking to see if the build has completed
				if building.string == 'false':
					
					marked = soup.find('marked')
					if marked:
						branches = marked.find_all('branch')
						print (" Branches: " )
						for branch in branches:
							print(" "+branch.find('name').string+"\n")
						result = soup.find('result')
						print (" Result: " + result.string)

					else:
						result = soup.find('result')
						print(" Result: " + result.string)
					# If build is running, then this code will run
				else:
					print(" Build is still running")
		else:
			print(" No build performed on this job")
	print ("\n Total number of builds: ", counter)

def main():
	parser = argparse.ArgumentParser()
	parser.add_argument('job_name', nargs ='?', help='Job Name')
	args = parser.parse_args()
	global job_name
	if args.job_name:
		job_name = args.job_name
	get_status()

if __name__ == "__main__": main()
