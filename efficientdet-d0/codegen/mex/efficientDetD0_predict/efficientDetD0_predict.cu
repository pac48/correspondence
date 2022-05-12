//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// efficientDetD0_predict.cu
//
// Code generation for function 'efficientDetD0_predict'
//

// Include files
#include "efficientDetD0_predict.h"
#include "dlnetwork.h"
#include "efficientDetD0_predict_internal_types.h"
#include "efficientDetD0_predict_types.h"
#include "predict.h"
#include "rt_nonfinite.h"
#include "MWCudnnCustomLayerBase.hpp"
#include "MWCudnnTargetNetworkImpl.hpp"
#include "MWTensorBase.hpp"

// Variable Definitions
static efficientDetD0_coco0_0 efficientDetD0obj;
static boolean_T efficientDetD0obj_not_empty;

// Function Definitions
c_MWMultiplicationLayer_efficie::c_MWMultiplicationLayer_efficie()
{
}

l_MWMultiplicationLayer_efficie::l_MWMultiplicationLayer_efficie()
{
}

be_MWMultiplicationLayer_effici::be_MWMultiplicationLayer_effici()
{
}

ce_MWMultiplicationLayer_effici::ce_MWMultiplicationLayer_effici()
{
}

de_MWMultiplicationLayer_effici::de_MWMultiplicationLayer_effici()
{
}

ee_MWMultiplicationLayer_effici::ee_MWMultiplicationLayer_effici()
{
}

fe_MWMultiplicationLayer_effici::fe_MWMultiplicationLayer_effici()
{
}

ge_MWMultiplicationLayer_effici::ge_MWMultiplicationLayer_effici()
{
}

he_MWMultiplicationLayer_effici::he_MWMultiplicationLayer_effici()
{
}

ie_MWMultiplicationLayer_effici::ie_MWMultiplicationLayer_effici()
{
}

je_MWMultiplicationLayer_effici::je_MWMultiplicationLayer_effici()
{
}

ke_MWMultiplicationLayer_effici::ke_MWMultiplicationLayer_effici()
{
}

m_MWMultiplicationLayer_efficie::m_MWMultiplicationLayer_efficie()
{
}

le_MWMultiplicationLayer_effici::le_MWMultiplicationLayer_effici()
{
}

me_MWMultiplicationLayer_effici::me_MWMultiplicationLayer_effici()
{
}

ne_MWMultiplicationLayer_effici::ne_MWMultiplicationLayer_effici()
{
}

oe_MWMultiplicationLayer_effici::oe_MWMultiplicationLayer_effici()
{
}

pe_MWMultiplicationLayer_effici::pe_MWMultiplicationLayer_effici()
{
}

qe_MWMultiplicationLayer_effici::qe_MWMultiplicationLayer_effici()
{
}

re_MWMultiplicationLayer_effici::re_MWMultiplicationLayer_effici()
{
}

se_MWMultiplicationLayer_effici::se_MWMultiplicationLayer_effici()
{
}

te_MWMultiplicationLayer_effici::te_MWMultiplicationLayer_effici()
{
}

n_MWMultiplicationLayer_efficie::n_MWMultiplicationLayer_efficie()
{
}

o_MWMultiplicationLayer_efficie::o_MWMultiplicationLayer_efficie()
{
}

p_MWMultiplicationLayer_efficie::p_MWMultiplicationLayer_efficie()
{
}

q_MWMultiplicationLayer_efficie::q_MWMultiplicationLayer_efficie()
{
}

r_MWMultiplicationLayer_efficie::r_MWMultiplicationLayer_efficie()
{
}

s_MWMultiplicationLayer_efficie::s_MWMultiplicationLayer_efficie()
{
}

t_MWMultiplicationLayer_efficie::t_MWMultiplicationLayer_efficie()
{
}

u_MWMultiplicationLayer_efficie::u_MWMultiplicationLayer_efficie()
{
}

