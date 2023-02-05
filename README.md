# Wordpress_Ansible_Deployment
This is a repo to deploy WordPress on AWS using EC2 running Linux using Ansible.

Includes following tasks:

• Writing an Ansible playbook that deploy WordPress on AWS using EC2 running Linux

• Assuming a fresh EC2 is already up and running, or start one from the playbook.

• Make the WordPress site as High available as possible, using whatever AWS service we see fit.

• Assuming some/all AWS services are already started manually and running, or start/configuring them from within the playbook.

• If any manual operation is needed, updating in the comments the step-by-step details.

• Adding a Docker file, so that we can build a docker image and run your Ansible playbook on any machine as long as Docker is installed.

• Assuming it'll only be run from a Unix-like OS.

• Finally Making the docker container add one post to the WordPress site every hour, as long as it runs.
 
What is WordPress?
WordPress (WP, WordPress.org) is a free and open-source content management system (CMS) written in PHP and paired with a MySQL or MariaDB database. Features include a plugin architecture and a template system, referred to within WordPress as Themes.


What is AWS?
Amazon Web Services (AWS) is a subsidiary of Amazon providing on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered pay-as-you-go basis. These cloud computing web services provide a variety of basic abstract technical infrastructure and distributed computing building blocks and tools.


What is Ansible?
Ansible is an open-source software provisioning, configuration management, and application-deployment tool enabling infrastructure as code.It runs on many Unix-like systems, and can configure both Unix-like systems as well as Microsoft Windows.

What is Docker?
Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly.Docker provides the ability to package and run an application in a loosely isolated environment called a container. The isolation and security allows you to run many containers simultaneously on a given host. Containers are lightweight and contain everything needed to run the application, so you do not need to rely on what is currently installed on the host. You can easily share containers while you work, and be sure that everyone you share with gets the same container that works in the same way.

Steps To Install WordPress Using Ansible:
1. Prepare Workstation (where Ansible playbook will be created and run) by installing Ansible
2. Transfer workstation SSH public key to EC2 server so that workstation can do SSH to server.
   Test :
     ssh into the server from workstation
     ansible -i hosts -m ping -u ubuntu - try pinging server from workstation

3. Create Ansible Playbook "wordpress.yaml"
4. Create Ansible roles using Ansible galaxy for php, mysql, wordpress, server etc.
5. Run Ansible playbook - wordress.yaml
6. After successful run of ansible playbook, visit the IP of the server to continue setting up the wordpress site.
