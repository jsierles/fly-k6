import http from 'k6/http';
import { sleep } from 'k6';

export let options = {
  duration: "10s"
};

export default function () {
  http.get("https://cookherenow.com")
}