d_MWMultiplicationLayer_efficie::d_MWMultiplicationLayer_efficie()
{
}

v_MWMultiplicationLayer_efficie::v_MWMultiplicationLayer_efficie()
{
}

w_MWMultiplicationLayer_efficie::w_MWMultiplicationLayer_efficie()
{
}

x_MWMultiplicationLayer_efficie::x_MWMultiplicationLayer_efficie()
{
}

y_MWMultiplicationLayer_efficie::y_MWMultiplicationLayer_efficie()
{
}

ab_MWMultiplicationLayer_effici::ab_MWMultiplicationLayer_effici()
{
}

bb_MWMultiplicationLayer_effici::bb_MWMultiplicationLayer_effici()
{
}

cb_MWMultiplicationLayer_effici::cb_MWMultiplicationLayer_effici()
{
}

db_MWMultiplicationLayer_effici::db_MWMultiplicationLayer_effici()
{
}

eb_MWMultiplicationLayer_effici::eb_MWMultiplicationLayer_effici()
{
}

fb_MWMultiplicationLayer_effici::fb_MWMultiplicationLayer_effici()
{
}

e_MWMultiplicationLayer_efficie::e_MWMultiplicationLayer_efficie()
{
}

gb_MWMultiplicationLayer_effici::gb_MWMultiplicationLayer_effici()
{
}

hb_MWMultiplicationLayer_effici::hb_MWMultiplicationLayer_effici()
{
}

ib_MWMultiplicationLayer_effici::ib_MWMultiplicationLayer_effici()
{
}

jb_MWMultiplicationLayer_effici::jb_MWMultiplicationLayer_effici()
{
}

kb_MWMultiplicationLayer_effici::kb_MWMultiplicationLayer_effici()
{
}

lb_MWMultiplicationLayer_effici::lb_MWMultiplicationLayer_effici()
{
}

mb_MWMultiplicationLayer_effici::mb_MWMultiplicationLayer_effici()
{
}

nb_MWMultiplicationLayer_effici::nb_MWMultiplicationLayer_effici()
{
}

ob_MWMultiplicationLayer_effici::ob_MWMultiplicationLayer_effici()
{
}

pb_MWMultiplicationLayer_effici::pb_MWMultiplicationLayer_effici()
{
}

f_MWMultiplicationLayer_efficie::f_MWMultiplicationLayer_efficie()
{
}

qb_MWMultiplicationLayer_effici::qb_MWMultiplicationLayer_effici()
{
}

rb_MWMultiplicationLayer_effici::rb_MWMultiplicationLayer_effici()
{
}

sb_MWMultiplicationLayer_effici::sb_MWMultiplicationLayer_effici()
{
}

tb_MWMultiplicationLayer_effici::tb_MWMultiplicationLayer_effici()
{
}

ub_MWMultiplicationLayer_effici::ub_MWMultiplicationLayer_effici()
{
}

vb_MWMultiplicationLayer_effici::vb_MWMultiplicationLayer_effici()
{
}

wb_MWMultiplicationLayer_effici::wb_MWMultiplicationLayer_effici()
{
}

xb_MWMultiplicationLayer_effici::xb_MWMultiplicationLayer_effici()
{
}

yb_MWMultiplicationLayer_effici::yb_MWMultiplicationLayer_effici()
{
}

ac_MWMultiplicationLayer_effici::ac_MWMultiplicationLayer_effici()
{
}

g_MWMultiplicationLayer_efficie::g_MWMultiplicationLayer_efficie()
{
}

bc_MWMultiplicationLayer_effici::bc_MWMultiplicationLayer_effici()
{
}

cc_MWMultiplicationLayer_effici::cc_MWMultiplicationLayer_effici()
{
}

dc_MWMultiplicationLayer_effici::dc_MWMultiplicationLayer_effici()
{
}

ec_MWMultiplicationLayer_effici::ec_MWMultiplicationLayer_effici()
{
}

