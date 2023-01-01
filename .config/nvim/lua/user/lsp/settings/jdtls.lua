local os_name = vim.loop.os_uname().sysname
local config = {}

if os_name == "Linux" then
	local home = os.getenv("HOME")
	config = {
		cmd = {
			"java",
			"-Declipse.application=org.eclipse.jdt.ls.core.id1",
			"-Dosgi.bundles.defaultStartLevel=4",
			"-Declipse.product=org.eclipse.jdt.ls.core.product",
			"-Dlog.protocol=true",
			"-Dlog.level=ALL",
			"-Xms1g",
			"--add-modules=ALL-SYSTEM",
			"--add-opens",
			"java.base/java.util=ALL-UNNAMED",
			"-jar",
			home
				.. "/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar",
			"-configuration",
			home .. "/.local/share/nvim/mason/packages/jdtls/config_linux/",
			"-data",
			"/tmp/.jdtls/workspace",
		},
		runtimes = {
			{
				name = "JavaSE-17",
				path = "/usr/lib/jvm/java-17-openjdk/",
			},
		},
		root_dir = vim.fs.dirname(vim.fs.find({ ".gradlew", ".git", "mvnw" }, { upward = true })[1]),
	}
elseif os_name == "Windows_NT" then
	local home = os.getenv("UserProfile")
	config = {
		cmd = {
			"C:/Program Files/Semeru/jdk-17.0.5.8-openj9/bin/java",
			"-Declipse.application=org.eclipse.jdt.ls.core.id1",
			"-Dosgi.bundles.defaultStartLevel=4",
			"-Declipse.product=org.eclipse.jdt.ls.core.product",
			"-Dlog.protocol=true",
			"-Dlog.level=ALL",
			"-Xms1g",
			"-jar",
			home ..
				"/AppData/Local/nvim-data/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar",
			"-configuration", home .. "/AppData/Local/nvim-data/mason/packages/jdtls/config_win",
			"--add-modules=ALL-SYSTEM",
			"--add-opens",
			"java.base/java.util=ALL-UNNAMED",
			"-data", home .. "/mework"
		},
		root_dir = vim.fs.dirname(vim.fs.find({ ".gradlew", ".git", "mvnw" }, { upward = true })[1]),
	}
end

return config
