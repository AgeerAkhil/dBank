module.exports = {
  rpc: {
    host: "localhost",
    port: 8545
  },
  networks: {
    development: {
      host: "127.0.0.1", //localhost
      port: 8545,
      network_id: "*", // Match any network id
      from: "0xd96389bd9e340d3575b931291586b2ad9beccc7f",
      gas: 1800000
    }
  }
};