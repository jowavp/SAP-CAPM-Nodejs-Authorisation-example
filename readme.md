# SAP CAP Nodejs Authorisation example
## Create new project in web IDE
The project is based on a template for cloud foundry named: SAP Cloud Platform Business application.
## Define the service
In the srv folder we will define our service. 
I've created a service.cds file and we will add some custom implementation for this service in the service.js file. 
The service.cds file and the service.js file are in the same directory, but the service.cds file will only find the service.js file if we add an @impl annotation.

    @impl:'../service.js'

## XSUAA service
A XSUAA service is added to the mta.yaml file.
In this file we describe the scopes that we will use in our application.
These scopes are linked to role-templates that we can later link to the user via role-collection in our subaccount.
## Approuter
The service created in the srv folder has it's own url. But when we access this url, we will not add authentication to our service. To enable logon to the service we have to add an approuter that will proxy our service, but it will add authentication. 
When we request the url that is exposed by the approuter, we will be redirected to the IDP logon page, we can authenticate, we receive a JWT token from the XSUAA service and this token will be forwarded to our service to authenticate our user in the service.
