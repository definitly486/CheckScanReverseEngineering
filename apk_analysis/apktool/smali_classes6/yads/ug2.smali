.class public final Lyads/ug2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ug2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 923
    check-cast p2, Lyads/lh2;

    invoke-virtual {p0, p1, p2, p3}, Lyads/ug2;->a(Lyads/ys4;Lyads/lh2;Lorg/json/JSONObject;)Lyads/ng2;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/lh2;Lorg/json/JSONObject;)Lyads/ng2;
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    new-instance v10, Lyads/ng2;

    iget-object v2, v9, Lyads/lh2;->a:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->J:Lcl4;

    iget-object v6, v1, Lyads/tq3;->H:Lcl4;

    const-string v4, "accessibility"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lyads/mr0;

    iget-object v2, v9, Lyads/lh2;->b:Lyads/zw2;

    sget-object v5, Lyads/vg2;->j:Lyads/m36;

    sget-object v6, Lyads/f11;->d:Lnl3;

    const-string v4, "alignment_horizontal"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v12

    iget-object v2, v9, Lyads/lh2;->c:Lyads/zw2;

    sget-object v5, Lyads/vg2;->k:Lyads/m36;

    sget-object v6, Lyads/h11;->d:Lnl3;

    const-string v4, "alignment_vertical"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v13

    iget-object v2, v9, Lyads/lh2;->d:Lyads/zw2;

    sget-object v5, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    sget-object v7, Lyads/vg2;->n:Lyads/l66;

    sget-object v8, Lyads/vg2;->a:Lyads/xr2;

    const-string v4, "alpha"

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v2

    :goto_0
    iget-object v2, v9, Lyads/lh2;->e:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->v1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->t1:Lcl4;

    const-string v4, "animators"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v14

    iget-object v2, v9, Lyads/lh2;->f:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->E1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->C1:Lcl4;

    const-string v4, "aspect"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lyads/b31;

    iget-object v2, v9, Lyads/lh2;->g:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/vg2;->b:Lyads/xr2;

    const-string v4, "autostart"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    if-nez v2, :cond_1

    move-object/from16 v18, v7

    goto :goto_1

    :cond_1
    move-object/from16 v18, v2

    :goto_1
    iget-object v2, v9, Lyads/lh2;->h:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->H1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->F1:Lcl4;

    const-string v4, "background"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v19

    iget-object v2, v9, Lyads/lh2;->i:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->N1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->L1:Lcl4;

    const-string v4, "border"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lyads/f51;

    iget-object v2, v9, Lyads/lh2;->j:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "buffering_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v21

    iget-object v2, v9, Lyads/lh2;->k:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/vg2;->o:Lyads/l66;

    const-string v4, "column_span"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v22

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    iget-object v2, v9, Lyads/lh2;->l:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->Q2:Lcl4;

    iget-object v6, v1, Lyads/tq3;->O2:Lcl4;

    const-string v4, "disappear_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v25

    iget-object v2, v9, Lyads/lh2;->m:Lyads/zw2;

    const-string v4, "elapsed_time_variable"

    invoke-static {v1, v2, v3, v4}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Ljava/lang/String;

    iget-object v2, v9, Lyads/lh2;->n:Lyads/zw2;

    iget-object v4, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v4, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v4, Lyads/tq3;->k1:Lcl4;

    const-string v4, "end_actions"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v27

    iget-object v2, v9, Lyads/lh2;->o:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->c3:Lcl4;

    iget-object v6, v1, Lyads/tq3;->a3:Lcl4;

    const-string v4, "extensions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v28

    iget-object v2, v9, Lyads/lh2;->p:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "fatal_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v29

    iget-object v2, v9, Lyads/lh2;->q:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->A3:Lcl4;

    iget-object v6, v1, Lyads/tq3;->y3:Lcl4;

    const-string v4, "focus"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Lyads/hf1;

    iget-object v2, v9, Lyads/lh2;->r:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->J3:Lcl4;

    iget-object v6, v1, Lyads/tq3;->H3:Lcl4;

    const-string v4, "functions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v31

    iget-object v2, v9, Lyads/lh2;->s:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->V6:Lcl4;

    iget-object v6, v1, Lyads/tq3;->T6:Lcl4;

    const-string v4, "height"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/x02;

    if-nez v2, :cond_2

    sget-object v2, Lyads/vg2;->c:Lyads/w02;

    :cond_2
    move-object/from16 v32, v2

    iget-object v2, v9, Lyads/lh2;->t:Lyads/zw2;

    const-string v4, "id"

    invoke-static {v1, v2, v3, v4}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Ljava/lang/String;

    iget-object v2, v9, Lyads/lh2;->u:Lyads/zw2;

    iget-object v4, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v4, Lyads/tq3;->L4:Lcl4;

    iget-object v6, v4, Lyads/tq3;->J4:Lcl4;

    const-string v4, "layout_provider"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Lyads/to1;

    iget-object v2, v9, Lyads/lh2;->v:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->Z2:Lcl4;

    iget-object v6, v1, Lyads/tq3;->X2:Lcl4;

    const-string v4, "margins"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Lyads/yc1;

    iget-object v2, v9, Lyads/lh2;->w:Lyads/zw2;

    sget-object v7, Lyads/vg2;->d:Lyads/xr2;

    const-string v4, "muted"

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_3

    move-object/from16 v36, v7

    goto :goto_2

    :cond_3
    move-object/from16 v36, v2

    :goto_2
    iget-object v2, v9, Lyads/lh2;->x:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->Z2:Lcl4;

    iget-object v6, v1, Lyads/tq3;->X2:Lcl4;

    const-string v4, "paddings"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Lyads/yc1;

    iget-object v2, v9, Lyads/lh2;->y:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "pause_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v38

    iget-object v2, v9, Lyads/lh2;->z:Lyads/zw2;

    const-string v4, "player_settings_payload"

    invoke-static {v1, v2, v3, v4}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Lorg/json/JSONObject;

    iget-object v2, v9, Lyads/lh2;->A:Lyads/zw2;

    sget-object v7, Lyads/vg2;->e:Lyads/xr2;

    const-string v4, "preload_required"

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_4

    move-object/from16 v16, v7

    goto :goto_3

    :cond_4
    move-object/from16 v16, v2

    :goto_3
    iget-object v2, v9, Lyads/lh2;->B:Lyads/zw2;

    sget-object v4, Lyads/w36;->c:Lyads/u36;

    const-string v7, "preview"

    invoke-static {v1, v2, v3, v7, v4}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v17

    iget-object v2, v9, Lyads/lh2;->C:Lyads/zw2;

    sget-object v7, Lyads/vg2;->f:Lyads/xr2;

    move-object/from16 v40, v4

    const-string v4, "repeatable"

    move-object/from16 v41, v8

    move-object/from16 v8, v40

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_5

    move-object/from16 v40, v7

    goto :goto_4

    :cond_5
    move-object/from16 v40, v2

    :goto_4
    iget-object v2, v9, Lyads/lh2;->D:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "resume_actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v42

    iget-object v2, v9, Lyads/lh2;->E:Lyads/zw2;

    const-string v4, "reuse_id"

    invoke-static {v1, v2, v3, v4, v8}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v8

    iget-object v2, v9, Lyads/lh2;->F:Lyads/zw2;

    sget-object v7, Lyads/vg2;->p:Lyads/l66;

    const-string v4, "row_span"

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    invoke-static/range {v1 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v23

    iget-object v2, v9, Lyads/lh2;->G:Lyads/zw2;

    sget-object v5, Lyads/vg2;->l:Lyads/m36;

    sget-object v6, Lyads/yg2;->d:Lnl3;

    sget-object v7, Lyads/vg2;->g:Lyads/xr2;

    const-string v4, "scale"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_6

    move-object/from16 v24, v7

    goto :goto_5

    :cond_6
    move-object/from16 v24, v2

    :goto_5
    iget-object v2, v9, Lyads/lh2;->H:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "selected_actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v43

    iget-object v2, v9, Lyads/lh2;->I:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->Q8:Lcl4;

    iget-object v6, v1, Lyads/tq3;->O8:Lcl4;

    const-string v4, "tooltips"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v44

    iget-object v2, v9, Lyads/lh2;->J:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->T8:Lcl4;

    iget-object v6, v1, Lyads/tq3;->R8:Lcl4;

    const-string v4, "transform"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v45, v2

    check-cast v45, Lyads/bd2;

    iget-object v2, v9, Lyads/lh2;->K:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->W1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->U1:Lcl4;

    const-string v4, "transition_change"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v46, v2

    check-cast v46, Lyads/j61;

    iget-object v2, v9, Lyads/lh2;->L:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->B1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->z1:Lcl4;

    const-string v4, "transition_in"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v47, v2

    check-cast v47, Lyads/s21;

    iget-object v2, v9, Lyads/lh2;->M:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->B1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->z1:Lcl4;

    const-string v4, "transition_out"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v48, v2

    check-cast v48, Lyads/s21;

    iget-object v2, v9, Lyads/lh2;->N:Lyads/zw2;

    sget-object v4, Lyads/pd2;->d:Lnl3;

    sget-object v5, Lyads/vg2;->q:Lyads/st3;

    invoke-static {v1, v2, v3, v4, v5}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Lnl3;Lyads/st3;)Ljava/util/List;

    move-result-object v49

    iget-object v2, v9, Lyads/lh2;->O:Lyads/zw2;

    iget-object v4, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v4, Lyads/tq3;->W8:Lcl4;

    iget-object v6, v4, Lyads/tq3;->U8:Lcl4;

    const-string v4, "variable_triggers"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v50

    iget-object v2, v9, Lyads/lh2;->P:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->c9:Lcl4;

    iget-object v6, v1, Lyads/tq3;->a9:Lcl4;

    const-string v4, "variables"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v51

    iget-object v2, v9, Lyads/lh2;->Q:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->f9:Lcl4;

    iget-object v6, v1, Lyads/tq3;->d9:Lcl4;

    sget-object v7, Lyads/vg2;->r:Lyads/st3;

    const-string v4, "video_sources"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object v52

    iget-object v2, v9, Lyads/lh2;->R:Lyads/zw2;

    sget-object v5, Lyads/vg2;->m:Lyads/m36;

    sget-object v6, Lyads/ri2;->d:Lnl3;

    sget-object v7, Lyads/vg2;->h:Lyads/xr2;

    const-string v4, "visibility"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    move-object v7, v2

    :goto_6
    iget-object v2, v9, Lyads/lh2;->S:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->o9:Lcl4;

    iget-object v6, v1, Lyads/tq3;->m9:Lcl4;

    const-string v4, "visibility_action"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v53, v2

    check-cast v53, Lyads/si2;

    iget-object v2, v9, Lyads/lh2;->T:Lyads/zw2;

    iget-object v1, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->o9:Lcl4;

    iget-object v6, v1, Lyads/tq3;->m9:Lcl4;

    const-string v4, "visibility_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v6

    iget-object v1, v9, Lyads/lh2;->U:Lyads/zw2;

    iget-object v0, v0, Lyads/ug2;->a:Lyads/tq3;

    iget-object v4, v0, Lyads/tq3;->V6:Lcl4;

    iget-object v5, v0, Lyads/tq3;->T6:Lcl4;

    const-string v3, "width"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/x02;

    if-nez v0, :cond_8

    sget-object v0, Lyads/vg2;->i:Lyads/v02;

    :cond_8
    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v5, v14

    move-object/from16 v9, v20

    move-object/from16 v11, v22

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    move-object/from16 v20, v33

    move-object/from16 v22, v35

    move-object/from16 v25, v38

    move-object/from16 v26, v39

    move-object/from16 v4, v41

    move-object/from16 v35, v44

    move-object/from16 v38, v47

    move-object/from16 v39, v48

    move-object/from16 v41, v50

    move-object/from16 v47, v0

    move-object/from16 v44, v7

    move-object v0, v10

    move-object/from16 v27, v16

    move-object/from16 v7, v18

    move-object/from16 v10, v21

    move-object/from16 v33, v24

    move-object/from16 v16, v29

    move-object/from16 v18, v31

    move-object/from16 v21, v34

    move-object/from16 v24, v37

    move-object/from16 v29, v40

    move-object/from16 v34, v43

    move-object/from16 v37, v46

    move-object/from16 v40, v49

    move-object/from16 v43, v52

    move-object/from16 v46, v6

    move-object/from16 v31, v8

    move-object v6, v15

    move-object/from16 v8, v19

    move-object/from16 v15, v28

    move-object/from16 v19, v32

    move-object/from16 v28, v17

    move-object/from16 v32, v23

    move-object/from16 v17, v30

    move-object/from16 v23, v36

    move-object/from16 v30, v42

    move-object/from16 v36, v45

    move-object/from16 v42, v51

    move-object/from16 v45, v53

    invoke-direct/range {v0 .. v47}, Lyads/ng2;-><init>(Lyads/mr0;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/b31;Lyads/as2;Ljava/util/List;Lyads/f51;Ljava/util/List;Lyads/as2;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/hf1;Ljava/util/List;Lyads/x02;Ljava/lang/String;Lyads/to1;Lyads/yc1;Lyads/as2;Lyads/yc1;Ljava/util/List;Lorg/json/JSONObject;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Ljava/util/List;Lyads/bd2;Lyads/j61;Lyads/s21;Lyads/s21;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/as2;Lyads/si2;Ljava/util/List;Lyads/x02;)V

    return-object v0
.end method
