# Firebase Auth - Wiresafe

## Development 

```sh
 $ git clone http://github.com/wiresafe/firebase-auth
 
 $ cd firebase-auth
```
## build and deploy locally with docker
 
 
```sh
 $ sh build.sh
 
 Sending build context to Docker daemon  15.58MB
 Step 1/2 : FROM nginx
  ---> b8efb18f159b
 Step 2/2 : ADD public/ /usr/share/nginx/html
  ---> 85fa40954d13
 Successfully built 85fa40954d13
 Successfully tagged gcr.io/wiresafe-project/firebase-auth:latest
 
 $ sh start.sh
 
 e726ba56564e94d4f62e0ad8b72f133015d38062f8390989bf1a040484a16850
 
 // open http://localhost:8080
 
```

## kubernetes deployment

```bash
$ kubectl apply -f deploy/

namespace "firebase-auth" configured
deployment "firebase-auth" configured
service "firebase-auth" configured
ingress "firebase-auth" configured

```

## Signup/login

```bash
$ open http://auth.wiresafe.com
```

When a user account is created and/or logged in, a callback is fired with the following (see user.json)

```json
{
    "uid": "WZwzngM0uDdP3V19JSEYCDgjGqr2",
    "displayName": "Dave Duran",
    "photoURL": "https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg",
    "email": "dave@wiresafe.com",
    "emailVerified": true,
    "phoneNumber": null,
    "isAnonymous": false,
    "providerData": [
        {
            "uid": "100177425307025666716",
            "displayName": "Dave Duran",
            "photoURL": "https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg",
            "email": "dave@wiresafe.com",
            "phoneNumber": null,
            "providerId": "google.com"
        }
    ],
    "apiKey": "AIzaSyBvhn...",
    "appName": "[DEFAULT]",
    "authDomain": "wiresafe-project.firebaseapp.com",
    "stsTokenManager": {
        "apiKey": "AIzaSyBv...",
        "refreshToken": "APRrRCKVW....",
        "accessToken": "eyJhbGciOi...",
        "expirationTime": 1504063423730
    },
    "redirectEventId": null
}
```