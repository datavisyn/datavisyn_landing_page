# Datavisyn Landing Page 
was originally forked by the phovea_landing_page 

The landing page makes the following:
1. creates a static app page (app.datavisyn.io) and lists all applications configured as environment variables with PHOVEA_APP_<NAME>
2. make proxy forwards for all of the apps (configured by the environment variables PHOVEA_APP_<NAME>)
3. creates a proxy forward for wiki.datavisyn.io (routes to wiki:8100)
4. creates certificates for all of the applications and wiki with certbot

Is now used in our gcloud infrastructure

To use it, please do the following:
1. Login to the gcloud docker with: docker login (or use the right docker config file)
2. Build the image with the right tag: docker build -t <IMAGE-TAG-NAME> . (f.e. gcr.io/app-cluster-205012/github-datavisyn-datavisyn_landing_page)
3. Push the image to the gcloud container registry: docker push <IMAGE-TAG-NAME>