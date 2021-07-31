import http from 'k6/http';
import { sleep } from 'k6';

export let options = {
  duration: "2s"
};

export default function () {
  http.get("http://letrasflamencas.es/lyrics/13940")
}
