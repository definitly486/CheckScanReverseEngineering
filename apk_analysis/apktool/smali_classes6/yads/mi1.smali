.class public final Lyads/mi1;
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

    iput-object p1, p0, Lyads/mi1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 1122
    check-cast p2, Lyads/wi1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/mi1;->a(Lyads/ys4;Lyads/wi1;Lorg/json/JSONObject;)Lyads/zh1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/wi1;Lorg/json/JSONObject;)Lyads/zh1;
    .locals 62

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    new-instance v10, Lyads/zh1;

    iget-object v2, v9, Lyads/wi1;->a:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->J:Lcl4;

    iget-object v6, v1, Lyads/tq3;->H:Lcl4;

    const-string v4, "accessibility"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lyads/mr0;

    iget-object v2, v9, Lyads/wi1;->b:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "action"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lyads/xr0;

    iget-object v2, v9, Lyads/wi1;->c:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->s1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->q1:Lcl4;

    const-string v4, "action_animation"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/k11;

    if-nez v2, :cond_0

    sget-object v2, Lyads/ni1;->a:Lyads/k11;

    :cond_0
    move-object v13, v2

    iget-object v2, v9, Lyads/wi1;->d:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v14

    iget-object v2, v9, Lyads/wi1;->e:Lyads/zw2;

    sget-object v5, Lyads/ni1;->n:Lyads/m36;

    sget-object v6, Lyads/f11;->d:Lnl3;

    const-string v4, "alignment_horizontal"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v15

    move-object/from16 v16, v6

    iget-object v2, v9, Lyads/wi1;->f:Lyads/zw2;

    sget-object v5, Lyads/ni1;->o:Lyads/m36;

    sget-object v6, Lyads/h11;->d:Lnl3;

    const-string v4, "alignment_vertical"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v17

    move-object/from16 v18, v6

    iget-object v2, v9, Lyads/wi1;->g:Lyads/zw2;

    sget-object v5, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    sget-object v7, Lyads/ni1;->u:Lyads/l66;

    sget-object v8, Lyads/ni1;->b:Lyads/xr2;

    const-string v4, "alpha"

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v8, v2

    :goto_0
    iget-object v2, v9, Lyads/wi1;->h:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->v1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->t1:Lcl4;

    const-string v4, "animators"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v19

    iget-object v2, v9, Lyads/wi1;->i:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->f3:Lcl4;

    iget-object v6, v1, Lyads/tq3;->d3:Lcl4;

    const-string v4, "appearance_animation"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lyads/od1;

    iget-object v2, v9, Lyads/wi1;->j:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->E1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->C1:Lcl4;

    const-string v4, "aspect"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lyads/b31;

    iget-object v2, v9, Lyads/wi1;->k:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->H1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->F1:Lcl4;

    const-string v4, "background"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v22

    iget-object v2, v9, Lyads/wi1;->l:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->N1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->L1:Lcl4;

    const-string v4, "border"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lyads/f51;

    iget-object v2, v9, Lyads/wi1;->m:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/ni1;->c:Lyads/xr2;

    const-string v4, "capture_focus_on_action"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    if-nez v2, :cond_2

    move-object/from16 v26, v7

    goto :goto_1

    :cond_2
    move-object/from16 v26, v2

    :goto_1
    iget-object v2, v9, Lyads/wi1;->n:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/ni1;->v:Lyads/l66;

    const-string v4, "column_span"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v27

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    iget-object v2, v9, Lyads/wi1;->o:Lyads/zw2;

    sget-object v5, Lyads/ni1;->p:Lyads/m36;

    sget-object v7, Lyads/ni1;->d:Lyads/xr2;

    const-string v4, "content_alignment_horizontal"

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_3

    move-object/from16 v16, v7

    goto :goto_2

    :cond_3
    move-object/from16 v16, v2

    :goto_2
    iget-object v2, v9, Lyads/wi1;->p:Lyads/zw2;

    sget-object v5, Lyads/ni1;->q:Lyads/m36;

    sget-object v7, Lyads/ni1;->e:Lyads/xr2;

    const-string v4, "content_alignment_vertical"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v6, v18

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_4

    move-object/from16 v18, v7

    goto :goto_3

    :cond_4
    move-object/from16 v18, v2

    :goto_3
    iget-object v2, v9, Lyads/wi1;->q:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->Q2:Lcl4;

    iget-object v6, v1, Lyads/tq3;->O2:Lcl4;

    const-string v4, "disappear_actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v30

    iget-object v2, v9, Lyads/wi1;->r:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "doubletap_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v31

    iget-object v2, v9, Lyads/wi1;->s:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->c3:Lcl4;

    iget-object v6, v1, Lyads/tq3;->a3:Lcl4;

    const-string v4, "extensions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v32

    iget-object v2, v9, Lyads/wi1;->t:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->l3:Lcl4;

    iget-object v6, v1, Lyads/tq3;->j3:Lcl4;

    const-string v4, "filters"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v33

    iget-object v2, v9, Lyads/wi1;->u:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->A3:Lcl4;

    iget-object v6, v1, Lyads/tq3;->y3:Lcl4;

    const-string v4, "focus"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Lyads/hf1;

    iget-object v2, v9, Lyads/wi1;->v:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->J3:Lcl4;

    iget-object v6, v1, Lyads/tq3;->H3:Lcl4;

    const-string v4, "functions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v35

    iget-object v2, v9, Lyads/wi1;->w:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->V6:Lcl4;

    iget-object v6, v1, Lyads/tq3;->T6:Lcl4;

    const-string v4, "height"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/x02;

    if-nez v2, :cond_5

    sget-object v2, Lyads/ni1;->f:Lyads/w02;

    :cond_5
    move-object/from16 v36, v2

    iget-object v2, v9, Lyads/wi1;->x:Lyads/zw2;

    sget-object v7, Lyads/ni1;->g:Lyads/xr2;

    const-string v4, "high_priority_preview_show"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_6

    move-object/from16 v37, v7

    goto :goto_4

    :cond_6
    move-object/from16 v37, v2

    :goto_4
    iget-object v2, v9, Lyads/wi1;->y:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "hover_end_actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v38

    iget-object v2, v9, Lyads/wi1;->z:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "hover_start_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v39

    iget-object v2, v9, Lyads/wi1;->A:Lyads/zw2;

    const-string v4, "id"

    invoke-static {v1, v2, v3, v4}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v40, v2

    check-cast v40, Ljava/lang/String;

    iget-object v2, v9, Lyads/wi1;->B:Lyads/zw2;

    sget-object v5, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    const-string v4, "image_url"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v41

    iget-object v2, v9, Lyads/wi1;->C:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->L4:Lcl4;

    iget-object v6, v1, Lyads/tq3;->J4:Lcl4;

    const-string v4, "layout_provider"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v42, v2

    check-cast v42, Lyads/to1;

    iget-object v2, v9, Lyads/wi1;->D:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "longtap_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v43

    iget-object v2, v9, Lyads/wi1;->E:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->Z2:Lcl4;

    iget-object v6, v1, Lyads/tq3;->X2:Lcl4;

    const-string v4, "margins"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v44, v2

    check-cast v44, Lyads/yc1;

    iget-object v2, v9, Lyads/wi1;->F:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->Z2:Lcl4;

    iget-object v6, v1, Lyads/tq3;->X2:Lcl4;

    const-string v4, "paddings"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v45, v2

    check-cast v45, Lyads/yc1;

    iget-object v2, v9, Lyads/wi1;->G:Lyads/zw2;

    sget-object v5, Lyads/w36;->f:Lyads/p36;

    sget-object v6, Lyads/bt4;->a:Lnl3;

    sget-object v7, Lyads/ni1;->h:Lyads/xr2;

    const-string v4, "placeholder_color"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object/from16 v46, v5

    move-object/from16 v47, v6

    if-nez v2, :cond_7

    move-object/from16 v48, v7

    goto :goto_5

    :cond_7
    move-object/from16 v48, v2

    :goto_5
    iget-object v2, v9, Lyads/wi1;->H:Lyads/zw2;

    sget-object v7, Lyads/ni1;->i:Lyads/xr2;

    const-string v4, "preload_required"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_8

    move-object/from16 v24, v7

    goto :goto_6

    :cond_8
    move-object/from16 v24, v2

    :goto_6
    iget-object v2, v9, Lyads/wi1;->I:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "press_end_actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v25

    iget-object v2, v9, Lyads/wi1;->J:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "press_start_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v49

    iget-object v2, v9, Lyads/wi1;->K:Lyads/zw2;

    sget-object v4, Lyads/w36;->c:Lyads/u36;

    const-string v5, "preview"

    invoke-static {v1, v2, v3, v5, v4}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v50

    iget-object v2, v9, Lyads/wi1;->L:Lyads/zw2;

    const-string v5, "reuse_id"

    invoke-static {v1, v2, v3, v5, v4}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v51

    iget-object v2, v9, Lyads/wi1;->M:Lyads/zw2;

    sget-object v7, Lyads/ni1;->w:Lyads/l66;

    const-string v4, "row_span"

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    invoke-static/range {v1 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v28

    iget-object v2, v9, Lyads/wi1;->N:Lyads/zw2;

    sget-object v5, Lyads/ni1;->r:Lyads/m36;

    sget-object v6, Lyads/vi1;->d:Lnl3;

    sget-object v7, Lyads/ni1;->j:Lyads/xr2;

    const-string v4, "scale"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_9

    move-object/from16 v29, v7

    goto :goto_7

    :cond_9
    move-object/from16 v29, v2

    :goto_7
    iget-object v2, v9, Lyads/wi1;->O:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "selected_actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v52

    iget-object v2, v9, Lyads/wi1;->P:Lyads/zw2;

    const-string v4, "tint_color"

    move-object/from16 v5, v46

    move-object/from16 v6, v47

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v46

    iget-object v2, v9, Lyads/wi1;->Q:Lyads/zw2;

    sget-object v5, Lyads/ni1;->s:Lyads/m36;

    sget-object v6, Lyads/y41;->d:Lnl3;

    sget-object v7, Lyads/ni1;->k:Lyads/xr2;

    const-string v4, "tint_mode"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_a

    move-object/from16 v47, v7

    goto :goto_8

    :cond_a
    move-object/from16 v47, v2

    :goto_8
    iget-object v2, v9, Lyads/wi1;->R:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->Q8:Lcl4;

    iget-object v6, v1, Lyads/tq3;->O8:Lcl4;

    const-string v4, "tooltips"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v53

    iget-object v2, v9, Lyads/wi1;->S:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->T8:Lcl4;

    iget-object v6, v1, Lyads/tq3;->R8:Lcl4;

    const-string v4, "transform"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v54, v2

    check-cast v54, Lyads/bd2;

    iget-object v2, v9, Lyads/wi1;->T:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->W1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->U1:Lcl4;

    const-string v4, "transition_change"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v55, v2

    check-cast v55, Lyads/j61;

    iget-object v2, v9, Lyads/wi1;->U:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->B1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->z1:Lcl4;

    const-string v4, "transition_in"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v56, v2

    check-cast v56, Lyads/s21;

    iget-object v2, v9, Lyads/wi1;->V:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->B1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->z1:Lcl4;

    const-string v4, "transition_out"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v57, v2

    check-cast v57, Lyads/s21;

    iget-object v2, v9, Lyads/wi1;->W:Lyads/zw2;

    sget-object v4, Lyads/pd2;->d:Lnl3;

    sget-object v5, Lyads/ni1;->x:Lyads/st3;

    invoke-static {v1, v2, v3, v4, v5}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Lnl3;Lyads/st3;)Ljava/util/List;

    move-result-object v58

    iget-object v2, v9, Lyads/wi1;->X:Lyads/zw2;

    iget-object v4, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v4, Lyads/tq3;->W8:Lcl4;

    iget-object v6, v4, Lyads/tq3;->U8:Lcl4;

    const-string v4, "variable_triggers"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v59

    iget-object v2, v9, Lyads/wi1;->Y:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->c9:Lcl4;

    iget-object v6, v1, Lyads/tq3;->a9:Lcl4;

    const-string v4, "variables"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v60

    iget-object v2, v9, Lyads/wi1;->Z:Lyads/zw2;

    sget-object v5, Lyads/ni1;->t:Lyads/m36;

    sget-object v6, Lyads/ri2;->d:Lnl3;

    sget-object v7, Lyads/ni1;->l:Lyads/xr2;

    const-string v4, "visibility"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_9

    :cond_b
    move-object v7, v2

    :goto_9
    iget-object v2, v9, Lyads/wi1;->a0:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->o9:Lcl4;

    iget-object v6, v1, Lyads/tq3;->m9:Lcl4;

    const-string v4, "visibility_action"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v61, v2

    check-cast v61, Lyads/si2;

    iget-object v2, v9, Lyads/wi1;->b0:Lyads/zw2;

    iget-object v1, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->o9:Lcl4;

    iget-object v6, v1, Lyads/tq3;->m9:Lcl4;

    const-string v4, "visibility_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v6

    iget-object v1, v9, Lyads/wi1;->c0:Lyads/zw2;

    iget-object v0, v0, Lyads/mi1;->a:Lyads/tq3;

    iget-object v4, v0, Lyads/tq3;->V6:Lcl4;

    iget-object v5, v0, Lyads/tq3;->T6:Lcl4;

    const-string v3, "width"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/x02;

    if-nez v0, :cond_c

    sget-object v0, Lyads/ni1;->m:Lyads/v02;

    :cond_c
    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    move-object/from16 v9, v20

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    move-object/from16 v18, v31

    move-object/from16 v20, v33

    move-object/from16 v22, v35

    move-object/from16 v23, v36

    move-object/from16 v26, v39

    move-object/from16 v27, v40

    move-object/from16 v31, v44

    move-object/from16 v33, v48

    move-object/from16 v36, v49

    move-object/from16 v44, v53

    move-object/from16 v48, v57

    move-object/from16 v49, v58

    move-object/from16 v53, v61

    move-object/from16 v35, v25

    move-object/from16 v39, v28

    move-object/from16 v40, v29

    move-object/from16 v25, v38

    move-object/from16 v28, v41

    move-object/from16 v29, v42

    move-object/from16 v42, v46

    move-object/from16 v38, v51

    move-object/from16 v41, v52

    move-object/from16 v46, v55

    move-object/from16 v51, v60

    move-object/from16 v55, v0

    move-object/from16 v52, v7

    move-object v7, v8

    move-object v0, v10

    move-object/from16 v8, v19

    move-object/from16 v10, v21

    move-object/from16 v19, v32

    move-object/from16 v21, v34

    move-object/from16 v32, v45

    move-object/from16 v45, v54

    move-object/from16 v54, v6

    move-object/from16 v6, v17

    move-object/from16 v34, v24

    move-object/from16 v17, v30

    move-object/from16 v24, v37

    move-object/from16 v30, v43

    move-object/from16 v43, v47

    move-object/from16 v37, v50

    move-object/from16 v47, v56

    move-object/from16 v50, v59

    invoke-direct/range {v0 .. v55}, Lyads/zh1;-><init>(Lyads/mr0;Lyads/xr0;Lyads/k11;Ljava/util/List;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/od1;Lyads/b31;Ljava/util/List;Lyads/f51;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/hf1;Ljava/util/List;Lyads/x02;Lyads/as2;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lyads/as2;Lyads/to1;Ljava/util/List;Lyads/yc1;Lyads/yc1;Lyads/as2;Lyads/as2;Ljava/util/List;Ljava/util/List;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/bd2;Lyads/j61;Lyads/s21;Lyads/s21;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/as2;Lyads/si2;Ljava/util/List;Lyads/x02;)V

    return-object v0
.end method
