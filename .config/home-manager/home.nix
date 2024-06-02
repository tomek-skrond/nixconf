{ config, pkgs, ... }: {
	home = {
		username = "tomo";
		homeDirectory = "/home/tomo";
		stateVersion = "24.05";
		
		packages = with pkgs; [
			neofetch
			htop
		];
	};

	programs.bash = {
		enable = true;
		shellAliases= {
			rebuild = "sudo nixos-rebuild switch";
			sgit = "~/stiffgit.sh";
		};
	};

}
