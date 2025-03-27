import RSp from "/usr/local/lib/node_modules/rsp-libjscript/src/index.js";
import inquirer from '/usr/local/lib/node_modules/inquirer/dist/esm/index.js';
import chalk from '/usr/local/lib/node_modules/chalk/source/index.js';
import { isFirstRun, isDevelopmentDeploy } from './fsUtils.mjs';
import { createMainUser, executeCommand } from './userUtils.mjs';
import { createSSHKeys, setRootPassword, addToSudoersNoPasswd } from './configUtils.mjs'; // Importar a nova função

const rsp = new RSp()

// Função para iniciar o processo
const main = async () => {

  console.log(chalk.bold.cyan('\n → Welcometo @RSp Linux/GNU \n'));

  try {

    const username = await createMainUser(inquirer);

    await createSSHKeys(username, inquirer);
    await setRootPassword(inquirer);

    // Perguntar se o usuário quer ser adicionado ao sudoers com NOPASSWD
    const { addSudoNoPasswd } = await inquirer.prompt([
      {
        type: 'confirm',
        name: 'addSudoNoPasswd',
        message: `Shell "${username}" be added to sudoers.d passwordless?`,
        default: false
      }
    ]);

    if (addSudoNoPasswd) {
      await addToSudoersNoPasswd(username);
    }

    console.log(chalk.green('Setup finished successfully!'));

    console.log(chalk.green(`Templating @${username} home directory...`));

    executeCommand(`sleep 3 && cd /home/${username} && rsp.projectRebrandir @NewUser ${username}`)

    console.log(chalk.green(`Removing firstRun state...`))

    executeCommand(`sudo rm -rf /var/.isFirstRun`)

    console.log(chalk.green("Disabling autologin..."))

    executeCommand(`sleep 3 && sudo rm -rf /etc/systemd/system/getty@tty1.service.d/override.conf`)
    executeCommand(`
	    sudo echo "[Service]" >> /etc/systemd/system/getty@tty1.service.d/override.conf
	    sudo echo "ExecStart=" >> /etc/systemd/system/getty@tty1.service.d/override.conf
	    sudo echo "ExecStart=-/sbin/agetty --nonewline --noissue --clear %I $TERM" >> /etc/systemd/system/getty@tty1.service.d/override.conf
   `)

    // console.log(chalk.green('Cleaning and upgrading system...'));
    // rsp.exec(`sleep 3 && sudo rsp.sys.superCleanup`)

  } catch (error) {
    console.error(chalk.red('Error: ' + error));
  }
};

main();

