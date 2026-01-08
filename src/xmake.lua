add_rules("mode.debug", "mode.release")
add_rules("plugin.vsxmake.autoupdate")
add_requires("sfml 2.6.1")


target("Main")
	set_kind("binary")
	add_includedirs("Headers")
	add_files("*.cpp")
	add_packages("sfml")
	set_languages("c++17")
  after_build(function (target)
    os.cp("Resources", path.join(target:targetdir(), "Resources"))
  end)

