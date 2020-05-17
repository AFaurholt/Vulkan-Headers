project "vulkan"
	kind "None"
	language "C"

    targetdir 	("bin/" .. outputdir .. "/%{prj.name}")
	objdir 		("bin-obj/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/vulkan/**.h",
		"include/vulkan/**.hpp",
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"