fc_MWMultiplicationLayer_effici::fc_MWMultiplicationLayer_effici()
{
}

gc_MWMultiplicationLayer_effici::gc_MWMultiplicationLayer_effici()
{
}

hc_MWMultiplicationLayer_effici::hc_MWMultiplicationLayer_effici()
{
}

ic_MWMultiplicationLayer_effici::ic_MWMultiplicationLayer_effici()
{
}

jc_MWMultiplicationLayer_effici::jc_MWMultiplicationLayer_effici()
{
}

kc_MWMultiplicationLayer_effici::kc_MWMultiplicationLayer_effici()
{
}

h_MWMultiplicationLayer_efficie::h_MWMultiplicationLayer_efficie()
{
}

lc_MWMultiplicationLayer_effici::lc_MWMultiplicationLayer_effici()
{
}

mc_MWMultiplicationLayer_effici::mc_MWMultiplicationLayer_effici()
{
}

nc_MWMultiplicationLayer_effici::nc_MWMultiplicationLayer_effici()
{
}

oc_MWMultiplicationLayer_effici::oc_MWMultiplicationLayer_effici()
{
}

pc_MWMultiplicationLayer_effici::pc_MWMultiplicationLayer_effici()
{
}

qc_MWMultiplicationLayer_effici::qc_MWMultiplicationLayer_effici()
{
}

rc_MWMultiplicationLayer_effici::rc_MWMultiplicationLayer_effici()
{
}

sc_MWMultiplicationLayer_effici::sc_MWMultiplicationLayer_effici()
{
}

tc_MWMultiplicationLayer_effici::tc_MWMultiplicationLayer_effici()
{
}

uc_MWMultiplicationLayer_effici::uc_MWMultiplicationLayer_effici()
{
}

i_MWMultiplicationLayer_efficie::i_MWMultiplicationLayer_efficie()
{
}

vc_MWMultiplicationLayer_effici::vc_MWMultiplicationLayer_effici()
{
}

wc_MWMultiplicationLayer_effici::wc_MWMultiplicationLayer_effici()
{
}

xc_MWMultiplicationLayer_effici::xc_MWMultiplicationLayer_effici()
{
}

yc_MWMultiplicationLayer_effici::yc_MWMultiplicationLayer_effici()
{
}

ad_MWMultiplicationLayer_effici::ad_MWMultiplicationLayer_effici()
{
}

bd_MWMultiplicationLayer_effici::bd_MWMultiplicationLayer_effici()
{
}

cd_MWMultiplicationLayer_effici::cd_MWMultiplicationLayer_effici()
{
}

dd_MWMultiplicationLayer_effici::dd_MWMultiplicationLayer_effici()
{
}

ed_MWMultiplicationLayer_effici::ed_MWMultiplicationLayer_effici()
{
}

fd_MWMultiplicationLayer_effici::fd_MWMultiplicationLayer_effici()
{
}

j_MWMultiplicationLayer_efficie::j_MWMultiplicationLayer_efficie()
{
}

gd_MWMultiplicationLayer_effici::gd_MWMultiplicationLayer_effici()
{
}

hd_MWMultiplicationLayer_effici::hd_MWMultiplicationLayer_effici()
{
}

id_MWMultiplicationLayer_effici::id_MWMultiplicationLayer_effici()
{
}

jd_MWMultiplicationLayer_effici::jd_MWMultiplicationLayer_effici()
{
}

kd_MWMultiplicationLayer_effici::kd_MWMultiplicationLayer_effici()
{
}

ld_MWMultiplicationLayer_effici::ld_MWMultiplicationLayer_effici()
{
}

md_MWMultiplicationLayer_effici::md_MWMultiplicationLayer_effici()
{
}

nd_MWMultiplicationLayer_effici::nd_MWMultiplicationLayer_effici()
{
}

od_MWMultiplicationLayer_effici::od_MWMultiplicationLayer_effici()
{
}

