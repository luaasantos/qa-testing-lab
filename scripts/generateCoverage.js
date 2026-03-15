const fs = require("fs")
const path = require("path")

// caminhos das pastas
const gherkinFolder = path.join(__dirname, "../02-casos-de-teste")
const automationFolder = path.join(__dirname, "../cypress/e2e")
const reportFolder = path.join(__dirname, "../test-coverage")

let totalScenarios = 0
let automatedTests = 0

// -----------------------------
// CONTAR CENÁRIOS GHERKIN
// -----------------------------

function countScenarios(folder) {

  const files = fs.readdirSync(folder)

  files.forEach(file => {

    const fullPath = path.join(folder, file)

    const stat = fs.statSync(fullPath)

    if (stat.isDirectory()) {

      countScenarios(fullPath)

    } else if (file.endsWith(".feature")) {

      const content = fs.readFileSync(fullPath, "utf8")

      const matches = content.match(/Scenario:/g)

      if (matches) {
        totalScenarios += matches.length
      }

    }

  })

}

// -----------------------------
// CONTAR TESTES AUTOMATIZADOS
// -----------------------------

function countAutomations(folder) {

  const files = fs.readdirSync(folder)

  files.forEach(file => {

    const fullPath = path.join(folder, file)

    const stat = fs.statSync(fullPath)

    if (stat.isDirectory()) {

      countAutomations(fullPath)

    } else if (file.endsWith(".cy.js")) {

      const content = fs.readFileSync(fullPath, "utf8")

      const matches = content.match(/it\(/g)

      if (matches) {
        automatedTests += matches.length
      }

    }

  })

}

// executar contagem
countScenarios(gherkinFolder)
countAutomations(automationFolder)

// calcular coverage
let coverage = 0

if (totalScenarios > 0) {
  coverage = ((automatedTests / totalScenarios) * 100).toFixed(2)
}

// conteúdo do relatório
const report = `
# Test Coverage Report

Total de cenários: ${totalScenarios}

Cenários automatizados: ${automatedTests}

Coverage de automação: ${coverage}%
`

// criar pasta se não existir
if (!fs.existsSync(reportFolder)) {
  fs.mkdirSync(reportFolder)
}

// salvar relatório
fs.writeFileSync(
  path.join(reportFolder, "coverage-report.md"),
  report
)

console.log("Coverage report gerado com sucesso!")