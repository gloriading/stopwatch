
const laps = {
  create (params) {
    return fetch(
      `${base_url}/api/v1/laps`,
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