pd_MWMultiplicationLayer_effici::pd_MWMultiplicationLayer_effici()
{
}

k_MWMultiplicationLayer_efficie::k_MWMultiplicationLayer_efficie()
{
}

qd_MWMultiplicationLayer_effici::qd_MWMultiplicationLayer_effici()
{
}

rd_MWMultiplicationLayer_effici::rd_MWMultiplicationLayer_effici()
{
}

sd_MWMultiplicationLayer_effici::sd_MWMultiplicationLayer_effici()
{
}

td_MWMultiplicationLayer_effici::td_MWMultiplicationLayer_effici()
{
}

ud_MWMultiplicationLayer_effici::ud_MWMultiplicationLayer_effici()
{
}

vd_MWMultiplicationLayer_effici::vd_MWMultiplicationLayer_effici()
{
}

wd_MWMultiplicationLayer_effici::wd_MWMultiplicationLayer_effici()
{
}

xd_MWMultiplicationLayer_effici::xd_MWMultiplicationLayer_effici()
{
}

yd_MWMultiplicationLayer_effici::yd_MWMultiplicationLayer_effici()
{
}

ae_MWMultiplicationLayer_effici::ae_MWMultiplicationLayer_effici()
{
}

c_MWResize2DLayer_efficientDetD::c_MWResize2DLayer_efficientDetD()
{
}

l_MWResize2DLayer_efficientDetD::l_MWResize2DLayer_efficientDetD()
{
}

m_MWResize2DLayer_efficientDetD::m_MWResize2DLayer_efficientDetD()
{
}

n_MWResize2DLayer_efficientDetD::n_MWResize2DLayer_efficientDetD()
{
}

d_MWResize2DLayer_efficientDetD::d_MWResize2DLayer_efficientDetD()
{
}

e_MWResize2DLayer_efficientDetD::e_MWResize2DLayer_efficientDetD()
{
}

f_MWResize2DLayer_efficientDetD::f_MWResize2DLayer_efficientDetD()
{
}

g_MWResize2DLayer_efficientDetD::g_MWResize2DLayer_efficientDetD()
{
}

h_MWResize2DLayer_efficientDetD::h_MWResize2DLayer_efficientDetD()
{
}

i_MWResize2DLayer_efficientDetD::i_MWResize2DLayer_efficientDetD()
{
}

j_MWResize2DLayer_efficientDetD::j_MWResize2DLayer_efficientDetD()
{
}

k_MWResize2DLayer_efficientDetD::k_MWResize2DLayer_efficientDetD()
{
}

void od_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void vc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void pd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void qd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void rd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void sd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void td_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ud_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void vd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void wd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void xd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ae_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void be_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ce_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void de_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ee_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void fe_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ge_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void he_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ie_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void je_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ke_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void le_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void me_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ne_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void oe_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void pe_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void qe_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void re_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void se_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void te_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void r_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void e_MWResize2DLayer_efficientDetD::cleanupLayer()
{
}

void uc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void c_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void d_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void nb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void tc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void e_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void bc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void f_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void f_MWResize2DLayer_efficientDetD::cleanupLayer()
{
}

void g_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void fc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void h_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void ob_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void sc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void i_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void wb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void j_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void k_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void rc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void l_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void pb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void m_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void yb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void d_MWResize2DLayer_efficientDetD::cleanupLayer()
{
}

void n_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void o_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void ec_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void qc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void p_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void qb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void q_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void c_MWResize2DLayer_efficientDetD::cleanupLayer()
{
}

void bd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void s_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void pc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void t_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void rb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void u_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void oc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void v_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void w_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void dc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void nc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void x_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void sb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void y_MWMultiplicationLayer_efficie::cleanupLayer()
{
}

