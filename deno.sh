if (deno -V)
then
  echo "deno already installed"
else
  echo "installing deno"
  sudo snap install deno
fi

if (screens -list)
then
  echo "screen already installed"
else
  echo "installing screen"
  sudo apt install -y screen
fi


if (test -d fresh-project)
then
  echo "fresh-project already created"
else
  echo "creating fresh-project"
  deno run -A -r https://fresh.deno.dev  ./fresh-project --tailwind --vscode
fi
  
if (screen -ls | grep fresh)
then 
  echo "fresh already running"
else
  echo "starting fresh-project"
  pushd fresh-project && screen -S fresh -d -m deno task start && popd
fi

# cd routes 

# if (echo "$(pwd -L)" = "/home/ubuntu/deno.test/fresh-project/routes")
# then
#   echo "inside the right directory you may continue"
# else
#   echo "changing to correct directory"
#   cd home/ubuntu/deno.test/fresh-project/routes
# fi

# echo "export default function AboutPage() {
#   return (
#     <main>
#       <h1>About</h1>
#       <p>FUCK YOU NODE.</p>
#     </main>
#   );
# }" >> .routes/About.tsx

# echo "creating dynamic routes"

# echo "you will be directed to http://localhost:8000/greet/... enter text after:greet/ to see it printed on webpage"

# # xdg-open http://localhost:8000/greet

echo "http://$(hostname -I | tr -d ' '):8000"

echo "hit ctrl+c to close terminal prompt screen"

