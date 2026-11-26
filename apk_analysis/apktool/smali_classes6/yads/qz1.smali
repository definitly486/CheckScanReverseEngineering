.class public final Lyads/qz1;
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

    iput-object p1, p0, Lyads/qz1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/qz1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/kz1;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/kz1;
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v8, Lyads/kz1;

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->H:Lcl4;

    const-string v4, "accessibility"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lyads/mr0;

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "action"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lyads/xr0;

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->q1:Lcl4;

    const-string v4, "action_animation"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/k11;

    if-nez v3, :cond_0

    sget-object v3, Lyads/tz1;->a:Lyads/k11;

    :cond_0
    move-object v11, v3

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v12

    sget-object v3, Lyads/tz1;->g:Lyads/m36;

    sget-object v4, Lyads/f11;->d:Lnl3;

    const-string v5, "alignment_horizontal"

    invoke-static {v1, v2, v5, v3, v4}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v13

    sget-object v3, Lyads/tz1;->h:Lyads/m36;

    sget-object v4, Lyads/h11;->d:Lnl3;

    const-string v5, "alignment_vertical"

    invoke-static {v1, v2, v5, v3, v4}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v14

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v5, Lyads/bt4;->d:Lnl3;

    sget-object v6, Lyads/tz1;->j:Lyads/l66;

    sget-object v7, Lyads/tz1;->b:Lyads/xr2;

    const-string v3, "alpha"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v15, v7

    goto :goto_0

    :cond_1
    move-object v15, v3

    :goto_0
    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->t1:Lcl4;

    const-string v4, "animators"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v16

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->F1:Lcl4;

    const-string v4, "background"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v17

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->L1:Lcl4;

    const-string v4, "border"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lyads/f51;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/tz1;->c:Lyads/xr2;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "capture_focus_on_action"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object/from16 v19, v6

    if-nez v3, :cond_2

    move-object/from16 v20, v7

    goto :goto_1

    :cond_2
    move-object/from16 v20, v3

    :goto_1
    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/tz1;->k:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "column_span"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v21

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->E6:Lcl4;

    const-string v6, "delimiter_style"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lyads/jz1;

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->O2:Lcl4;

    const-string v6, "disappear_actions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v23

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v6, "doubletap_actions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v24

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->a3:Lcl4;

    const-string v6, "extensions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v25

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->y3:Lcl4;

    const-string v6, "focus"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Lyads/hf1;

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->H3:Lcl4;

    const-string v6, "functions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v27

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->T6:Lcl4;

    const-string v6, "height"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/x02;

    if-nez v3, :cond_3

    sget-object v3, Lyads/tz1;->d:Lyads/w02;

    :cond_3
    move-object/from16 v28, v3

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v6, "hover_end_actions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v29

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v6, "hover_start_actions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v30

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Ljava/lang/String;

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->J4:Lcl4;

    const-string v6, "layout_provider"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Lyads/to1;

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v6, "longtap_actions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v33

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->X2:Lcl4;

    const-string v6, "margins"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v34, v3

    check-cast v34, Lyads/yc1;

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->X2:Lcl4;

    const-string v6, "paddings"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v35, v3

    check-cast v35, Lyads/yc1;

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v6, "press_end_actions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v36

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v6, "press_start_actions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v37

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const-string v6, "reuse_id"

    invoke-static {v1, v2, v6, v3}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v38

    sget-object v6, Lyads/tz1;->l:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "row_span"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v39

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "selected_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v40

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->O8:Lcl4;

    const-string v4, "tooltips"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v41

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->R8:Lcl4;

    const-string v4, "transform"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v42, v3

    check-cast v42, Lyads/bd2;

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->U1:Lcl4;

    const-string v4, "transition_change"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v43, v3

    check-cast v43, Lyads/j61;

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->z1:Lcl4;

    const-string v4, "transition_in"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v44, v3

    check-cast v44, Lyads/s21;

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->z1:Lcl4;

    const-string v4, "transition_out"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v45, v3

    check-cast v45, Lyads/s21;

    sget-object v4, Lyads/pd2;->d:Lnl3;

    sget-object v5, Lyads/tz1;->m:Lyads/st3;

    const-string v3, "transition_triggers"

    move-object/from16 v6, v19

    invoke-static/range {v1 .. v6}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/st3;Lyads/l66;)Ljava/util/List;

    move-result-object v19

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->U8:Lcl4;

    const-string v4, "variable_triggers"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v46

    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->a9:Lcl4;

    const-string v4, "variables"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v47

    sget-object v4, Lyads/tz1;->i:Lyads/m36;

    sget-object v5, Lyads/ri2;->d:Lnl3;

    sget-object v7, Lyads/tz1;->e:Lyads/xr2;

    const-string v3, "visibility"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    iget-object v3, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->m9:Lcl4;

    const-string v4, "visibility_action"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/si2;

    iget-object v4, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v4, v4, Lyads/tq3;->m9:Lcl4;

    const-string v5, "visibility_actions"

    invoke-static {v1, v2, v5, v4}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v4

    iget-object v0, v0, Lyads/qz1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->T6:Lcl4;

    const-string v5, "width"

    invoke-static {v1, v2, v5, v0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/x02;

    if-nez v0, :cond_5

    sget-object v0, Lyads/tz1;->f:Lyads/v02;

    :cond_5
    move-object/from16 v1, v43

    move-object/from16 v43, v0

    move-object v0, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v25

    move-object/from16 v25, v34

    move-object/from16 v34, v1

    move-object/from16 v1, v37

    move-object/from16 v37, v19

    move-object/from16 v19, v28

    move-object/from16 v28, v1

    move-object v1, v9

    move-object v2, v10

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v17, v26

    move-object/from16 v18, v27

    move-object/from16 v22, v31

    move-object/from16 v23, v32

    move-object/from16 v26, v35

    move-object/from16 v27, v36

    move-object/from16 v31, v40

    move-object/from16 v32, v41

    move-object/from16 v35, v44

    move-object/from16 v36, v45

    move-object/from16 v41, v3

    move-object/from16 v40, v7

    move-object v3, v11

    move-object v7, v15

    move-object/from16 v11, v20

    move-object/from16 v15, v24

    move-object/from16 v20, v29

    move-object/from16 v24, v33

    move-object/from16 v29, v38

    move-object/from16 v33, v42

    move-object/from16 v38, v46

    move-object/from16 v42, v4

    move-object v4, v12

    move-object/from16 v12, v21

    move-object/from16 v21, v30

    move-object/from16 v30, v39

    move-object/from16 v39, v47

    invoke-direct/range {v0 .. v43}, Lyads/kz1;-><init>(Lyads/mr0;Lyads/xr0;Lyads/k11;Ljava/util/List;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Ljava/util/List;Lyads/f51;Lyads/as2;Lyads/as2;Lyads/jz1;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/hf1;Ljava/util/List;Lyads/x02;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lyads/to1;Ljava/util/List;Lyads/yc1;Lyads/yc1;Ljava/util/List;Ljava/util/List;Lyads/as2;Lyads/as2;Ljava/util/List;Ljava/util/List;Lyads/bd2;Lyads/j61;Lyads/s21;Lyads/s21;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/as2;Lyads/si2;Ljava/util/List;Lyads/x02;)V

    return-object v0
.end method