void xb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void mc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ab_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void bb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void lc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void cb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void tb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void db_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void kc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void eb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void fb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void cc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void jc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void gb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ub_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void hb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ic_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ib_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void jb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void hc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void kb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void vb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void lb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ac_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void gc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void mb_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void wc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void xc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void g_MWResize2DLayer_efficientDetD::cleanupLayer()
{
}

void yc_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void h_MWResize2DLayer_efficientDetD::cleanupLayer()
{
}

void ad_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void i_MWResize2DLayer_efficientDetD::cleanupLayer()
{
}

void j_MWResize2DLayer_efficientDetD::cleanupLayer()
{
}

void cd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void dd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ed_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void fd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void gd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void k_MWResize2DLayer_efficientDetD::cleanupLayer()
{
}

void yd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void hd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void l_MWResize2DLayer_efficientDetD::cleanupLayer()
{
}

void id_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void m_MWResize2DLayer_efficientDetD::cleanupLayer()
{
}

void jd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void n_MWResize2DLayer_efficientDetD::cleanupLayer()
{
}

void kd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void ld_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void md_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void nd_MWMultiplicationLayer_effici::cleanupLayer()
{
}

void dc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void te_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void se_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void re_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void qe_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void pe_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void oe_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ne_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void me_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void le_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ke_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void je_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ie_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void he_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ge_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void fe_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ee_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void de_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ce_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void be_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ae_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void yd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void xd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void wd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void vd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ud_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void td_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void sd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void rd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void qd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void bc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void bb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void cc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ec_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void fc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void o_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void gc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void h_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void hc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void cb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ic_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void db_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void jc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void eb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void kc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void i_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void lc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void f_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void mc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void fb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void p_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void nc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void q_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void oc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void j_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void pc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void gb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void c_MWResize2DLayer_efficientDetD::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, const char_T *c, int32_T d)
{
  setupTensors(1, 1, b, c, d);
  setupLayer(targetImpl);
}

void hb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void qc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void k_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void d_MWResize2DLayer_efficientDetD::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, const char_T *c, int32_T d)
{
  setupTensors(1, 1, b, c, d);
  setupLayer(targetImpl);
}

void ib_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void rc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void jb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void e_MWResize2DLayer_efficientDetD::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, const char_T *c, int32_T d)
{
  setupTensors(1, 1, b, c, d);
  setupLayer(targetImpl);
}

void r_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void sc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void g_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void f_MWResize2DLayer_efficientDetD::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, const char_T *c, int32_T d)
{
  setupTensors(1, 1, b, c, d);
  setupLayer(targetImpl);
}

void kb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void tc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void lb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void uc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void mb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void vc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void d_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void wc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void nb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void xc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ob_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void dd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void s_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void g_MWResize2DLayer_efficientDetD::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, const char_T *c, int32_T d)
{
  setupTensors(1, 1, b, c, d);
  setupLayer(targetImpl);
}

void t_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void yc_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void u_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void h_MWResize2DLayer_efficientDetD::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, const char_T *c, int32_T d)
{
  setupTensors(1, 1, b, c, d);
  setupLayer(targetImpl);
}

void pb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ad_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void i_MWResize2DLayer_efficientDetD::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, const char_T *c, int32_T d)
{
  setupTensors(1, 1, b, c, d);
  setupLayer(targetImpl);
}

void qb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void bd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void l_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void j_MWResize2DLayer_efficientDetD::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, const char_T *c, int32_T d)
{
  setupTensors(1, 1, b, c, d);
  setupLayer(targetImpl);
}

void v_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void cd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void rb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ed_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void w_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void fd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void m_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void gd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void sb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void k_MWResize2DLayer_efficientDetD::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, const char_T *c, int32_T d)
{
  setupTensors(1, 1, b, c, d);
  setupLayer(targetImpl);
}

void tb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void hd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ub_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void l_MWResize2DLayer_efficientDetD::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, const char_T *c, int32_T d)
{
  setupTensors(1, 1, b, c, d);
  setupLayer(targetImpl);
}

