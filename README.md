# github-apps-test
This is a repository used to explore and test an implementation of Github Apps
for the purpose of authenticating and gaining access to multiple Github repos from a server
without having to use multiple keys for authentication.

Github Actions is used to test the authentication processes. The workflow is located in .github/workflows/main.yml

The script generate-jwt.rb in .github/ is used by the workflow to generate a JSON Web Token.

To test if the authentication is successful, the workflow lists all the repos the App has access to and then clones a private repo that it has access to. 
