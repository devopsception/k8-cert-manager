# Cert-Manager slim

This cert-manager allows you to quickly deploy nginx service and required certificated for you to be able to access the backends on secure channel. However, this installation module is in vanilla state and can be customized according to needs.

> Installation checklist

* If you're initializing this repo as submodule in a parent project directory you need to run the following command:
  
  ```
  git submodule update --init
  ```

* Once that is out of the way you can leverage Makefile to instruct how you want to install cert manager which are mentioned as follows:

    * Run following command to pull and install nginx in kub-system namespace
  
        ```
        make install-nginx
        ```
    * Run following command to pull and install cert-manager in default namespace

        ```
        make install-cert-manager
        ```
    * while ingress controller is allocating a static public ip for your loadbalancer you can obtain a domain name if not already been obtained.
  
    * Once an IP is assigned use DNS to bind it with the domain.

    * Now there are two ingress available:

        * stagging
        * production
    * Based on your requirement you may select either one of them, with an exception that stagging uses 'fake' CA to sign certificates.
  
    * Run the following commands to complete the installation

        * Stagging

            ```
            make install-stag
            ```
        * Production

            ```
            make install-prod
            ```
    * wait couple of seconds for the certificate to validate and that should work.

