if (unzip -v)
then
  echo "unzip already installed"
else
  echo "installing unzip"
  sudo apt install -y unzip
fi

if ($HOME/.deno/bin/deno --version)
then
  echo "deno already installed"
else
  echo "installing deno"
  curl -fsSL https://deno.land/install.sh | sh
fi