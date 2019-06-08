project "imgui"
    kind "StaticLib"
	language "C++"

   	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "*.cpp",
        "*.h",
    }

   	filter "system:windows"
		systemversion "latest"
		staticruntime "On"
		buildoptions "/MD"
