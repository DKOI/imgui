project "imgui"
    kind "StaticLib"
	language "C++"
    staticruntime "on"

   	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "*.cpp",
        "*.h",
    }

   	filter "system:windows"
		systemversion "latest"
		buildoptions "/MD"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
