config="
if [ -f ~/.bash_aliases ]; then                                                                                                                                                    
. ~/.bash_aliases                                                                                                                                                          
fi 
"]

# ubuntuと違ってbash_aliases読み込みの項目がないのでbashrcに上書き

echo "$config" >>~/.bashrc
