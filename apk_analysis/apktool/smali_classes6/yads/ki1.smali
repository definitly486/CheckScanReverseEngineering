.class public final Lyads/ki1;
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

    iput-object p1, p0, Lyads/ki1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/ki1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/zh1;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/zh1;
    .locals 60

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v8, Lyads/zh1;

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->H:Lcl4;

    const-string v4, "accessibility"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lyads/mr0;

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "action"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lyads/xr0;

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->q1:Lcl4;

    const-string v4, "action_animation"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/k11;

    if-nez v3, :cond_0

    sget-object v3, Lyads/ni1;->a:Lyads/k11;

    :cond_0
    move-object v11, v3

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v12

    sget-object v3, Lyads/ni1;->n:Lyads/m36;

    sget-object v13, Lyads/f11;->d:Lnl3;

    const-string v4, "alignment_horizontal"

    invoke-static {v1, v2, v4, v3, v13}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v14

    sget-object v3, Lyads/ni1;->o:Lyads/m36;

    sget-object v15, Lyads/h11;->d:Lnl3;

    const-string v4, "alignment_vertical"

    invoke-static {v1, v2, v4, v3, v15}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v16

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v5, Lyads/bt4;->d:Lnl3;

    sget-object v6, Lyads/ni1;->u:Lyads/l66;

    sget-object v7, Lyads/ni1;->b:Lyads/xr2;

    const-string v3, "alpha"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_1

    move-object/from16 v17, v7

    goto :goto_0

    :cond_1
    move-object/from16 v17, v3

    :goto_0
    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->t1:Lcl4;

    const-string v4, "animators"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v18

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->d3:Lcl4;

    const-string v4, "appearance_animation"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lyads/od1;

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->C1:Lcl4;

    const-string v4, "aspect"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Lyads/b31;

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->F1:Lcl4;

    const-string v4, "background"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v21

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->L1:Lcl4;

    const-string v4, "border"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lyads/f51;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/ni1;->c:Lyads/xr2;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "capture_focus_on_action"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    if-nez v3, :cond_2

    move-object/from16 v26, v7

    goto :goto_1

    :cond_2
    move-object/from16 v26, v3

    :goto_1
    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/ni1;->v:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "column_span"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v27

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    sget-object v4, Lyads/ni1;->p:Lyads/m36;

    sget-object v7, Lyads/ni1;->d:Lyads/xr2;

    const-string v3, "content_alignment_horizontal"

    move-object v5, v13

    move-object/from16 v6, v25

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v13, v7

    goto :goto_2

    :cond_3
    move-object v13, v3

    :goto_2
    sget-object v4, Lyads/ni1;->q:Lyads/m36;

    sget-object v7, Lyads/ni1;->e:Lyads/xr2;

    const-string v3, "content_alignment_vertical"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v15

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v15, v7

    goto :goto_3

    :cond_4
    move-object v15, v3

    :goto_3
    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->O2:Lcl4;

    const-string v4, "disappear_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v25

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "doubletap_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v30

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->a3:Lcl4;

    const-string v4, "extensions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v31

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->j3:Lcl4;

    const-string v4, "filters"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v32

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->y3:Lcl4;

    const-string v4, "focus"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v33, v3

    check-cast v33, Lyads/hf1;

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->H3:Lcl4;

    const-string v4, "functions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v34

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->T6:Lcl4;

    const-string v4, "height"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/x02;

    if-nez v3, :cond_5

    sget-object v3, Lyads/ni1;->f:Lyads/w02;

    :cond_5
    move-object/from16 v35, v3

    sget-object v7, Lyads/ni1;->g:Lyads/xr2;

    const-string v3, "high_priority_preview_show"

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_6

    move-object/from16 v36, v7

    goto :goto_4

    :cond_6
    move-object/from16 v36, v3

    :goto_4
    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "hover_end_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v37

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "hover_start_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v38

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v39, v3

    check-cast v39, Ljava/lang/String;

    sget-object v4, Lyads/w36;->e:Lyads/v36;

    sget-object v5, Lyads/bt4;->b:Lnl3;

    const-string v3, "image_url"

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v40

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->J4:Lcl4;

    const-string v4, "layout_provider"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v41, v3

    check-cast v41, Lyads/to1;

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "longtap_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v42

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->X2:Lcl4;

    const-string v4, "margins"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v43, v3

    check-cast v43, Lyads/yc1;

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->X2:Lcl4;

    const-string v4, "paddings"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v44, v3

    check-cast v44, Lyads/yc1;

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v5, Lyads/bt4;->a:Lnl3;

    sget-object v7, Lyads/ni1;->h:Lyads/xr2;

    const-string v3, "placeholder_color"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_7

    move-object/from16 v45, v7

    goto :goto_5

    :cond_7
    move-object/from16 v45, v3

    :goto_5
    sget-object v7, Lyads/ni1;->i:Lyads/xr2;

    const-string v3, "preload_required"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v46, v8

    move-object v8, v4

    move-object/from16 v4, v23

    move-object/from16 v23, v9

    move-object v9, v5

    move-object/from16 v5, v24

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object/from16 v24, v6

    if-nez v3, :cond_8

    move-object/from16 v47, v7

    goto :goto_6

    :cond_8
    move-object/from16 v47, v3

    :goto_6
    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "press_end_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v48

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "press_start_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v49

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const-string v4, "preview"

    invoke-static {v1, v2, v4, v3}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v50

    const-string v4, "reuse_id"

    invoke-static {v1, v2, v4, v3}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v51

    sget-object v6, Lyads/ni1;->w:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "row_span"

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v28

    sget-object v4, Lyads/ni1;->r:Lyads/m36;

    sget-object v5, Lyads/vi1;->d:Lnl3;

    sget-object v7, Lyads/ni1;->j:Lyads/xr2;

    const-string v3, "scale"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, v24

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_9

    move-object/from16 v24, v7

    goto :goto_7

    :cond_9
    move-object/from16 v24, v3

    :goto_7
    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "selected_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v29

    const-string v3, "tint_color"

    invoke-static {v1, v2, v3, v8, v9}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v8

    sget-object v4, Lyads/ni1;->s:Lyads/m36;

    sget-object v5, Lyads/y41;->d:Lnl3;

    sget-object v7, Lyads/ni1;->k:Lyads/xr2;

    const-string v3, "tint_mode"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_a

    move-object v9, v7

    goto :goto_8

    :cond_a
    move-object v9, v3

    :goto_8
    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->O8:Lcl4;

    const-string v4, "tooltips"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v52

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->R8:Lcl4;

    const-string v4, "transform"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v53, v3

    check-cast v53, Lyads/bd2;

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->U1:Lcl4;

    const-string v4, "transition_change"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v54, v3

    check-cast v54, Lyads/j61;

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->z1:Lcl4;

    const-string v4, "transition_in"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v55, v3

    check-cast v55, Lyads/s21;

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->z1:Lcl4;

    const-string v4, "transition_out"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v56, v3

    check-cast v56, Lyads/s21;

    sget-object v4, Lyads/pd2;->d:Lnl3;

    sget-object v5, Lyads/ni1;->x:Lyads/st3;

    const-string v3, "transition_triggers"

    invoke-static/range {v1 .. v6}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/st3;Lyads/l66;)Ljava/util/List;

    move-result-object v57

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->U8:Lcl4;

    const-string v4, "variable_triggers"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v58

    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->a9:Lcl4;

    const-string v4, "variables"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v59

    sget-object v4, Lyads/ni1;->t:Lyads/m36;

    sget-object v5, Lyads/ri2;->d:Lnl3;

    sget-object v7, Lyads/ni1;->l:Lyads/xr2;

    const-string v3, "visibility"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_9

    :cond_b
    move-object v7, v3

    :goto_9
    iget-object v3, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->m9:Lcl4;

    const-string v4, "visibility_action"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/si2;

    iget-object v4, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v4, v4, Lyads/tq3;->m9:Lcl4;

    const-string v5, "visibility_actions"

    invoke-static {v1, v2, v5, v4}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v4

    iget-object v0, v0, Lyads/ki1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->T6:Lcl4;

    const-string v5, "width"

    invoke-static {v1, v2, v5, v0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/x02;

    if-nez v0, :cond_c

    sget-object v0, Lyads/ni1;->m:Lyads/v02;

    :cond_c
    move-object/from16 v1, v55

    move-object/from16 v55, v0

    move-object/from16 v0, v46

    move-object/from16 v46, v54

    move-object/from16 v54, v4

    move-object v4, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v34

    move-object/from16 v34, v47

    move-object/from16 v47, v1

    move-object/from16 v1, v53

    move-object/from16 v53, v3

    move-object v3, v11

    move-object/from16 v11, v21

    move-object/from16 v21, v33

    move-object/from16 v33, v45

    move-object/from16 v45, v1

    move-object/from16 v1, v42

    move-object/from16 v42, v8

    move-object/from16 v8, v18

    move-object/from16 v18, v30

    move-object/from16 v30, v1

    move-object/from16 v1, v43

    move-object/from16 v43, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v31

    move-object/from16 v31, v1

    move-object/from16 v1, v41

    move-object/from16 v41, v29

    move-object/from16 v29, v1

    move-object v2, v10

    move-object v5, v14

    move-object/from16 v6, v16

    move-object/from16 v10, v20

    move-object/from16 v1, v23

    move-object/from16 v14, v27

    move-object/from16 v20, v32

    move-object/from16 v23, v35

    move-object/from16 v27, v39

    move-object/from16 v32, v44

    move-object/from16 v35, v48

    move-object/from16 v44, v52

    move-object/from16 v48, v56

    move-object/from16 v52, v7

    move-object/from16 v16, v15

    move-object/from16 v7, v17

    move-object/from16 v17, v25

    move-object/from16 v39, v28

    move-object/from16 v25, v37

    move-object/from16 v28, v40

    move-object/from16 v37, v50

    move-object/from16 v50, v58

    move-object v15, v13

    move-object/from16 v40, v24

    move-object/from16 v13, v26

    move-object/from16 v24, v36

    move-object/from16 v26, v38

    move-object/from16 v36, v49

    move-object/from16 v38, v51

    move-object/from16 v49, v57

    move-object/from16 v51, v59

    invoke-direct/range {v0 .. v55}, Lyads/zh1;-><init>(Lyads/mr0;Lyads/xr0;Lyads/k11;Ljava/util/List;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/od1;Lyads/b31;Ljava/util/List;Lyads/f51;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/hf1;Ljava/util/List;Lyads/x02;Lyads/as2;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lyads/as2;Lyads/to1;Ljava/util/List;Lyads/yc1;Lyads/yc1;Lyads/as2;Lyads/as2;Ljava/util/List;Ljava/util/List;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/bd2;Lyads/j61;Lyads/s21;Lyads/s21;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/as2;Lyads/si2;Ljava/util/List;Lyads/x02;)V

    move-object/from16 v46, v0

    return-object v46
.end method
