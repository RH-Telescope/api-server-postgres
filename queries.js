const PG_USER = process.env.PG_USER;
const PG_HOST = process.env.PG_HOST;
const PG_DB = process.env.PG_DB;
const PG_PW = process.env.PG_PW;
const Pool = require('pg').Pool
const pool = new Pool({
  user: PG_USER,
  host: PG_HOST,
  database: PG_DB,
  password: PG_PW,
  port: 5432,
})

const getDomains = (request, response) => {
  pool.query('SELECT description FROM domain', (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getCapabilities = (request, response) => {
  pool.query('SELECT description FROM capability', (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getFlags = (request, response) => {
  pool.query('SELECT description FROM flag', (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getAll = (request, response) => {
  pool.query('select domain.description as domain, capability.description as capability from domain,capability where domain.id = capability.domain_id', (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}



module.exports = {
  getDomains,
  getCapabilities,
  getFlags,
  getAll
}
