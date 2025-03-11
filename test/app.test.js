// test/app.test.js
const chai = require('chai');
const chaiHttp = require('chai-http');
const app = require('../app'); // Make sure app.js exports the Express app

const expect = chai.expect;
chai.use(chaiHttp);

describe('GET /', () => {
  it('should return the home page with 200 status', (done) => {
    chai.request(app)
      .get('/')
      .end((err, res) => {
        expect(res).to.have.status(200);
        expect(res.text).to.include('Simple Application');
        done();
      });
  });
});
