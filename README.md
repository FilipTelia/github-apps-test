# github-apps-test
This is a repository used to explore and test an implementation of Github Apps
for the purpose of authenticating and authorizing to gain access to multiple Github repos from a server
without having to use multiple keys for authentication.

Github Actions is used to test it. The workflow is located in .github/workflows/main.yml

The Ruby script "generate-jwt.rb" in .github/ is used by the workflow to generate a JSON Web Token.

To test if the authentication and authorization is successful, the workflow lists all the repos the app has access to and then clones a private repo that it has access to. 
