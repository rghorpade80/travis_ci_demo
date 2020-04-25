#! /usr/bin/env bash
  curl -s -X POST \    
   -H "Content-Type: application/json" \    
   -H "Accept: application/json" \    
   -H "Travis-API-Version: 3" \    
   -H "Authorization: token QyeG2ZWVDDE3ZN8newkR_w" \    
   -d '{ "quiet": true }' \    
   https://api.travis-ci.com/travis_ci_demo/161961364/debug
