# Use a base image with Ansible installed
FROM ansible/ansible:stable

# Copy the Ansible playbook to the container
COPY wordpress.yml /ansible/wordpress.yml

# Run the Ansible playbook to deploy WordPress
RUN ansible-playbook /ansible/wordpress.yml 

# Install the required packages for adding a post to WordPress
RUN apt-get update && apt-get install -y curl

# Add a script that adds a post to WordPress every hour
COPY add-post.sh /ansible/add-post.sh
RUN chmod +x /ansible/add-post.sh

# Start the script when the container starts
CMD /scripts/add-post.sh



