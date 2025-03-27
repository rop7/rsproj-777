// configUtils.mjs

import { exec } from 'child_process';
import fs from 'fs'
import chalk from '/usr/local/lib/node_modules/chalk/source/index.js';
import { createMainUser, executeCommand } from './userUtils.mjs';

export const createSSHKeys = async (username, inquirer) => {
  const { createSSH } = await inquirer.prompt([
    {
      type: 'confirm',
      name: 'createSSH',
      message: `Do you whish to create SSH Keys for "${username}"?`,
      default: true
    }
  ]);

  if (createSSH) {
    console.log(chalk.blue(`Creating SSH Keys for "${username}"...`));
    try {
      // Use a função executeCommand corretamente importada
      await executeCommand(`su - ${username} -c "yes | ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa"`);
      console.log(chalk.green('SSH Keys successfully created!'));
    } catch (error) {
      console.error(chalk.red('Error: ' + error));
    }
  }
};

// Função para definir a senha do root
export const setRootPassword = async (inquirer) => {
  const { setPassword } = await inquirer.prompt([
    {
      type: 'confirm',
      name: 'setPassword',
      message: 'Do you whish define a password for @root?',
      default: false
    }
  ]);

  if (setPassword) {
    const { password } = await inquirer.prompt([
      {
        type: 'password',
        name: 'password',
        message: 'Type a password for @root:',
        mask: '*',
        validate: (input) => input.trim() !== '' || 'Passowrd cannot be empty.'
      }
    ]);

    try {
      await executeCommand(`echo "root:${password}" | sudo chpasswd`);
      console.log(chalk.green('@root passowrd successfully defined!'));
    } catch (error) {
      console.error(chalk.red('Error: ' + error));
    }
  }
};

// Função para adicionar o usuário ao sudoers.d com NOPASSWD
export const addToSudoersNoPasswd = async (username) => {
  const sudoersFilePath = `/etc/sudoers.d/${username}`;
  
  try {
    // Criar o arquivo do sudoers com a configuração NOPASSWD
    const config = `${username} ALL=(ALL) NOPASSWD: ALL\n`;
    fs.writeFileSync(sudoersFilePath, config, { mode: 0o440 }); // Permissões seguras para o arquivo
    console.log(chalk.green(`@"${username}" successfully added to sudoers.d passwordless!`));
  } catch (error) {
    console.error(chalk.red('Error: ' + error));
  }
};


