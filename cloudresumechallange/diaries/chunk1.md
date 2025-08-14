# Chunk 1: Building the frontend

* Step 1 , 2 , 3 : I am too lazy to create in HTML, CSS so I decided using ChatGPT to do my portfolio in VueJS
* Step 4: I create a S3 with following configuration:
    * Turn off Block all public access
        ![Result](./assets/c1_1.png)
    * Setup Bucket policy : allow all user access to bucket and itsobjects
    ![Result](./assets/c1_2.png)
    * Turn on "Static website hosting"
    ![Result](./assets/c1_3.png)
    * Access to link 
    ![Result](./assets/c1_5.png)
    * Result
    ![Result](./assets/c1_4.png)
* Step 5: Next, setup https dns 
    * Turn off "Static website hosting" due to security issue and wewant to use Cloudfront as our public access link
    * Create Cloudfront distribution, choose S3 as the Origin path
    ![Result](./assets/c1_6.png)
    ![Result](./assets/c1_7.png)
    ![Result](./assets/c1_8.png)
    ![Result](./assets/c1_9.png)
    * Remember to set Default root object or you will get "Access Denied"
    ![Result](./assets/c1_10.png)
    * Result
    ![Result](./assets/c1_11.png)
    * Next configures domain in cloudfront
    ![Result](./assets/c1_12.png)
    ![Result](./assets/c1_13.png)
    * Create record alias to Cloudfront
    ![Result](./assets/c1_14.png)
    * Result
    ![Result](./assets/c1_15.png)

* Advanced: 
    