void n_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void id_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void vb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void m_MWResize2DLayer_efficientDetD::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, const char_T *c, int32_T d)
{
  setupTensors(1, 1, b, c, d);
  setupLayer(targetImpl);
}

void e_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void jd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void wb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void n_MWResize2DLayer_efficientDetD::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, const char_T *c, int32_T d)
{
  setupTensors(1, 1, b, c, d);
  setupLayer(targetImpl);
}

void x_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void kd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void xb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ld_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void y_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void md_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void yb_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void nd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void c_MWMultiplicationLayer_efficie::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void od_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ac_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void pd_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void ab_MWMultiplicationLayer_effici::createCustomLayer(MWCudnnTarget::
  MWTargetNetworkImpl *targetImpl, MWTensorBase *b, MWTensorBase *c, const
  char_T *d, int32_T e)
{
  setupTensors(2, 1, b, c, d, e);
  setupLayer(targetImpl);
}

void cb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::xe_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void fd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::jf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void db_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::ye_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void eb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::af_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void gd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::nf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void fb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::xe_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void gb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::xe_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void k_MWResize2DLayer_efficientDetD::predict()
{
  reorderInputData(getInputTensor(0), 0);
  coder::ge_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1));
  reorderOutputData(getOutputTensor(0), 1);
}

void hb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::ye_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ib_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::af_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void jb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::xe_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void hd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::jf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void kb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::xe_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void lb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::ye_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void l_MWResize2DLayer_efficientDetD::predict()
{
  reorderInputData(getInputTensor(0), 0);
  coder::he_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1));
  reorderOutputData(getOutputTensor(0), 1);
}

void mb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::af_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void nb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::bf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void id_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::kf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ob_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::bf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void pb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::cf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void m_MWResize2DLayer_efficientDetD::predict()
{
  reorderInputData(getInputTensor(0), 0);
  coder::ie_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1));
  reorderOutputData(getOutputTensor(0), 1);
}

void qb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::df_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void rb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::bf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void jd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::lf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void sb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::bf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void tb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::cf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void n_MWResize2DLayer_efficientDetD::predict()
{
  reorderInputData(getInputTensor(0), 0);
  coder::je_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1));
  reorderOutputData(getOutputTensor(0), 1);
}

void ub_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::df_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void vb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::bf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void kd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::mf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void wb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::ef_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void xb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::cf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ld_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::lf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void yb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::ff_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void te_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::mf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void md_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::kf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ac_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::gf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void bc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::gf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void nd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::jf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void cc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::hf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void dc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::if_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void od_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::nf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ec_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::gf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void fc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::gf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void pd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::nf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void gc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::hf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void hc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::if_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void qd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::nf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ic_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::gf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void jc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::gf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void rd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::nf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void kc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::hf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void lc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::if_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void sd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::nf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void mc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::gf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void nc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::gf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void td_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::nf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void oc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::hf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void pc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::if_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ud_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::nf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void c_MWResize2DLayer_efficientDetD::predict()
{
  reorderInputData(getInputTensor(0), 0);
  coder::ge_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1));
  reorderOutputData(getOutputTensor(0), 1);
}

void qc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::jf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void vd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::jf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void d_MWResize2DLayer_efficientDetD::predict()
{
  reorderInputData(getInputTensor(0), 0);
  coder::he_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1));
  reorderOutputData(getOutputTensor(0), 1);
}

void rc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::kf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void wd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::jf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void e_MWResize2DLayer_efficientDetD::predict()
{
  reorderInputData(getInputTensor(0), 0);
  coder::ie_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1));
  reorderOutputData(getOutputTensor(0), 1);
}

void sc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::lf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void xd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::jf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void f_MWResize2DLayer_efficientDetD::predict()
{
  reorderInputData(getInputTensor(0), 0);
  coder::je_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1));
  reorderOutputData(getOutputTensor(0), 1);
}

