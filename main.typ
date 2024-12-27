#set page(paper:"a2")
#set text(size: 24pt)

#import "plotsy-3d.typ": *
#let xfunc(t) = 15*calc.cos(t)
#let yfunc(t) = calc.sin(t)
#let zfunc(t) = t


#figure(
  plot_3d_parametric_curve(
    xfunc,
    yfunc,
    zfunc,
    subdivisions:10,
    scale_dim: (0.03,0.05,0.05),
    tdomain:(0,10),
    axis_step: (5,5,5),
    dot_thickness: 0.05em,
    front_axis_thickness: 0.1em,
    front_axis_dot_scale: (0.04, 0.04),
    rear_axis_dot_scale: (0.08,0.08),
    rear_axis_text_size: 0.5em,
    axis_label_size: 1.5em,
    rotation_matrix: ((-2, 2, 4), (0, -1, 0)) 
  )
)



#let size = 10
#let scale_factor = 0.17
#let (xscale,yscale,zscale) = (0.3,0.3,0.05)
#let scale_dim = (xscale*scale_factor,yscale*scale_factor, zscale*scale_factor)  
#let func(x,y) = y*calc.sin(x) -x*calc.cos(y) 
#let color_func(x, y, z, x_lo,x_hi,y_lo,y_hi,z_lo,z_hi) = {
  return oklab(10%,((x - x_lo)/(x_hi))*100%,150%,60%)
}
#figure(
  plot_3d_surface(
    func,
    color_func: color_func,
    subdivisions: 1,
    subdivision_mode: "increase",
    scale_dim: scale_dim,
    xdomain: (-size,size),
    ydomain:  (-size,size),
    pad_high: (0,0,4),
    pad_low: (0,0,0),
    axis_step: (5,5,5),
    dot_thickness: 0.05em,
    front_axis_thickness: 0.1em,
    front_axis_dot_scale: (0.05,0.05),
    rear_axis_dot_scale: (0.08,0.08),
    rear_axis_text_size: 0.5em,
    axis_label_size: 1.5em,
  )
)




#let size = 5
#let scale_factor = 0.3
#let (xscale,yscale,zscale) = (0.3,0.3,0.05)
#let scale_dim = (xscale*scale_factor,yscale*scale_factor, zscale*scale_factor)  
#let func(x,y) = y*calc.sin(x) -x*calc.cos(y) 
#let color_func(x, y, z, x_lo,x_hi,y_lo,y_hi,z_lo,z_hi) = {
  return purple.transparentize(20%).darken((z/(z_hi - z_lo)) * 300%)
}

#figure(
  plot_3d_surface(
    func,
    color_func: color_func,
    subdivisions: 5,
    subdivision_mode: "increase",
    scale_dim: scale_dim,
    xdomain: (-size,size),
    ydomain:  (-size,size),
    pad_high: (0,0,3),
    pad_low: (0,0,0),
    axis_step: (3,3,3),
    dot_thickness: 0.05em,
    front_axis_thickness: 0.1em,
    front_axis_dot_scale: (0.05,0.05),
    rear_axis_dot_scale: (0.08,0.08),
    rear_axis_text_size: 1em,
    axis_label_size: 1.5em,
    axis_label_offset: (0.2,0.1,0.1),
    axis_text_offset: 0.045,
  )
)



#figure(
  plot_3d_surface(
    func,
    color_func: color_func,
    subdivisions: 2,
    subdivision_mode: "increase",
    scale_dim: scale_dim,
    xdomain: (-size,size),
    ydomain:  (-size,size),
    pad_high: (0,0,2),
    pad_low: (0,0,0),
    axis_step: (3,3,3),
    dot_thickness: 0.05em,
    front_axis_thickness: 0.1em,
    front_axis_dot_scale: (0.05,0.05),
    rear_axis_dot_scale: (0.08,0.08),
    rear_axis_text_size: 0.5em,
    axis_label_size: 1.5em,
    rotation_matrix: ((-2, 2, 3), (3, -5, 5)),
    axis_label_offset: (0.2,0.1,0.1),
    axis_text_offset: 0.045,
  )
)

#figure(
  plot_3d_surface(
    func,
    color_func: color_func,
    scale_dim: scale_dim,
    xdomain: (-size,size),
    ydomain:  (-size,size),
    pad_high: (0,0,3),
    pad_low: (0,0,0),
    axis_step: (3,3,3),
    dot_thickness: 0.05em,
    front_axis_thickness: 0.1em,
    front_axis_dot_scale: (0.05,0.05),
    rear_axis_dot_scale: (0.08,0.08),
    rear_axis_text_size: 0.5em,
    axis_label_size: 1.5em,
    rotation_matrix: ((1,0,0), (-1,1,1)),
    axis_label_offset: (0.1,0.1,0.1),
    axis_text_offset: 0.045,
  )
)

