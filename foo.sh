cd templates

find . -regextype egrep -regex '.*ya?ml$'|while read file; do
  # sed -i 's/: \s*['\''"]\{0\}\([^'\''"]*{{.*}}.*\)\s*$/: '\''\1'\''/' $file
  sed -i '/^\(\s*\)\({%-.*\)$/d' $file
done