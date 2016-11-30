#include "hc.hpp"
#include "grid_launch.hpp"
using namespace hc;

extern "C"
__attribute__((always_inline)) void _Z7DoHADD216grid_launch_parmPiS0_S0_(const grid_launch_parm _lp, const int *  _in1d, const int *  _in2d, int *  _outd);
namespace
{
struct _Z7DoHADD216grid_launch_parmPiS0_S0__functor
{
_Z7DoHADD216grid_launch_parmPiS0_S0__functor(const grid_launch_parm_cxx x_lp, const int *  _in1d, const int *  _in2d, int *  _outd) :
_in1d(_in1d), _in2d(_in2d), _outd(_outd){
_lp.grid_dim.x = x_lp.grid_dim.x;
_lp.grid_dim.y = x_lp.grid_dim.y;
_lp.grid_dim.z = x_lp.grid_dim.z;
_lp.group_dim.x = x_lp.group_dim.x;
_lp.group_dim.y = x_lp.group_dim.y;
_lp.group_dim.z = x_lp.group_dim.z;
_lp.dynamic_group_mem_bytes = x_lp.dynamic_group_mem_bytes;
}
void operator()(tiled_index<3>& i) __attribute((hc))
{
_Z7DoHADD216grid_launch_parmPiS0_S0_(_lp, _in1d, _in2d, _outd);
}
grid_launch_parm_cxx _lp; const int *  _in1d; const int *  _in2d; int *  _outd; 
};
}
extern "C"
void __hcLaunchKernel__Z7DoHADD216grid_launch_parmPiS0_S0_(grid_launch_parm_cxx _lp, const int *  _in1d, const int *  _in2d, int *  _outd)
{
if(!_lp.av) {
  static accelerator_view av = accelerator().get_default_view();
  _lp.av = &av;
}

completion_future cf;
completion_future* cf_ptr = _lp.cf ? _lp.cf : &cf;
*cf_ptr = parallel_for_each(*(_lp.av),extent<3>(_lp.grid_dim.z*_lp.group_dim.z,_lp.grid_dim.y*_lp.group_dim.y,_lp.grid_dim.x*_lp.group_dim.x).tile_with_dynamic(_lp.group_dim.z, _lp.group_dim.y, _lp.group_dim.x, _lp.dynamic_group_mem_bytes), 
_Z7DoHADD216grid_launch_parmPiS0_S0__functor(_lp, _in1d, _in2d, _outd));

}

extern "C"
__attribute__((always_inline)) void _Z9FuncHADD216grid_launch_parmPiS0_S0_(const grid_launch_parm _lp, const int *  _in1d, const int *  _in2d, int *  _outd);
namespace
{
struct _Z9FuncHADD216grid_launch_parmPiS0_S0__functor
{
_Z9FuncHADD216grid_launch_parmPiS0_S0__functor(const grid_launch_parm_cxx x_lp, const int *  _in1d, const int *  _in2d, int *  _outd) :
_in1d(_in1d), _in2d(_in2d), _outd(_outd){
_lp.grid_dim.x = x_lp.grid_dim.x;
_lp.grid_dim.y = x_lp.grid_dim.y;
_lp.grid_dim.z = x_lp.grid_dim.z;
_lp.group_dim.x = x_lp.group_dim.x;
_lp.group_dim.y = x_lp.group_dim.y;
_lp.group_dim.z = x_lp.group_dim.z;
_lp.dynamic_group_mem_bytes = x_lp.dynamic_group_mem_bytes;
}
void operator()(tiled_index<3>& i) __attribute((hc))
{
_Z9FuncHADD216grid_launch_parmPiS0_S0_(_lp, _in1d, _in2d, _outd);
}
grid_launch_parm_cxx _lp; const int *  _in1d; const int *  _in2d; int *  _outd; 
};
}
extern "C"
void __hcLaunchKernel__Z9FuncHADD216grid_launch_parmPiS0_S0_(grid_launch_parm_cxx _lp, const int *  _in1d, const int *  _in2d, int *  _outd)
{
if(!_lp.av) {
  static accelerator_view av = accelerator().get_default_view();
  _lp.av = &av;
}

completion_future cf;
completion_future* cf_ptr = _lp.cf ? _lp.cf : &cf;
*cf_ptr = parallel_for_each(*(_lp.av),extent<3>(_lp.grid_dim.z*_lp.group_dim.z,_lp.grid_dim.y*_lp.group_dim.y,_lp.grid_dim.x*_lp.group_dim.x).tile_with_dynamic(_lp.group_dim.z, _lp.group_dim.y, _lp.group_dim.x, _lp.dynamic_group_mem_bytes), 
_Z9FuncHADD216grid_launch_parmPiS0_S0__functor(_lp, _in1d, _in2d, _outd));

}
