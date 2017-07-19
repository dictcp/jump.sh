# jump.sh
a simple script for ssh to AWS EC2 nodes based on Name and Instance ID, with tab auto-completion

```bash
$ jump.sh stg-limestone- # pressing TAB
stg-limestone-api-0ce455a75    stg-limestone-api-060162c  stg-limestone-worker-0791deb1d  
```

# Setup
```bash
# please make sure you have awscli and jq installed
# macOS user can install them via brew install awscli jq

# clone it
git clone https://github.com/dictcp/jump.sh ~/.jumphost
echo '. ~/.jumphost/auto-completion.sh' >> ~/.bashrc # or .zshrc, depending which shell you use

# and please modify dev.apse1.sh to fit your environment
cd ~/.jumphost/generator.d
cp dev.apse1.example dev.apse1.sh
```

# Other similar projects
- https://github.com/grahamc/ish
- https://github.com/achiku/jungle
- https://github.com/devsisters/eclair
- https://github.com/mikery/ssh2ec2
- https://github.com/sonots/ec2-host
- https://github.com/Aadeshp/aws-ec2-ssh
- https://github.com/pmazurek/aws-fuzzy-finder
- https://github.com/hadesbox/aws-ec2-teleport
