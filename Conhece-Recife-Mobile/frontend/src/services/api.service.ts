import axios from "axios";

const baseURL = "http://localhost:3000";
const APIService = {
  getPlace() {
    return axios.get(`${baseURL}/lugares`);
  },
  getPartner() {
    return axios.get(`${baseURL}/parceiros`);
  },
  //    postLogin(email, senha){
  //      return axios.post(`${baseURL}/auth/login`,{email,senha })
  //}
};

export default APIService;
