import fs from 'fs';

// Caminho do arquivo que indica a primeira execução
const firstRunFile = '/var/.isFirstRun',
      developmentDeployFile = '/var/.isDevelopmentDeploy';

// Verificar se o arquivo existe
export const isFirstRun = () => fs.existsSync(firstRunFile);
export const isDevelopmentDeploy = () => fs.existsSync(developmentDeployFile)
