function benchmark_shells
	for i in sh bash zsh fish
         echo $i
         time $i -c exit
    end
end
