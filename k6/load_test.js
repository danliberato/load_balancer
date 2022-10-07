import http from 'k6/http';
import { check, sleep } from 'k6';

export const options = {
  stages: [
    { duration: '10s', target: 5 },
    { duration: '5m', target: 5 },
  ],
};

export default function () {
    let res = http.get("http://0.0.0.0:80"); // local's LB
  if(res.status == 200){
    console.log(res.json('message'))
  }else{
    console.log("Error | status =" + res.status);
  }
  sleep(1);
}