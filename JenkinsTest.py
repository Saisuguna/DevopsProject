import jenkins
server = jenkins.Jenkins('http://localhost:8080', username='jenkins', password='jenkins@3d')
user = server.get_whoami()
version = server.get_version()
print('Hello %s from Jenkins %s' % (user['fullName'], version))

