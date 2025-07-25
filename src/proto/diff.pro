/* diff.c */
void diff_buf_delete(buf_T *buf);
void diff_buf_adjust(win_T *win);
void diff_buf_add(buf_T *buf);
void diff_invalidate(buf_T *buf);
void diff_mark_adjust(linenr_T line1, linenr_T line2, long amount, long amount_after);
void diff_redraw(int dofold);
int diff_internal(void);
void ex_diffupdate(exarg_T *eap);
void ex_diffpatch(exarg_T *eap);
void ex_diffsplit(exarg_T *eap);
void ex_diffthis(exarg_T *eap);
void diff_win_options(win_T *wp, int addbuf);
void ex_diffoff(exarg_T *eap);
void diff_clear(tabpage_T *tp);
int diff_check_with_linestatus(win_T *wp, linenr_T lnum, int *linestatus);
int diff_check_fill(win_T *wp, linenr_T lnum);
void diff_set_topline(win_T *fromwin, win_T *towin);
int diffanchors_changed(int local);
int diffopt_changed(void);
int diffopt_horizontal(void);
int diffopt_hiddenoff(void);
int diffopt_closeoff(void);
void diff_update_line(linenr_T lnum);
#ifdef FEAT_DIFF
int diff_change_parse( diffline_T *diffline, diffline_change_T *change, int *change_start, int *change_end);
int diff_find_change( win_T *wp, linenr_T lnum, diffline_T *diffline);
#endif
int diff_infold(win_T *wp, linenr_T lnum);
void nv_diffgetput(int put, long count);
void ex_diffgetput(exarg_T *eap);
int diff_mode_buf(buf_T *buf);
int diff_move_to(int dir, long count);
linenr_T diff_get_corresponding_line(buf_T *buf1, linenr_T lnum1);
linenr_T diff_lnum_win(linenr_T lnum, win_T *wp);
void f_diff_filler(typval_T *argvars, typval_T *rettv);
void f_diff_hlID(typval_T *argvars, typval_T *rettv);
void f_diff(typval_T *argvars, typval_T *rettv);
/* vim: set ft=c : */
