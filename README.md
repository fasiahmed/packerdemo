# packerdemo
Create an AMI using packer and Provision with ansible

# Deploy command
packer build -var-file var.json packer.json
    - if you want to run in debug [ option -debug  ]
    - if you don't want the output in color [ option -color=false ]
