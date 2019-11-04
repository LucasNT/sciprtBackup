

Script to create backup of files and folders

to execute run:
    ./geraBackup.sh <file> [file]

The script creates a .backup folder in the folder it was run in and stores the backup files in that folder. If the folder has 10 backups of a file it will delete the oldest

The backups will be named with the date time it was generated, in the format: fileName.yyyy\_MM\_dd\_hh\_mm\_ss


# Em portugues

Um script para criar backups.

Para executar o script:

    ./geraBackup.sh <file> [file]

O script cria um pasta .backup na pasta em que ele foi executado, todos os backups são salvos nessa pasta, se houver mais de 10 backups par aum arquivo ele vai excluir o mais velho.

O backup vai ser nomeado com a data em que foi gerado, no formato: filename.yyyy\_MM\_dd\_hh\_mm\_ss
