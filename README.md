# interview-buster

## Concept
This is meant to be an interview pre-screen exercise for systems/devops engineers.

This is a LAMP image provisioned by Chef.  It queries the database and serves up content.  You'll notice that there are tags associated with broken states in the repo; this is intentional.  Check out a tag and let an interview candidate hack away and fix it.  

Hopefully this is a more useful screening than asking arbitrary questions.  I'm not sure if this is the correct approach, but I agree with the concept and think most candidates would view it as a fun exercise.  Depending on level, this should take approximately one hour to complete.

You can easily visualize one possible solution with `git diff`.  This is by design.

## Getting Started
The simplest way to get started is to check out master, and run `kitchen converge`, then `kitchen login` to your ChefDK spun up Vagrant instance.

## Proposed Approaches
### Take-home (recommended)
*   Checkout a tag and upload to your chef server
*   Spin up an AWS instance using knife with the [ec2 plugin](https://github.com/chef/knife-ec2)
*   Email candidate ssh key and public IP

### On-site
Note: You will want to ensure that a candidate does not exit the machine, go to the git repo, etc.
*   Checkout a tag and `kitchen converge`
*   `kitchen login`

## Contributing
It would be awesome if people contributed broken scenarios.

## Final Notes
The bash history has timestamps added; use this as a resource for evaluting a candidate's critical thinking process.

## License
MIT License
