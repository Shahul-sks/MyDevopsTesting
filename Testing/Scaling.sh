#!/bin/bash

echo "Selected country: $COUNTRY"

if [ "$COUNTRY" == "Algeria" ]; then
  echo "Scaling logic for Algeria"
  echo "Login to Cluster"
  # aws eks --region eu-central-1 update-kubeconfig --name employeeeks

  echo "Remove HPA"
  # /home/synergydev/kubectl delete horizontalpodautoscaler.autoscaling/dz-citizen-app-deployment

  echo "Creating HPA with max 200, min 150 pods"
  # /home/synergydev/kubectl autoscale deployment dz-citizen-app-deployment --cpu-percent=10 --min=150 --max=200

  echo "Refresh 1"
  # /home/synergydev/kubectl get hpa

elif [ "$COUNTRY" == "Morocco" ]; then
  echo "Scaling logic for Morocco"
  echo "Login to Cluster"
  # aws eks --region eu-central-1 update-kubeconfig --name employeeeks

  echo "Remove HPA"
  # /home/synergydev/kubectl delete horizontalpodautoscaler.autoscaling/citizen-emp-deployment

  echo "Creating HPA with max 300, min 180 pods"
  # /home/synergydev/kubectl autoscale deployment citizen-emp-deployment --cpu-percent=5 --min=180 --max=300

  echo "Refresh 1"
  # /home/synergydev/kubectl get hpa

elif [ "$COUNTRY" == "BChina" ]; then
  echo "Scaling logic for China"
  echo "Login to Cluster"
  # aws eks --region eu-central-1 update-kubeconfig --name employeeeks

  echo "Remove HPA"
  # /home/synergydev/kubectl delete horizontalpodautoscaler.autoscaling/bcn-citizen-app-deployment

  echo "Creating HPA with max 300, min 200 pods"
  # /home/synergydev/kubectl autoscale deployment bcn-citizen-app-deployment --cpu-percent=5 --min=200 --max=300

  echo "Refresh 1"
  # /home/synergydev/kubectl get hpa

elif [ "$COUNTRY" == "Prt_Morocco" ]; then
  echo "Scaling logic for Prt_Morocco"
  echo "Login to Cluster"
  # aws eks --region eu-central-1 update-kubeconfig --name employeeeks

  echo "Remove HPA"
  # /home/synergydev/kubectl delete horizontalpodautoscaler.autoscaling/pt-ma-citizen-app-deployment

  echo "Creating HPA with max 200, min 150 pods"
  # /home/synergydev/kubectl autoscale deployment pt-ma-citizen-app-deployment --cpu-percent=5 --min=150 --max=200

  echo "Refresh 1"
  # /home/synergydev/kubectl get hpa

elif [ "$COUNTRY" == "Ecuador" ]; then
  echo "Scaling logic for Ecuador"
  echo "Login to Cluster"
  # aws eks --region eu-central-1 update-kubeconfig --name employeeeks

  echo "Remove HPA"
  # /home/synergydev/kubectl delete horizontalpodautoscaler.autoscaling/ec-citizen-app-deployment

  echo "Creating HPA with max 80, min 40 pods"
  # /home/synergydev/kubectl autoscale deployment ec-citizen-app-deployment --cpu-percent=5 --min=40 --max=80

  echo "Refresh 1"
  # /home/synergydev/kubectl get hpa

else
  echo "No valid country selected: $COUNTRY"
fi
