if [ -z $1 ]
then
  PHPUNIT=phpunit.phar
else
  PHPUNIT=phpunit-$1.phar
fi

wget https://phar.phpunit.de/$PHPUNIT

if [ -f "$PHPUNIT" ]
then 
  phpdbg -qrr $PHPUNIT tests --configuration tests/phpunit.xml 
else
  echo $PHPUNIT not found
  exit 1
fi
