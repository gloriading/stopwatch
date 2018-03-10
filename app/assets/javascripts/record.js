const base_url = "http://localhost:3000";

const records = {
  create (params) {
    return fetch(
      `${base_url}/api/v1/records`,
      {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(params)
      }
    )
    .then(res => res.json());
  }
};
