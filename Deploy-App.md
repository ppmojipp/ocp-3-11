# Deploy Application
- oc new-app jboss-eap70-openshift:1.7~/tmp/nocontent --name=veda-web
- oc start-build veda-web --from-file=JavaVulnerableLab.war
