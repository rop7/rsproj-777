import { exec } from 'child_process';
import chalk from '/usr/local/lib/node_modules/chalk/source/index.js';

// Função para executar comandos do sistema
export const executeCommand = (command) => {
  return new Promise((resolve, reject) => {
    exec(command, (error, stdout, stderr) => {
      if (error) {
        reject(`Error: ${stderr}`);
      } else {
        resolve(stdout);
      }
    });
  });
};

// Função para criar o usuário principal
export const createMainUser = async (inquirer) => {
  const { username, password } = await inquirer.prompt([
    {
      type: 'input',
      name: 'username',
      message: 'Type the name of the main user:',
      validate: (input) => input.trim() !== '' || 'The username cannot be empty.'
    },
    {
      type: 'password',
      name: 'password',
      message: 'Type a password for the main user:',
      mask: '*',
      validate: (input) => input.trim() !== '' || 'The password cannot be empty.'
    }
  ]);

  console.log(chalk.blue(`Creating the main user @"${username}"...`));

  try {
    // Criar o usuário
    await executeCommand(`sudo /usr/sbin/useradd --shell /bin/bash -m ${username}`);

    // Definir a senha do usuário com sudo
    await executeCommand(`echo "${username}:${password}" | sudo chpasswd`);
    console.log(chalk.green(`@"${username}" successfully created!`));

    // Adicionar ao grupo sudo
    await executeCommand(`sudo usermod -aG sudo ${username}`);
    console.log(chalk.green(`@"${username}" successfully added to sudo group!`));
    
  } catch (error) {
    console.error(chalk.red(`Error: ${error}`));
    throw error;
  }

  return username;
};
