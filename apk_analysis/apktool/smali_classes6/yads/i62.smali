.class public final Lyads/i62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/i62;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/i62;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/y52;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/y52;
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v8, Lyads/y52;

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->H:Lcl4;

    const-string v4, "accessibility"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lyads/mr0;

    sget-object v3, Lyads/l62;->m:Lyads/m36;

    sget-object v4, Lyads/f11;->d:Lnl3;

    const-string v5, "alignment_horizontal"

    invoke-static {v1, v2, v5, v3, v4}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v10

    sget-object v3, Lyads/l62;->n:Lyads/m36;

    sget-object v4, Lyads/h11;->d:Lnl3;

    const-string v5, "alignment_vertical"

    invoke-static {v1, v2, v5, v3, v4}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v11

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v5, Lyads/bt4;->d:Lnl3;

    sget-object v6, Lyads/l62;->p:Lyads/l66;

    sget-object v7, Lyads/l62;->a:Lyads/xr2;

    const-string v3, "alpha"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v12, v7

    goto :goto_0

    :cond_0
    move-object v12, v3

    :goto_0
    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->t1:Lcl4;

    const-string v4, "animators"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v13

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->F1:Lcl4;

    const-string v4, "background"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v14

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->L1:Lcl4;

    const-string v4, "border"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lyads/f51;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/l62;->q:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "column_span"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v16

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->O2:Lcl4;

    const-string v4, "disappear_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v19

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/l62;->b:Lyads/xr2;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "dynamic_height"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_1

    move-object/from16 v20, v7

    goto :goto_1

    :cond_1
    move-object/from16 v20, v3

    :goto_1
    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->a3:Lcl4;

    const-string v7, "extensions"

    invoke-static {v1, v2, v7, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v21

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->y3:Lcl4;

    const-string v7, "focus"

    invoke-static {v1, v2, v7, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lyads/hf1;

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->H3:Lcl4;

    const-string v7, "functions"

    invoke-static {v1, v2, v7, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v23

    sget-object v7, Lyads/l62;->c:Lyads/xr2;

    const-string v3, "has_separator"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_2

    move-object/from16 v24, v7

    goto :goto_2

    :cond_2
    move-object/from16 v24, v3

    :goto_2
    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->T6:Lcl4;

    const-string v7, "height"

    invoke-static {v1, v2, v7, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/x02;

    if-nez v3, :cond_3

    sget-object v3, Lyads/l62;->d:Lyads/w02;

    :cond_3
    move-object/from16 v25, v3

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Ljava/lang/String;

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->S7:Lcl4;

    sget-object v7, Lyads/l62;->r:Lyads/st3;

    move-object/from16 v27, v4

    const-string v4, "items"

    invoke-static {v1, v2, v4, v3, v7}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object v28

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->J4:Lcl4;

    const-string v4, "layout_provider"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Lyads/to1;

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->X2:Lcl4;

    const-string v4, "margins"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Lyads/yc1;

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->X2:Lcl4;

    const-string v4, "paddings"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Lyads/yc1;

    sget-object v7, Lyads/l62;->e:Lyads/xr2;

    const-string v3, "restrict_parent_scroll"

    move-object/from16 v4, v27

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    if-nez v3, :cond_4

    move-object/from16 v34, v7

    goto :goto_3

    :cond_4
    move-object/from16 v34, v3

    :goto_3
    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const-string v4, "reuse_id"

    invoke-static {v1, v2, v4, v3}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v35

    sget-object v6, Lyads/l62;->s:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "row_span"

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v17

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v6, "selected_actions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v18

    sget-object v6, Lyads/l62;->t:Lyads/l66;

    sget-object v7, Lyads/l62;->f:Lyads/xr2;

    const-string v3, "selected_tab"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_5

    move-object/from16 v36, v7

    goto :goto_4

    :cond_5
    move-object/from16 v36, v3

    :goto_4
    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v5, Lyads/bt4;->a:Lnl3;

    sget-object v7, Lyads/l62;->g:Lyads/xr2;

    const-string v3, "separator_color"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, v33

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_6

    move-object/from16 v33, v7

    goto :goto_5

    :cond_6
    move-object/from16 v33, v3

    :goto_5
    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->X2:Lcl4;

    const-string v4, "separator_paddings"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/yc1;

    if-nez v3, :cond_7

    sget-object v3, Lyads/l62;->h:Lyads/yc1;

    :cond_7
    move-object/from16 v37, v3

    sget-object v7, Lyads/l62;->i:Lyads/xr2;

    const-string v3, "switch_tabs_by_content_swipe_enabled"

    move-object/from16 v4, v27

    move-object/from16 v5, v32

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_8

    move-object/from16 v27, v7

    goto :goto_6

    :cond_8
    move-object/from16 v27, v3

    :goto_6
    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->P7:Lcl4;

    const-string v4, "tab_title_delimiter"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Lyads/u52;

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->M7:Lcl4;

    const-string v4, "tab_title_style"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v38, v3

    check-cast v38, Lyads/x52;

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->X2:Lcl4;

    const-string v4, "title_paddings"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/yc1;

    if-nez v3, :cond_9

    sget-object v3, Lyads/l62;->j:Lyads/yc1;

    :cond_9
    move-object/from16 v39, v3

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->O8:Lcl4;

    const-string v4, "tooltips"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v40

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->R8:Lcl4;

    const-string v4, "transform"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v41, v3

    check-cast v41, Lyads/bd2;

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->U1:Lcl4;

    const-string v4, "transition_change"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v42, v3

    check-cast v42, Lyads/j61;

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->z1:Lcl4;

    const-string v4, "transition_in"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v43, v3

    check-cast v43, Lyads/s21;

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->z1:Lcl4;

    const-string v4, "transition_out"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v44, v3

    check-cast v44, Lyads/s21;

    sget-object v4, Lyads/pd2;->d:Lnl3;

    sget-object v5, Lyads/l62;->u:Lyads/st3;

    const-string v3, "transition_triggers"

    invoke-static/range {v1 .. v6}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/st3;Lyads/l66;)Ljava/util/List;

    move-result-object v45

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->U8:Lcl4;

    const-string v4, "variable_triggers"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v46

    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->a9:Lcl4;

    const-string v4, "variables"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v47

    sget-object v4, Lyads/l62;->o:Lyads/m36;

    sget-object v5, Lyads/ri2;->d:Lnl3;

    sget-object v7, Lyads/l62;->k:Lyads/xr2;

    const-string v3, "visibility"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_7

    :cond_a
    move-object v7, v3

    :goto_7
    iget-object v3, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->m9:Lcl4;

    const-string v4, "visibility_action"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/si2;

    iget-object v4, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v4, v4, Lyads/tq3;->m9:Lcl4;

    const-string v5, "visibility_actions"

    invoke-static {v1, v2, v5, v4}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v4

    iget-object v0, v0, Lyads/i62;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->T6:Lcl4;

    const-string v5, "width"

    invoke-static {v1, v2, v5, v0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/x02;

    if-nez v0, :cond_b

    sget-object v0, Lyads/l62;->l:Lyads/v02;

    :cond_b
    move-object/from16 v1, v43

    move-object/from16 v43, v0

    move-object v0, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v26

    move-object/from16 v26, v33

    move-object/from16 v33, v41

    move-object/from16 v41, v3

    move-object v3, v11

    move-object/from16 v11, v21

    move-object/from16 v21, v34

    move-object/from16 v34, v42

    move-object/from16 v42, v4

    move-object v4, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v35

    move-object/from16 v35, v1

    move-object v1, v9

    move-object v2, v10

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v19, v30

    move-object/from16 v20, v31

    move-object/from16 v30, v38

    move-object/from16 v31, v39

    move-object/from16 v38, v46

    move-object/from16 v39, v47

    move-object/from16 v23, v17

    move-object/from16 v24, v18

    move-object/from16 v17, v28

    move-object/from16 v18, v29

    move-object/from16 v29, v32

    move-object/from16 v32, v40

    move-object/from16 v40, v7

    move-object v7, v15

    move-object/from16 v15, v25

    move-object/from16 v28, v27

    move-object/from16 v25, v36

    move-object/from16 v27, v37

    move-object/from16 v36, v44

    move-object/from16 v37, v45

    invoke-direct/range {v0 .. v43}, Lyads/y52;-><init>(Lyads/mr0;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Ljava/util/List;Lyads/f51;Lyads/as2;Ljava/util/List;Lyads/as2;Ljava/util/List;Lyads/hf1;Ljava/util/List;Lyads/as2;Lyads/x02;Ljava/lang/String;Ljava/util/List;Lyads/to1;Lyads/yc1;Lyads/yc1;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Lyads/as2;Lyads/yc1;Lyads/as2;Lyads/u52;Lyads/x52;Lyads/yc1;Ljava/util/List;Lyads/bd2;Lyads/j61;Lyads/s21;Lyads/s21;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/as2;Lyads/si2;Ljava/util/List;Lyads/x02;)V

    return-object v0
.end method
