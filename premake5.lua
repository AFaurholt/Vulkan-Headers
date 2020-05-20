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

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

		defines
		{
			"VK_USE_PLATFORM_WIN32_KHR"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"