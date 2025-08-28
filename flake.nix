{
	description = "nixos config by alex";

	# Dependencies
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
		nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager/release-25.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { nixpkgs, nixpkgs-unstable, home-manager, nix-flatpak, ... }:
		let
			system = "x86_64-linux";
			pkgs = import nixpkgs {
				inherit system;
				config.allowUnfree = true;
			};
			pkgs-unstable = import nixpkgs-unstable {
				inherit system;
				config.allowUnfree = true;
			};
		in {
		
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			inherit system;
			specialArgs = {
				inherit pkgs-unstable system;
			};
			modules = [
				./nixos/configuration.nix

				home-manager.nixosModules.home-manager

				{
					home-manager.useGlobalPkgs = true;
					home-manager.useUserPackages = true;
					home-manager.extraSpecialArgs = {
						inherit pkgs-unstable;
					};

					home-manager.users.alex = import ./home-manager/home.nix;
				}
			];
		};
	};
}
