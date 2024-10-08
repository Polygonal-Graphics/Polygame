-- premake5.lua
workspace "Engine-Project"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "Test-App"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Core"
	include "Polygonal-Engine/Build-Core.lua"
group ""

include "Test-App/Build-App.lua"