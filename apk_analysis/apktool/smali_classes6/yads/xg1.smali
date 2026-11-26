.class public final Lyads/xg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xg1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/bh1;Lorg/json/JSONObject;)Lyads/bh1;
    .locals 52

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v2

    new-instance v10, Lyads/bh1;

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lyads/bh1;->a:Lyads/zw2;

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, v11

    :goto_0
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->I:Lcl4;

    const-string v4, "accessibility"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v12

    sget-object v3, Lyads/zg1;->l:Lyads/m36;

    if-eqz v1, :cond_1

    iget-object v4, v1, Lyads/bh1;->b:Lyads/zw2;

    move-object v7, v4

    goto :goto_1

    :cond_1
    move-object v7, v11

    :goto_1
    sget-object v8, Lyads/f11;->d:Lnl3;

    sget-object v9, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "alignment_horizontal"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v13

    move v5, v6

    sget-object v3, Lyads/zg1;->m:Lyads/m36;

    if-eqz v1, :cond_2

    iget-object v4, v1, Lyads/bh1;->c:Lyads/zw2;

    move-object v7, v4

    goto :goto_2

    :cond_2
    move-object v7, v11

    :goto_2
    sget-object v8, Lyads/h11;->d:Lnl3;

    const-string v4, "alignment_vertical"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v14

    move v5, v6

    move-object v15, v9

    sget-object v3, Lyads/w36;->d:Lyads/r36;

    if-eqz v1, :cond_3

    iget-object v4, v1, Lyads/bh1;->d:Lyads/zw2;

    move-object v7, v4

    goto :goto_3

    :cond_3
    move-object v7, v11

    :goto_3
    sget-object v8, Lyads/bt4;->d:Lnl3;

    sget-object v9, Lyads/zg1;->s:Lyads/l66;

    const-string v4, "alpha"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v16

    move v5, v6

    if-eqz v1, :cond_4

    iget-object v3, v1, Lyads/bh1;->e:Lyads/zw2;

    move-object v6, v3

    goto :goto_4

    :cond_4
    move-object v6, v11

    :goto_4
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->u1:Lcl4;

    const-string v4, "animators"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v17

    if-eqz v1, :cond_5

    iget-object v3, v1, Lyads/bh1;->f:Lyads/zw2;

    move-object v6, v3

    goto :goto_5

    :cond_5
    move-object v6, v11

    :goto_5
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->G1:Lcl4;

    const-string v4, "background"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v18

    if-eqz v1, :cond_6

    iget-object v3, v1, Lyads/bh1;->g:Lyads/zw2;

    move-object v6, v3

    goto :goto_6

    :cond_6
    move-object v6, v11

    :goto_6
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->M1:Lcl4;

    const-string v4, "border"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v19

    sget-object v3, Lyads/w36;->b:Lyads/s36;

    if-eqz v1, :cond_7

    iget-object v4, v1, Lyads/bh1;->h:Lyads/zw2;

    move-object v7, v4

    goto :goto_7

    :cond_7
    move-object v7, v11

    :goto_7
    sget-object v8, Lyads/bt4;->e:Lnl3;

    sget-object v9, Lyads/zg1;->t:Lyads/l66;

    const-string v4, "column_count"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v20

    move-object v3, v5

    move v5, v6

    if-eqz v1, :cond_8

    iget-object v4, v1, Lyads/bh1;->i:Lyads/zw2;

    move-object v7, v4

    goto :goto_8

    :cond_8
    move-object v7, v11

    :goto_8
    sget-object v9, Lyads/zg1;->u:Lyads/l66;

    const-string v4, "column_span"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v21

    move-object/from16 v22, v5

    move v5, v6

    move-object/from16 v23, v8

    sget-object v3, Lyads/zg1;->n:Lyads/m36;

    if-eqz v1, :cond_9

    iget-object v4, v1, Lyads/bh1;->j:Lyads/zw2;

    move-object v7, v4

    goto :goto_9

    :cond_9
    move-object v7, v11

    :goto_9
    sget-object v8, Lyads/hg1;->d:Lnl3;

    const-string v4, "cross_content_alignment"

    move v6, v5

    move-object v9, v15

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v15

    move v5, v6

    move-object/from16 v24, v9

    if-eqz v1, :cond_a

    iget-object v3, v1, Lyads/bh1;->k:Lyads/zw2;

    move-object v7, v3

    goto :goto_a

    :cond_a
    move-object v7, v11

    :goto_a
    sget-object v9, Lyads/zg1;->v:Lyads/l66;

    const-string v4, "cross_spacing"

    move-object/from16 v3, p3

    move v6, v5

    move-object/from16 v5, v22

    move-object/from16 v8, v23

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v22

    move-object v3, v5

    move v5, v6

    if-eqz v1, :cond_b

    iget-object v4, v1, Lyads/bh1;->l:Lyads/zw2;

    move-object v7, v4

    goto :goto_b

    :cond_b
    move-object v7, v11

    :goto_b
    sget-object v9, Lyads/zg1;->w:Lyads/l66;

    const-string v4, "default_item"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v23

    move-object v9, v8

    move-object v8, v5

    move v5, v6

    if-eqz v1, :cond_c

    iget-object v3, v1, Lyads/bh1;->m:Lyads/zw2;

    move-object v6, v3

    goto :goto_c

    :cond_c
    move-object v6, v11

    :goto_c
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->P2:Lcl4;

    const-string v4, "disappear_actions"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v25

    if-eqz v1, :cond_d

    iget-object v3, v1, Lyads/bh1;->n:Lyads/zw2;

    move-object v6, v3

    goto :goto_d

    :cond_d
    move-object v6, v11

    :goto_d
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->b3:Lcl4;

    const-string v4, "extensions"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v26

    if-eqz v1, :cond_e

    iget-object v3, v1, Lyads/bh1;->o:Lyads/zw2;

    move-object v6, v3

    goto :goto_e

    :cond_e
    move-object v6, v11

    :goto_e
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->z3:Lcl4;

    const-string v4, "focus"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v27

    if-eqz v1, :cond_f

    iget-object v3, v1, Lyads/bh1;->p:Lyads/zw2;

    move-object v6, v3

    goto :goto_f

    :cond_f
    move-object v6, v11

    :goto_f
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->I3:Lcl4;

    const-string v4, "functions"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v28

    if-eqz v1, :cond_10

    iget-object v3, v1, Lyads/bh1;->q:Lyads/zw2;

    move-object v6, v3

    goto :goto_10

    :cond_10
    move-object v6, v11

    :goto_10
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->U6:Lcl4;

    const-string v4, "height"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v29

    if-eqz v1, :cond_11

    iget-object v3, v1, Lyads/bh1;->r:Lyads/zw2;

    goto :goto_11

    :cond_11
    move-object v3, v11

    :goto_11
    const-string v4, "id"

    move-object/from16 v6, p3

    invoke-static {v2, v6, v4, v5, v3}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v30

    if-eqz v1, :cond_12

    iget-object v3, v1, Lyads/bh1;->s:Lyads/zw2;

    goto :goto_12

    :cond_12
    move-object v3, v11

    :goto_12
    iget-object v4, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v4, Lyads/tq3;->e2:Lcl4;

    const-string v4, "item_builder"

    move-object/from16 v51, v6

    move-object v6, v3

    move-object/from16 v3, v51

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v31

    if-eqz v1, :cond_13

    iget-object v3, v1, Lyads/bh1;->t:Lyads/zw2;

    move-object v7, v3

    :goto_13
    move-object v3, v8

    move-object v8, v9

    goto :goto_14

    :cond_13
    move-object v7, v11

    goto :goto_13

    :goto_14
    sget-object v9, Lyads/zg1;->x:Lyads/l66;

    const-string v4, "item_spacing"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v32

    move-object/from16 v33, v5

    move v5, v6

    move-object/from16 v34, v8

    if-eqz v1, :cond_14

    iget-object v3, v1, Lyads/bh1;->u:Lyads/zw2;

    move-object v6, v3

    goto :goto_15

    :cond_14
    move-object v6, v11

    :goto_15
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->t9:Lcl4;

    const-string v4, "items"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v35

    if-eqz v1, :cond_15

    iget-object v3, v1, Lyads/bh1;->v:Lyads/zw2;

    move-object v6, v3

    goto :goto_16

    :cond_15
    move-object v6, v11

    :goto_16
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->K4:Lcl4;

    const-string v4, "layout_provider"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v36

    if-eqz v1, :cond_16

    iget-object v3, v1, Lyads/bh1;->w:Lyads/zw2;

    move-object v6, v3

    goto :goto_17

    :cond_16
    move-object v6, v11

    :goto_17
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->Y2:Lcl4;

    const-string v4, "margins"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v37

    sget-object v3, Lyads/zg1;->o:Lyads/m36;

    if-eqz v1, :cond_17

    iget-object v4, v1, Lyads/bh1;->x:Lyads/zw2;

    move-object v7, v4

    goto :goto_18

    :cond_17
    move-object v7, v11

    :goto_18
    sget-object v8, Lyads/jg1;->d:Lnl3;

    const-string v4, "orientation"

    move v6, v5

    move-object/from16 v9, v24

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v24

    move v5, v6

    if-eqz v1, :cond_18

    iget-object v3, v1, Lyads/bh1;->y:Lyads/zw2;

    move-object v6, v3

    goto :goto_19

    :cond_18
    move-object v6, v11

    :goto_19
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->Y2:Lcl4;

    const-string v4, "paddings"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v38

    sget-object v3, Lyads/w36;->a:Lyads/o36;

    if-eqz v1, :cond_19

    iget-object v4, v1, Lyads/bh1;->z:Lyads/zw2;

    move-object v7, v4

    goto :goto_1a

    :cond_19
    move-object v7, v11

    :goto_1a
    sget-object v8, Lyads/bt4;->c:Lnl3;

    const-string v4, "restrict_parent_scroll"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v39

    move v5, v6

    move-object/from16 v40, v9

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    if-eqz v1, :cond_1a

    iget-object v4, v1, Lyads/bh1;->A:Lyads/zw2;

    move-object v7, v4

    goto :goto_1b

    :cond_1a
    move-object v7, v11

    :goto_1b
    const-string v4, "reuse_id"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v41

    move v5, v6

    if-eqz v1, :cond_1b

    iget-object v3, v1, Lyads/bh1;->B:Lyads/zw2;

    move-object v7, v3

    goto :goto_1c

    :cond_1b
    move-object v7, v11

    :goto_1c
    sget-object v9, Lyads/zg1;->y:Lyads/l66;

    const-string v4, "row_span"

    move-object/from16 v3, p3

    move v6, v5

    move-object/from16 v5, v33

    move-object/from16 v8, v34

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v34

    move v5, v6

    sget-object v3, Lyads/zg1;->p:Lyads/m36;

    if-eqz v1, :cond_1c

    iget-object v4, v1, Lyads/bh1;->C:Lyads/zw2;

    move-object v7, v4

    goto :goto_1d

    :cond_1c
    move-object v7, v11

    :goto_1d
    sget-object v8, Lyads/lg1;->d:Lnl3;

    const-string v4, "scroll_mode"

    move v6, v5

    move-object/from16 v9, v40

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v33

    move v5, v6

    sget-object v3, Lyads/zg1;->q:Lyads/m36;

    if-eqz v1, :cond_1d

    iget-object v4, v1, Lyads/bh1;->D:Lyads/zw2;

    move-object v7, v4

    goto :goto_1e

    :cond_1d
    move-object v7, v11

    :goto_1e
    sget-object v8, Lyads/ng1;->d:Lnl3;

    const-string v4, "scrollbar"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v40

    move v5, v6

    if-eqz v1, :cond_1e

    iget-object v3, v1, Lyads/bh1;->E:Lyads/zw2;

    move-object v6, v3

    goto :goto_1f

    :cond_1e
    move-object v6, v11

    :goto_1f
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->l1:Lcl4;

    const-string v4, "selected_actions"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v42

    if-eqz v1, :cond_1f

    iget-object v3, v1, Lyads/bh1;->F:Lyads/zw2;

    move-object v6, v3

    goto :goto_20

    :cond_1f
    move-object v6, v11

    :goto_20
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->P8:Lcl4;

    const-string v4, "tooltips"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v43

    if-eqz v1, :cond_20

    iget-object v3, v1, Lyads/bh1;->G:Lyads/zw2;

    move-object v6, v3

    goto :goto_21

    :cond_20
    move-object v6, v11

    :goto_21
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->S8:Lcl4;

    const-string v4, "transform"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v44

    if-eqz v1, :cond_21

    iget-object v3, v1, Lyads/bh1;->H:Lyads/zw2;

    move-object v6, v3

    goto :goto_22

    :cond_21
    move-object v6, v11

    :goto_22
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->V1:Lcl4;

    const-string v4, "transition_change"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v45

    if-eqz v1, :cond_22

    iget-object v3, v1, Lyads/bh1;->I:Lyads/zw2;

    move-object v6, v3

    goto :goto_23

    :cond_22
    move-object v6, v11

    :goto_23
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->A1:Lcl4;

    const-string v4, "transition_in"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v46

    if-eqz v1, :cond_23

    iget-object v3, v1, Lyads/bh1;->J:Lyads/zw2;

    move-object v6, v3

    goto :goto_24

    :cond_23
    move-object v6, v11

    :goto_24
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->A1:Lcl4;

    const-string v4, "transition_out"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v47

    if-eqz v1, :cond_24

    iget-object v3, v1, Lyads/bh1;->K:Lyads/zw2;

    goto :goto_25

    :cond_24
    move-object v3, v11

    :goto_25
    sget-object v6, Lyads/pd2;->d:Lnl3;

    sget-object v7, Lyads/zg1;->z:Lyads/st3;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v4, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;ZLyads/zw2;Lnl3;Lyads/st3;)Lyads/zw2;

    move-result-object v48

    move v5, v4

    if-eqz v1, :cond_25

    iget-object v3, v1, Lyads/bh1;->L:Lyads/zw2;

    move-object v6, v3

    goto :goto_26

    :cond_25
    move-object v6, v11

    :goto_26
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->V8:Lcl4;

    const-string v4, "variable_triggers"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v49

    if-eqz v1, :cond_26

    iget-object v3, v1, Lyads/bh1;->M:Lyads/zw2;

    move-object v6, v3

    goto :goto_27

    :cond_26
    move-object v6, v11

    :goto_27
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->b9:Lcl4;

    const-string v4, "variables"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v50

    sget-object v3, Lyads/zg1;->r:Lyads/m36;

    if-eqz v1, :cond_27

    iget-object v4, v1, Lyads/bh1;->N:Lyads/zw2;

    move-object v7, v4

    goto :goto_28

    :cond_27
    move-object v7, v11

    :goto_28
    sget-object v8, Lyads/ri2;->d:Lnl3;

    const-string v4, "visibility"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v8

    move v5, v6

    if-eqz v1, :cond_28

    iget-object v3, v1, Lyads/bh1;->O:Lyads/zw2;

    move-object v6, v3

    goto :goto_29

    :cond_28
    move-object v6, v11

    :goto_29
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->n9:Lcl4;

    const-string v4, "visibility_action"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v9

    if-eqz v1, :cond_29

    iget-object v3, v1, Lyads/bh1;->P:Lyads/zw2;

    move-object v6, v3

    goto :goto_2a

    :cond_29
    move-object v6, v11

    :goto_2a
    iget-object v3, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->n9:Lcl4;

    const-string v4, "visibility_actions"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v6

    if-eqz v1, :cond_2a

    iget-object v11, v1, Lyads/bh1;->Q:Lyads/zw2;

    :cond_2a
    move-object v4, v11

    iget-object v0, v0, Lyads/xg1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->U6:Lcl4;

    move v3, v5

    move-object v5, v0

    move-object v0, v2

    const-string v2, "width"

    move-object/from16 v1, p3

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v0

    move-object/from16 v7, v48

    move-object/from16 v48, v6

    move-object v6, v10

    move-object/from16 v10, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v21

    move-object/from16 v21, v27

    move-object/from16 v27, v35

    move-object/from16 v35, v33

    move-object/from16 v33, v41

    move-object/from16 v41, v46

    move-object/from16 v46, v8

    move-object v8, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v25

    move-object/from16 v25, v31

    move-object/from16 v31, v38

    move-object/from16 v38, v43

    move-object/from16 v43, v7

    move-object/from16 v7, v30

    move-object/from16 v30, v24

    move-object/from16 v24, v7

    move-object v7, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    move-object/from16 v22, v28

    move-object/from16 v23, v29

    move-object/from16 v28, v36

    move-object/from16 v29, v37

    move-object/from16 v36, v40

    move-object/from16 v37, v42

    move-object/from16 v40, v45

    move-object/from16 v42, v47

    move-object/from16 v45, v50

    move-object/from16 v47, v9

    move-object v9, v14

    move-object/from16 v14, v20

    move-object/from16 v20, v26

    move-object/from16 v26, v32

    move-object/from16 v32, v39

    move-object/from16 v39, v44

    move-object/from16 v44, v49

    move-object/from16 v49, v0

    invoke-direct/range {v6 .. v49}, Lyads/bh1;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v6
.end method

.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 1

    const/4 v0, 0x0

    .line 996
    invoke-virtual {p0, p1, v0, p2}, Lyads/xg1;->a(Lyads/ys4;Lyads/bh1;Lorg/json/JSONObject;)Lyads/bh1;

    move-result-object p0

    return-object p0
.end method
