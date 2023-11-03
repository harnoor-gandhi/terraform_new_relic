const { GraphQLClient, gql } = require('graphql-request');
 
const apiUrl = 'https://api.newrelic.com/graphql';
const apiKey = 'NRAK-XLXC0VARGPD5LYO06XW5Z1LO214';
 
const query = gql`
  {
    actor {
      account(id: 4183933) {
        q1: nrql(query: "select * from SystemSample") {
          results
        }
        q2: nrql(query: "select * from Metric") {
          results
        }
      }
    }
  }
`;
 
const headers = {
  'API-Key': apiKey,
};
 
const client = new GraphQLClient(apiUrl, { headers });
 
client
  .request(query)
  .then((data) => {
    const account = data.actor.account;
 
    if (account.q1 && account.q1.results) {
      console.log('Query 1 results:', account.q1.results);
    } else {
      console.log('Query 1 results not available');
    }
 
    if (account.q2 && account.q2.results) {
      console.log('Query 2 results:', account.q2.results);
    } else {
      console.log('Query 2 results not available');
    }
  })
  .catch((error) => {
    console.error('Error:', error);
  });
 