curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x ./kops
sudo mv ./kops /usr/local/bin/

export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_DEFAULT_REGION=us-east-1

aws configure
aws iam-users
aws iam list-users
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_DEFAULT_REGION=us-east-1
export KOPS_STATE_STORE=s3://nodejs.k8s.demo.net

export NAME=
kops create cluster --zones us-east-1a,us-east-1b,us-east-1c ${NAME}
ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa
kops create secret --name ${NAME} sshpublickey admin -i ~/.ssh/id_rsa.pub
kops edit cluster ${NAME}
kops edit ig nodes
kops edit ig nodes --name ${NAME}
clear
kops edit ig nodes --name ${NAME}
kops edit ig InstanceGroup.kops.k8s.io  --name ${NAME}
kops edit ig nodes-us-east-2a  --name ${NAME}
history
kops edit ig nodes-us-east-1a  --name ${NAME}
kops edit ig nodes-us-east-1b  --name ${NAME}
kops edit ig nodes-us-east-1c  --name ${NAME}
kops get -ig --name ${NAME}
kops get ig --name ${NAME}

delete cluster 

kops delete cluster

following are the AWS policies very important while working with AWS cluster specially delete

EC2FullAccess
AmazonSQSFullAccess
IAMFullAccess
AmazonS3FullAccess
AmazonVPCFullAccess
AmazonRoute53FullAccess
AmazonEventBridgeFullAccess



export KOPS_STATE_STORE=s3://nodejs.k8s.demo.net
kops create cluster --cloud=aws --zones=us-east-1 --name=demo.k8s.atcin.net --dns-zone=atcin.net --dns private 
