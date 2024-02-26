if (unzip -v)
then
  echo "unzip already installed"
else
  echo "installing unzip"
  sudo apt install -y unzip
fi

if (deno -V)
then
  echo "deno already installed"
else
  echo "installing deno"
  curl -fsSL https://deno.land/install.sh | sh
fi

if (which deno)
then 
  echo "deno already installed"
else
  echo "installing deno"
  sudo cp $HOME/.deno/bin/deno /usr/local/bin/
fi

if (screen -ls | grep server)
then
  echo "webserver already running"
else 
  echo "starting webserver in a screen"
  screen -S server -d -m deno run --allow-net server.ts
fi