VERSION=$1

if [[ ! -d cache]]
then
  echo "Кеш не найден!"
  mkdir cache
fi

if [[ ! -f cache/mojang_$VERSION.jar ]]
then
  echo "Vanilla.jar Не найден!"
  curl -m 45 -L -O http://91.239.148.132:1111/get/$VERSION
  mv mojang_$VERSION.jar cache/mojang_$VERSION.jar
fi