void yd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::jf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void tc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::mf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void uc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::lf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ae_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::jf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void vc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::kf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void c_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::ge_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void be_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::jf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void d_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::ge_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void wc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::jf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ce_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::kf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void e_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::he_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void f_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::ie_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void de_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::kf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void xc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::nf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void g_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::je_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ee_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::kf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void h_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::ke_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void g_MWResize2DLayer_efficientDetD::predict()
{
  reorderInputData(getInputTensor(0), 0);
  coder::ge_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1));
  reorderOutputData(getOutputTensor(0), 1);
}

void fe_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::kf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void i_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::le_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void j_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::me_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ge_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::kf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void yc_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::jf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void k_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::ne_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void he_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::kf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void l_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::ne_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void h_MWResize2DLayer_efficientDetD::predict()
{
  reorderInputData(getInputTensor(0), 0);
  coder::he_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1));
  reorderOutputData(getOutputTensor(0), 1);
}

void ie_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::lf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void m_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::oe_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void n_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::pe_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void je_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::lf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ad_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::kf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void o_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::ne_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ke_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::lf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void p_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::qe_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void i_MWResize2DLayer_efficientDetD::predict()
{
  reorderInputData(getInputTensor(0), 0);
  coder::ie_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1));
  reorderOutputData(getOutputTensor(0), 1);
}

void le_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::lf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void q_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::oe_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void r_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::re_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void me_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::lf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void bd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::lf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void s_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::se_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ne_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::lf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void t_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::se_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void j_MWResize2DLayer_efficientDetD::predict()
{
  reorderInputData(getInputTensor(0), 0);
  coder::je_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1));
  reorderOutputData(getOutputTensor(0), 1);
}

void oe_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::mf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void u_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::te_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void v_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::ue_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void pe_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::mf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void cd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::mf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void w_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::se_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void qe_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::mf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void x_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::ve_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void dd_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::lf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void re_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::mf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void y_MWMultiplicationLayer_efficie::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::te_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ab_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::we_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void se_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::mf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void ed_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::kf_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void bb_MWMultiplicationLayer_effici::predict()
{
  reorderInputData(getInputTensor(0), 0);
  reorderInputData(getInputTensor(1), 1);
  coder::xe_dlnetwork_layerPredictWithCo(m_ntwkImpl->getPermuteBuffer(0),
    m_ntwkImpl->getPermuteBuffer(1), m_ntwkImpl->getPermuteBuffer(2));
  reorderOutputData(getOutputTensor(0), 2);
}

void uc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void c_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(256, 256, 32, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void md_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void mb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 480, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void d_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(256, 256, 32, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void vc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void nd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void hd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void vb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 672, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void lb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 20, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void od_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(4, 4, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void wc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void hc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 1152, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void kb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 480, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void pd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(4, 4, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void cc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 48, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void xc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(4, 4, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void jb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 480, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void qd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(4, 4, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ic_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 1152, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ib_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 480, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void g_MWResize2DLayer_efficientDetD::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, c_layout);
}

void rd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(4, 4, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ub_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 672, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void hb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 20, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void jc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 1152, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void sd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(4, 4, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void yc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void gb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 480, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void xb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 28, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void td_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(4, 4, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void fb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 480, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void h_MWResize2DLayer_efficientDetD::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, c_layout);
}

void kc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 48, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ud_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(4, 4, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void eb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 480, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void tb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 28, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ad_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void vd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void db_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 20, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void lc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 1152, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void cb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 480, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void wd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void i_MWResize2DLayer_efficientDetD::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, c_layout);
}

void dc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 1152, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void bb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 480, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void xd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void mc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 1152, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void bd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ab_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 240, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void yd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void j_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(128, 128, 96, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void sb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 672, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void y_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 10, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ae_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void j_MWResize2DLayer_efficientDetD::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, c_layout);
}

void nc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 1152, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void x_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 240, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void be_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void bc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 1152, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void cd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void w_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 240, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ce_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void oc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 48, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void v_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 240, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void dd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void de_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void rb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 672, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void u_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 10, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void pc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 1152, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ee_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ed_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void t_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 240, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ec_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 1152, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void fe_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void s_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 240, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void fd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void c_MWResize2DLayer_efficientDetD::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, c_layout);
}

void ge_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void r_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 144, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void qb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 672, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void gd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(4, 4, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void he_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void q_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 6, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void qc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void p_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 144, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ie_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void k_MWResize2DLayer_efficientDetD::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(8, 8, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, c_layout);
}

void wb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 672, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void o_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(128, 128, 144, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void je_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void d_MWResize2DLayer_efficientDetD::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, c_layout);
}

