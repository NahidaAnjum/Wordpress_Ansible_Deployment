# Wordpress_Ansible_Deployment
This is a repo to deploy WordPress on AWS using EC2 running Linux using Ansible.

Includes following tasks:

• Writing an Ansible playbook that deploy WordPress on AWS using EC2 running Linux
• Assuming a fresh EC2 is already up and running, or start one from the playbook
• Make the WordPress site as High available as possible, using whatever AWS service we see fit.
• Assuming some/all AWS services are already started manually and running, or start/configuring them from within the playbook.
• If any manual operation is needed, updating in the comments the step-by-step details.
• Adding a Docker file, so that we can build a docker image and run your Ansible playbook on any machine as long as Docker is installed.
• Assuming it'll only be run from a Unix-like OS
• Finally Making the docker container add one post to the WordPress site every hour, as long as it runs.
 
