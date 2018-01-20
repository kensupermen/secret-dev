import Vue from 'vue'
import axios from 'axios'

import { API_ENDPOINT } from '@/common/config'

const ApiServices = {
  return get (resource, slug = '') {
    axios.get(resource + '/' + slug)

  }
}

export default ApiServices;
