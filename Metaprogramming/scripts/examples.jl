using SymbolicGA

@macroexpand @ga 3 x::1 ⟇ y::2

x = rand(3)
y = rand(3)
@ga 3 x::1 ⟇ y::2

#-

using SPIRV: Vec3, Vec4, Mutable, @fragment
using Swizzles: @swizzle

struct FragmentData
  color::Vec3
  alpha::Float32
end

function fragment_shader!(color::Mutable{Vec4}, data::FragmentData)
  @swizzle color.rgb = data.color
  @swizzle color.a = data.alpha
end

shader = @fragment fragment_shader!(
  ::Mutable{Vec4}::Output,
  ::FragmentData::PushConstant
)
