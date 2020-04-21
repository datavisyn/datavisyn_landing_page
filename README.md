# Datavisyn Landing Page 

Is now used in our gcloud infrastructure

To use it, please do the following:
1. Login to the gcloud docker with: docker login (or use the right docker config file)
2. Build the image with the right tag: docker build -t <IMAGE-TAG-NAME> . (f.e. gcr.io/app-cluster-205012/github-datavisyn-datavisyn_landing_page)
3. Push the image to the gcloud container registry: docker push <IMAGE-TAG-NAME>