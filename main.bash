VERSION=$1

if [[ ! -d cache]]
then
  echo "Кеш не найден!"
  mkdir cache
fi

if [[ ! -f cache/mojang_$VERSION.jar ]]
then
  echo "Vanilla.jar Не найден!"
  curl -o cache/mojang-$VERSION.jar "http://91.239.148.132:1111/get?v=$VERSION"
fi

if [[ -f eula.txt ]]
then
  rm eula.txt
  touch eula.txt
  if [[ grep -q eula=false eula.txt ]]
  then
    echo "# Не изменяйте данный файл, если хотите что бы ваш сервер работал!" > eula.txt
    echo "eula=true" > eula.txt
  fi
  
else
  touch eula.txt
  if [[ grep -q eula=false eula.txt ]]
  then
    echo "# Не изменяйте данный файл, если хотите что бы ваш сервер работал!" > eula.txt
    echo "eula=true" > eula.txt
  fi
  
fi



