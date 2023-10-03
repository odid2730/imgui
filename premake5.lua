project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    targetdir ( "bin/" .. outputdir )
    objdir ( "bin-int/" .. outputdir )

    files
    {
        "*.h",
        "*.cpp",
    }

    includedirs
    {
        ".",
    }

    filter "system:windows"
        files
        {
            "backends/imgui_impl_win32.h",
            "backends/imgui_impl_win32.cpp",
            "backends/imgui_impl_dx11.h",
            "backends/imgui_impl_dx11.cpp",
        }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"