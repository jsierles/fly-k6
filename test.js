import http from 'k6/http';
import { sleep } from 'k6';

export let options = {
  duration: "10s",
  vus: __ENV.VUS || 1
};

export default function () {
  http.get(__ENV.URL)
}