#let size = 5
#let scale_factor = 0.3
#let (xscale,yscale,zscale) = (0.3,0.3,0.005)
#let scale_dim = (xscale*scale_factor,yscale*scale_factor, zscale*scale_factor)  
#let func(x,y) = -calc.exp(x) + 20*calc.cos(y)

#figure(
  plot_3d_surface(
    func,
    subdivisions: 1,
    subdivision_mode: "increase",
    scale_dim: scale_dim,
    xdomain: (1,size),
    ydomain:  (-size,size),
    pad_high: (0,0,24),
    pad_low: (0,0,5),
    axis_step: (3,3,20),
    dot_thickness: 0.05em,
    front_axis_thickness: 0.1em,
    front_axis_dot_scale: (0.05,0.05),
    rear_axis_dot_scale: (0.08,0.08),
    rear_axis_text_size: 0.5em,
    axis_label_size: 1.5em,
  )
)

#let size = 10
#let scale_factor = 0.15
#let (xscale,yscale,zscale) = (0.3,0.3,0.005)
#let scale_dim = (xscale*scale_factor,yscale*scale_factor, zscale*scale_factor)  
#let func(x,y) = 10*x 

#figure(
  plot_3d_surface(
    func,
    subdivisions: 1,
    subdivision_mode: "increase",
    scale_dim: scale_dim,
    xdomain: (-size,size),
    ydomain:  (-size,size),
    pad_high: (0,0,0),
    pad_low: (0,0,5),
    axis_step: (3,3,75),
    dot_thickness: 0.05em,
    front_axis_thickness: 0.1em,
    front_axis_dot_scale: (0.05,0.05),
    rear_axis_dot_scale: (0.08,0.08),
    rear_axis_text_size: 0.5em,
    axis_label_size: 1.5em,
  )
)


#let size = 10
#let scale_factor = 0.15
#let (xscale,yscale,zscale) = (0.3,0.3,0.05)
#let scale_dim = (xscale*scale_factor,yscale*scale_factor, zscale*scale_factor)  
#let func(x,y) = x*x

#figure(
  plot_3d_surface(
    func,
    subdivisions: 1,
    subdivision_mode: "increase",
    scale_dim: scale_dim,
    xdomain: (-size,size),
    ydomain:  (-size,size),
    pad_high: (0,0,0),
    pad_low: (0,0,5),
    axis_step: (3,3,75),
    dot_thickness: 0.05em,
    front_axis_thickness: 0.1em,
    front_axis_dot_scale: (0.05,0.05),
    rear_axis_dot_scale: (0.08,0.08),
    rear_axis_text_size: 0.5em,
    axis_label_size: 1.5em,
  )
)

#let size = 10
#let scale_factor = 0.15
#let (xscale,yscale,zscale) = (0.3,0.3,0.005)
#let scale_dim = (xscale*scale_factor,yscale*scale_factor, zscale*scale_factor)  
#let func(x,y) = x*x + y*y
#let color_func(x, y, z, x_lo,x_hi,y_lo,y_hi,z_lo,z_hi) = {
  return purple.transparentize(20%).darken(50%).lighten((z/(z_lo - z_hi)) * 90%)
}
#figure(
  plot_3d_surface(
    func,
    color_func: color_func,
    subdivisions: 3,
    subdivision_mode: "decrease",
    scale_dim: scale_dim,
    xdomain: (-size,size),
    ydomain:  (-size,size),
    pad_high: (0,0,0),
    pad_low: (0,0,5),
    axis_step: (3,3,75),
    dot_thickness: 0.05em,
    front_axis_thickness: 0.1em,
    front_axis_dot_scale: (0.05,0.05),
    rear_axis_dot_scale: (0.08,0.08),
    rear_axis_text_size: 0.5em,
    axis_label_size: 1.5em,
  )
)
#figure(
  plot_3d_surface(
    func,
    color_func: color_func,
    subdivisions: 4,
    subdivision_mode: "increase",
    scale_dim: scale_dim,
    xdomain: (-size,size),
    ydomain:  (-size,size),
    pad_high: (0,0,0),
    pad_low: (0,0,5),
    axis_step: (3,3,75),
    dot_thickness: 0.05em,
    front_axis_thickness: 0.1em,
    front_axis_dot_scale: (0.05,0.05),
    rear_axis_dot_scale: (0.08,0.08),
    rear_axis_text_size: 0.5em,
    axis_label_size: 1.5em,
  )
)