void n_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(128, 128, 144, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void pb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 28, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ke_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void m_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 6, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void rc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void l_MWResize2DLayer_efficientDetD::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, c_layout);
}

void le_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void l_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(128, 128, 144, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void fc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 1152, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void k_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(128, 128, 144, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void me_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void id_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void e_MWResize2DLayer_efficientDetD::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, c_layout);
}

void ac_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 1152, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ne_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ob_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 672, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void m_MWResize2DLayer_efficientDetD::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, c_layout);
}

void oe_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void sc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void i_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 4, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void jd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void pe_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void yb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(16, 16, 672, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void h_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(128, 128, 96, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void f_MWResize2DLayer_efficientDetD::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, c_layout);
}

void qe_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void n_MWResize2DLayer_efficientDetD::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, c_layout);
}

void g_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(256, 256, 96, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void nb_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 672, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void re_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void f_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(256, 256, 32, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void kd_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void tc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void se_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void e_MWMultiplicationLayer_efficie::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 8, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void gc_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(1, 1, 48, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void ld_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(32, 32, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void te_MWMultiplicationLayer_effici::propagateSize()
{
  int32_T batchSize;
  MWTensorBase::DIMSLABEL b_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL c_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL d_layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::H, MWTensorBase::W };

  MWTensorBase::DIMSLABEL layout[5]{ MWTensorBase::S, MWTensorBase::N,
    MWTensorBase::C, MWTensorBase::W, MWTensorBase::H };

  batchSize = getInputTensor(0)->getBatchSize();
  resizeOutputTensor(64, 64, 64, batchSize, 1, 0);
  setupInputDescriptors(getInputTensor(0), b_layout, layout);
  setupInputDescriptors(getInputTensor(1), c_layout, layout);
  setupOutputDescriptors(getOutputTensor(0), layout, d_layout);
}

void efficientDetD0_predict(efficientDetD0_predictStackData *SD, const real32_T
  image[786432], cell_4 *out)
{
  //  Copyright 2021 The MathWorks, Inc.
  //  Convert input to dlarray.
  if (!efficientDetD0obj_not_empty) {
    coder::dlnetwork_setup(&efficientDetD0obj);
    efficientDetD0obj.matlabCodegenIsDeleted = false;
    efficientDetD0obj_not_empty = true;
  }

  //  Pass input.
  for (int32_T i{0}; i < 786432; i++) {
    SD->f0.expl_temp.Data[i] = image[i];
  }

  coder::dlnetwork_predict(&efficientDetD0obj, &SD->f0.expl_temp, out->f1.Data,
    out->f2.Data, out->f3.Data, out->f4.Data, out->f5.Data, out->f6.Data,
    out->f7.Data, out->f8.Data, out->f9.Data, out->f10.Data);
}

void efficientDetD0_predict_free()
{
  if (!efficientDetD0obj.matlabCodegenIsDeleted) {
    efficientDetD0obj.matlabCodegenIsDeleted = true;
    coder::dlnetwork_delete(&efficientDetD0obj);
  }
}

void efficientDetD0_predict_init()
{
  efficientDetD0obj_not_empty = false;
  efficientDetD0obj.matlabCodegenIsDeleted = true;
}

// End of code generation (efficientDetD0_predict.cu)
