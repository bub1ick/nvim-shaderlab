" Vim syntax file
" Language: ShaderLab (Unity)
" Maintainer: bub1ick
" Depends on: hlsl.vim

if exists("b:current_syntax")
    finish
endif

syntax case match
syntax sync fromstart

" String
syntax region shaderlabString start=/"/ skip=/\\\\|\\"/ end=/"/

" Numbers
syntax match shaderlabNumber /\v[-+]?\d+(\.\d*)?([eE][-+]?\d+)?[fF]?/

" Properties
syntax match shaderlabProperty /\v\_[A-Za-z0-9_]+/

" Comments
syntax match shaderlabComment "//.*"
syntax region shaderlabComment start="\/\*" end="\*\/"

" Shader Commands
syntax keyword shaderlabCommand AlphaMask
syntax keyword shaderlabCommand Blend
syntax keyword shaderlabCommand BlendOp
syntax keyword shaderlabCommand ColorMask
syntax keyword shaderlabCommand Conservative
syntax keyword shaderlabCommand Cull
syntax keyword shaderlabCommand Offset
syntax keyword shaderlabCommand Stencil
syntax keyword shaderlabCommand ZClip
syntax keyword shaderlabCommand ZTest
syntax keyword shaderlabCommand ZWrite
syntax keyword shaderlabCommand CustomEditor CustomEditorForRenderPipeline
syntax keyword shaderlabCommand Fallback
syntax keyword shaderlabCommand LOD
syntax keyword shaderlabCommand UsePass
syntax keyword shaderlabCommand GrabPass
syntax keyword shaderlabCommand Name

" Shader Commands Values
syntax keyword shaderlabCommandValue Off On
syntax keyword shaderlabCommandValue True False
syntax keyword shaderlabCommandValue One Zero
syntax keyword shaderlabCommandValue SrcColor SrcAlpha
syntax keyword shaderlabCommandValue SrcAlphaSaturate
syntax keyword shaderlabCommandValue DstColor DstAlpha
syntax keyword shaderlabCommandValue OneMinusSrcColor OneMinusSrcAlpha
syntax keyword shaderlabCommandValue OneMinusDstColor OneMinusDstAlpha
syntax keyword shaderlabCommandValue Add Sub RevSub Min Max
syntax keyword shaderlabCommandValue LogicalClear LogicalSet
syntax keyword shaderlabCommandValue LogicalCopy LogicalCopyInverted
syntax keyword shaderlabCommandValue LogicalNoop
syntax keyword shaderlabCommandValue LogicalInvert
syntax keyword shaderlabCommandValue LogicalAnd LogicalNand
syntax keyword shaderlabCommandValue LogicalOr LogicalNor LogicalXor
syntax keyword shaderlabCommandValue LogicalEquiv
syntax keyword shaderlabCommandValue LogicalAndReverse LogicalAndInverted
syntax keyword shaderlabCommandValue LogicalOrReverse LogicalOrInverted
syntax keyword shaderlabCommandValue Multiply
syntax keyword shaderlabCommandValue Screen
syntax keyword shaderlabCommandValue Overlay
syntax keyword shaderlabCommandValue Darken
syntax keyword shaderlabCommandValue Lighten
syntax keyword shaderlabCommandValue ColorDodge ColorBurn
syntax keyword shaderlabCommandValue HardLight SoftLight
syntax keyword shaderlabCommandValue Difference
syntax keyword shaderlabCommandValue Exclusion
syntax keyword shaderlabCommandValue HSLHue HSLSaturation HSLColor HSLLuminosity
syntax keyword shaderlabCommandValue Back Front
syntax keyword shaderlabCommandValue Never Less Equal LEqual Greater NotEqual GEqual Always
syntax keyword shaderlabCommandValue Keep Zero Replace IncrSat DecrSat Invert IncrWrap DecrWrap

" Global Shader Block Names
syntax keyword shaderlabGlobalBlockName Shader

" Shader Block contents
syntax keyword shaderlabShaderBlockName nextgroup=shaderlabPropertiesBlock skipwhite skipempty Properties
syntax keyword shaderlabShaderBlockName nextgroup=shaderlabSubShaderBlock skipwhite skipempty SubShader

" SubShader Block Names
syntax keyword shaderlabSubShaderBlockName nextgroup=shaderlabTagsBlock skipwhite skipempty Tags
syntax keyword shaderlabSubShaderBlockName nextgroup=shaderlabPassBlock skipwhite skipempty Pass
syntax keyword shaderlabSubShaderBlockName nextgroup=shaderlabPackageRequirementsBlock skipwhite skipempty PackageRequirements

" Pass Block Names
syntax keyword shaderlabPassBlockName nextgroup=shaderlabTagsBlock skipwhite skipempty Tags
syntax keyword shaderlabPassBlockName nextgroup=shaderlabPackageRequirementsBlock skipwhite skipempty PackageRequirements

" Program Block Names
syntax include @HLSL syntax/hlsl.vim
syntax region shaderlabProgram matchgroup=shaderlabProgramBoundaries keepend contains=@HLSL start=/HLSLPROGRAM/ end=/ENDHLSL/
syntax region shaderlabProgram matchgroup=shaderlabProgramBoundaries keepend contains=@HLSL start=/HLSLINCLUDE/ end=/ENDHLSL/
syntax region shaderlabProgram matchgroup=shaderlabProgramBoundaries keepend contains=@HLSL start=/CGPROGRAM/ end=/ENDCG/
syntax region shaderlabProgram matchgroup=shaderlabProgramBoundaries keepend contains=@HLSL start=/CGINCLUDE/ end=/ENDCG/

" Properties block
"" Types
syntax keyword shaderlabPropertiesType Integer
syntax keyword shaderlabPropertiesType Int
syntax keyword shaderlabPropertiesType Float
syntax keyword shaderlabPropertiesType Range
syntax keyword shaderlabPropertiesType 2D
syntax keyword shaderlabPropertiesType 2DArray
syntax keyword shaderlabPropertiesType 3D
syntax keyword shaderlabPropertiesType Cube
syntax keyword shaderlabPropertiesType CubeArray
syntax keyword shaderlabPropertiesType Color
syntax keyword shaderlabPropertiesType Vector
"" Attributes
syntax keyword shaderlabPropertiesAttribute Gamma
syntax keyword shaderlabPropertiesAttribute HDR
syntax keyword shaderlabPropertiesAttribute HideInInspector
syntax keyword shaderlabPropertiesAttribute MainTexture
syntax keyword shaderlabPropertiesAttribute MainColor
syntax keyword shaderlabPropertiesAttribute NoScaleOffset
syntax keyword shaderlabPropertiesAttribute Normal
syntax keyword shaderlabPropertiesAttribute PerRendererData



highlight default link shaderlabComment Comment
highlight default link shaderlabString String
highlight default link shaderlabNumber Number

highlight default link shaderlabProperty Identifier
highlight default link shaderlabPropertiesType Type
highlight default link shaderlabPropertiesAttribute Constant
highlight default link shaderlabPropertiesAttributeBrackets Delimiter

highlight default link shaderlabCommand Function
highlight default link shaderlabCommandValue Constant

highlight default link shaderlabProgramBoundaries PreProc

highlight default link shaderlabGlobalBlockName Keyword
highlight default link shaderlabShaderBlockName Keyword
highlight default link shaderlabSubShaderBlockName Keyword
highlight default link shaderlabPassBlockName Keyword

let b:current_syntax = 'shaderlab'
