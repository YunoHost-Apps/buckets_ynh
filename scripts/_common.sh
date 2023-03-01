#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="nim libressl3.1-libcrypto sqlite-dev libsodium-static libsodium musl-dev"

#=================================================
# PERSONAL HELPERS
#=================================================

function build_buckets {
	pushd "$final_path"
		chown -R $app:$app $final_path
		sudo -u $app env "PATH=$final_path/nim-installation/bin:$(sudo -u $app sh -c 'echo $PATH')" nimble install -y --depsOnly --verbose
		sudo -u $app env "PATH=$final_path/nim-installation/bin:$(sudo -u $app sh -c 'echo $PATH')" nim c -o:brelay -d:relaysingleusermode -d:release src/brelay 2>&1
		chown -R root:root $final_path
	popd
}

function set_permissions {
	chown -R root:$app $final_path
	chmod -R g=u,g-w,o-rwx $final_path
	setfacl -n -m u:www-data:--x $final_path
	setfacl -nR -m u:www-data:r-x -m d:u:www-data:r-x $final_path
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
