function la --wraps=ls --description 'List contents of directory, including hidden files in directory using long format'
    exa -la --group-directories-first $argv
end
