/* misc1.c */
extern int get_indent __ARGS((void));
extern int get_indent_lnum __ARGS((linenr_T lnum));
extern int get_indent_buf __ARGS((buf_T *buf, linenr_T lnum));
extern int get_indent_str __ARGS((char_u *ptr, int ts));
extern int set_indent __ARGS((int size, int flags));
extern int get_number_indent __ARGS((linenr_T lnum));
extern int open_line __ARGS((int dir, int flags, int old_indent));
extern int get_leader_len __ARGS((char_u *line, char_u **flags, int backward));
extern int plines __ARGS((linenr_T lnum));
extern int plines_win __ARGS((win_T *wp, linenr_T lnum, int winheight));
extern int plines_nofill __ARGS((linenr_T lnum));
extern int plines_win_nofill __ARGS((win_T *wp, linenr_T lnum, int winheight));
extern int plines_win_nofold __ARGS((win_T *wp, linenr_T lnum));
extern int plines_win_col __ARGS((win_T *wp, linenr_T lnum, long column));
extern int plines_m_win __ARGS((win_T *wp, linenr_T first, linenr_T last));
extern void ins_bytes __ARGS((char_u *p));
extern void ins_bytes_len __ARGS((char_u *p, int len));
extern void ins_char __ARGS((int c));
extern void ins_char_bytes __ARGS((char_u *buf, int charlen));
extern void ins_str __ARGS((char_u *s));
extern int del_char __ARGS((int fixpos));
extern int del_chars __ARGS((long count, int fixpos));
extern int del_bytes __ARGS((long count, int fixpos_arg, int use_delcombine));
extern int truncate_line __ARGS((int fixpos));
extern void del_lines __ARGS((long nlines, int undo));
extern int gchar_pos __ARGS((pos_T *pos));
extern int gchar_cursor __ARGS((void));
extern void pchar_cursor __ARGS((int c));
extern int inindent __ARGS((int extra));
extern char_u *skip_to_option_part __ARGS((char_u *p));
extern void changed __ARGS((void));
extern void changed_bytes __ARGS((linenr_T lnum, colnr_T col));
extern void appended_lines __ARGS((linenr_T lnum, long count));
extern void appended_lines_mark __ARGS((linenr_T lnum, long count));
extern void deleted_lines __ARGS((linenr_T lnum, long count));
extern void deleted_lines_mark __ARGS((linenr_T lnum, long count));
extern void changed_lines __ARGS((linenr_T lnum, colnr_T col, linenr_T lnume, long xtra));
extern void unchanged __ARGS((buf_T *buf, int ff));
extern void check_status __ARGS((buf_T *buf));
extern void change_warning __ARGS((int col));
extern int ask_yesno __ARGS((char_u *str, int direct));
extern int get_keystroke __ARGS((void));
extern int get_number __ARGS((int colon, int *mouse_used));
extern int prompt_for_number __ARGS((int *mouse_used));
extern void msgmore __ARGS((long n));
extern void beep_flush __ARGS((void));
extern void vim_beep __ARGS((void));
extern void init_homedir __ARGS((void));
extern void free_homedir __ARGS((void));
extern void expand_env __ARGS((char_u *src, char_u *dst, int dstlen));
extern void expand_env_esc __ARGS((char_u *srcp, char_u *dst, int dstlen, int esc, char_u *startstr));
extern char_u *vim_getenv __ARGS((char_u *name, int *mustfree));
extern char_u *expand_env_save __ARGS((char_u *src));
extern void vim_setenv __ARGS((char_u *name, char_u *val));
extern char_u *get_env_name __ARGS((expand_T *xp, int idx));
extern void home_replace __ARGS((buf_T *buf, char_u *src, char_u *dst, int dstlen, int one));
extern char_u *home_replace_save __ARGS((buf_T *buf, char_u *src));
extern int fullpathcmp __ARGS((char_u *s1, char_u *s2, int checkname));
extern char_u *gettail __ARGS((char_u *fname));
extern char_u *gettail_sep __ARGS((char_u *fname));
extern char_u *getnextcomp __ARGS((char_u *fname));
extern char_u *get_past_head __ARGS((char_u *path));
extern int vim_ispathsep __ARGS((int c));
extern int vim_ispathlistsep __ARGS((int c));
extern int dir_of_file_exists __ARGS((char_u *fname));
extern int vim_fnamecmp __ARGS((char_u *x, char_u *y));
extern int vim_fnamencmp __ARGS((char_u *x, char_u *y, size_t len));
extern char_u *concat_fnames __ARGS((char_u *fname1, char_u *fname2, int sep));
extern char_u *concat_str __ARGS((char_u *str1, char_u *str2));
extern void add_pathsep __ARGS((char_u *p));
extern char_u *FullName_save __ARGS((char_u *fname, int force));
extern pos_T *find_start_comment __ARGS((int ind_maxcomment));
extern void do_c_expr_indent __ARGS((void));
extern int cin_islabel __ARGS((int ind_maxcomment));
extern int cin_iscase __ARGS((char_u *s));
extern int cin_isscopedecl __ARGS((char_u *s));
extern int get_c_indent __ARGS((void));
extern int get_expr_indent __ARGS((void));
extern int get_lisp_indent __ARGS((void));
extern void prepare_to_exit __ARGS((void));
extern void preserve_exit __ARGS((void));
extern int vim_fexists __ARGS((char_u *fname));
extern void line_breakcheck __ARGS((void));
extern void fast_breakcheck __ARGS((void));
extern int expand_wildcards __ARGS((int num_pat, char_u **pat, int *num_file, char_u ***file, int flags));
extern int match_suffix __ARGS((char_u *fname));
extern int unix_expandpath __ARGS((garray_T *gap, char_u *path, int wildoff, int flags, int didstar));
extern int gen_expand_wildcards __ARGS((int num_pat, char_u **pat, int *num_file, char_u ***file, int flags));
extern void addfile __ARGS((garray_T *gap, char_u *f, int flags));
extern char_u *get_cmd_output __ARGS((char_u *cmd, char_u *infile, int flags));
extern void FreeWild __ARGS((int count, char_u **files));
extern int goto_im __ARGS((void));
/* vim: set ft=c : */
