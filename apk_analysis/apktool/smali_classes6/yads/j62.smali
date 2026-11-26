.class public final Lyads/j62;
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

    iput-object p1, p0, Lyads/j62;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 1

    const/4 v0, 0x0

    .line 990
    invoke-virtual {p0, p1, v0, p2}, Lyads/j62;->a(Lyads/ys4;Lyads/y62;Lorg/json/JSONObject;)Lyads/y62;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/y62;Lorg/json/JSONObject;)Lyads/y62;
    .locals 52

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v2

    new-instance v10, Lyads/y62;

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lyads/y62;->a:Lyads/zw2;

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, v11

    :goto_0
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->I:Lcl4;

    const-string v4, "accessibility"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v12

    sget-object v3, Lyads/l62;->m:Lyads/m36;

    if-eqz v1, :cond_1

    iget-object v4, v1, Lyads/y62;->b:Lyads/zw2;

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

    sget-object v3, Lyads/l62;->n:Lyads/m36;

    if-eqz v1, :cond_2

    iget-object v4, v1, Lyads/y62;->c:Lyads/zw2;

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

    iget-object v4, v1, Lyads/y62;->d:Lyads/zw2;

    move-object v7, v4

    goto :goto_3

    :cond_3
    move-object v7, v11

    :goto_3
    sget-object v8, Lyads/bt4;->d:Lnl3;

    sget-object v9, Lyads/l62;->p:Lyads/l66;

    const-string v4, "alpha"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v16

    move v5, v6

    if-eqz v1, :cond_4

    iget-object v3, v1, Lyads/y62;->e:Lyads/zw2;

    move-object v6, v3

    goto :goto_4

    :cond_4
    move-object v6, v11

    :goto_4
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->u1:Lcl4;

    const-string v4, "animators"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v17

    if-eqz v1, :cond_5

    iget-object v3, v1, Lyads/y62;->f:Lyads/zw2;

    move-object v6, v3

    goto :goto_5

    :cond_5
    move-object v6, v11

    :goto_5
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->G1:Lcl4;

    const-string v4, "background"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v18

    if-eqz v1, :cond_6

    iget-object v3, v1, Lyads/y62;->g:Lyads/zw2;

    move-object v6, v3

    goto :goto_6

    :cond_6
    move-object v6, v11

    :goto_6
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->M1:Lcl4;

    const-string v4, "border"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v19

    sget-object v3, Lyads/w36;->b:Lyads/s36;

    if-eqz v1, :cond_7

    iget-object v4, v1, Lyads/y62;->h:Lyads/zw2;

    move-object v7, v4

    goto :goto_7

    :cond_7
    move-object v7, v11

    :goto_7
    sget-object v8, Lyads/bt4;->e:Lnl3;

    sget-object v9, Lyads/l62;->q:Lyads/l66;

    const-string v4, "column_span"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v20

    move-object/from16 v21, v5

    move v5, v6

    move-object/from16 v22, v8

    if-eqz v1, :cond_8

    iget-object v3, v1, Lyads/y62;->i:Lyads/zw2;

    move-object v6, v3

    goto :goto_8

    :cond_8
    move-object v6, v11

    :goto_8
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->P2:Lcl4;

    const-string v4, "disappear_actions"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v23

    sget-object v3, Lyads/w36;->a:Lyads/o36;

    if-eqz v1, :cond_9

    iget-object v4, v1, Lyads/y62;->j:Lyads/zw2;

    move-object v7, v4

    goto :goto_9

    :cond_9
    move-object v7, v11

    :goto_9
    sget-object v8, Lyads/bt4;->c:Lnl3;

    const-string v4, "dynamic_height"

    move v6, v5

    move-object v9, v15

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v15

    move-object/from16 v24, v8

    move-object v8, v5

    move v5, v6

    if-eqz v1, :cond_a

    iget-object v3, v1, Lyads/y62;->k:Lyads/zw2;

    move-object v6, v3

    goto :goto_a

    :cond_a
    move-object v6, v11

    :goto_a
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->b3:Lcl4;

    const-string v4, "extensions"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v25

    if-eqz v1, :cond_b

    iget-object v3, v1, Lyads/y62;->l:Lyads/zw2;

    move-object v6, v3

    goto :goto_b

    :cond_b
    move-object v6, v11

    :goto_b
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->z3:Lcl4;

    const-string v4, "focus"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v26

    if-eqz v1, :cond_c

    iget-object v3, v1, Lyads/y62;->m:Lyads/zw2;

    move-object v6, v3

    goto :goto_c

    :cond_c
    move-object v6, v11

    :goto_c
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->I3:Lcl4;

    const-string v4, "functions"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v27

    if-eqz v1, :cond_d

    iget-object v3, v1, Lyads/y62;->n:Lyads/zw2;

    move-object v7, v3

    goto :goto_d

    :cond_d
    move-object v7, v11

    :goto_d
    const-string v4, "has_separator"

    move-object/from16 v3, p3

    move v6, v5

    move-object v5, v8

    move-object/from16 v8, v24

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v24

    move-object/from16 v28, v5

    move v5, v6

    move-object/from16 v29, v8

    if-eqz v1, :cond_e

    iget-object v3, v1, Lyads/y62;->o:Lyads/zw2;

    move-object v6, v3

    goto :goto_e

    :cond_e
    move-object v6, v11

    :goto_e
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->U6:Lcl4;

    const-string v4, "height"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v30

    if-eqz v1, :cond_f

    iget-object v3, v1, Lyads/y62;->p:Lyads/zw2;

    goto :goto_f

    :cond_f
    move-object v3, v11

    :goto_f
    const-string v4, "id"

    move-object/from16 v6, p3

    invoke-static {v2, v6, v4, v5, v3}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v31

    if-eqz v1, :cond_10

    iget-object v3, v1, Lyads/y62;->q:Lyads/zw2;

    goto :goto_10

    :cond_10
    move-object v3, v11

    :goto_10
    iget-object v4, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v4, Lyads/tq3;->T7:Lcl4;

    sget-object v8, Lyads/l62;->r:Lyads/st3;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "items"

    move-object/from16 v51, v6

    move-object v6, v3

    move-object/from16 v3, v51

    invoke-static/range {v2 .. v8}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;Lyads/st3;)Lyads/zw2;

    move-result-object v32

    if-eqz v1, :cond_11

    iget-object v3, v1, Lyads/y62;->r:Lyads/zw2;

    move-object v6, v3

    goto :goto_11

    :cond_11
    move-object v6, v11

    :goto_11
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->K4:Lcl4;

    const-string v4, "layout_provider"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v33

    if-eqz v1, :cond_12

    iget-object v3, v1, Lyads/y62;->s:Lyads/zw2;

    move-object v6, v3

    goto :goto_12

    :cond_12
    move-object v6, v11

    :goto_12
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->Y2:Lcl4;

    const-string v4, "margins"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v34

    if-eqz v1, :cond_13

    iget-object v3, v1, Lyads/y62;->t:Lyads/zw2;

    move-object v6, v3

    goto :goto_13

    :cond_13
    move-object v6, v11

    :goto_13
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->Y2:Lcl4;

    const-string v4, "paddings"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v35

    if-eqz v1, :cond_14

    iget-object v3, v1, Lyads/y62;->u:Lyads/zw2;

    move-object v7, v3

    goto :goto_14

    :cond_14
    move-object v7, v11

    :goto_14
    const-string v4, "restrict_parent_scroll"

    move-object/from16 v3, p3

    move v6, v5

    move-object/from16 v5, v28

    move-object/from16 v8, v29

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v28

    move-object/from16 v36, v5

    move v5, v6

    move-object/from16 v37, v8

    move-object/from16 v29, v9

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    if-eqz v1, :cond_15

    iget-object v4, v1, Lyads/y62;->v:Lyads/zw2;

    move-object v7, v4

    goto :goto_15

    :cond_15
    move-object v7, v11

    :goto_15
    const-string v4, "reuse_id"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v38

    move v5, v6

    if-eqz v1, :cond_16

    iget-object v3, v1, Lyads/y62;->w:Lyads/zw2;

    move-object v7, v3

    goto :goto_16

    :cond_16
    move-object v7, v11

    :goto_16
    sget-object v9, Lyads/l62;->s:Lyads/l66;

    const-string v4, "row_span"

    move-object/from16 v3, p3

    move v6, v5

    move-object/from16 v5, v21

    move-object/from16 v8, v22

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v21

    move-object v8, v5

    move v5, v6

    if-eqz v1, :cond_17

    iget-object v3, v1, Lyads/y62;->x:Lyads/zw2;

    move-object v6, v3

    goto :goto_17

    :cond_17
    move-object v6, v11

    :goto_17
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->l1:Lcl4;

    const-string v4, "selected_actions"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v39

    if-eqz v1, :cond_18

    iget-object v3, v1, Lyads/y62;->y:Lyads/zw2;

    move-object v7, v3

    goto :goto_18

    :cond_18
    move-object v7, v11

    :goto_18
    sget-object v9, Lyads/l62;->t:Lyads/l66;

    const-string v4, "selected_tab"

    move-object/from16 v3, p3

    move v6, v5

    move-object v5, v8

    move-object/from16 v8, v22

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v22

    move v5, v6

    sget-object v3, Lyads/w36;->f:Lyads/p36;

    if-eqz v1, :cond_19

    iget-object v4, v1, Lyads/y62;->z:Lyads/zw2;

    move-object v7, v4

    goto :goto_19

    :cond_19
    move-object v7, v11

    :goto_19
    sget-object v8, Lyads/bt4;->a:Lnl3;

    const-string v4, "separator_color"

    move v6, v5

    move-object/from16 v9, v29

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v29

    move v5, v6

    if-eqz v1, :cond_1a

    iget-object v3, v1, Lyads/y62;->A:Lyads/zw2;

    move-object v6, v3

    goto :goto_1a

    :cond_1a
    move-object v6, v11

    :goto_1a
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->Y2:Lcl4;

    const-string v4, "separator_paddings"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v40

    if-eqz v1, :cond_1b

    iget-object v3, v1, Lyads/y62;->B:Lyads/zw2;

    move-object v7, v3

    goto :goto_1b

    :cond_1b
    move-object v7, v11

    :goto_1b
    const-string v4, "switch_tabs_by_content_swipe_enabled"

    move-object/from16 v3, p3

    move v6, v5

    move-object/from16 v5, v36

    move-object/from16 v8, v37

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v36

    move v5, v6

    if-eqz v1, :cond_1c

    iget-object v3, v1, Lyads/y62;->C:Lyads/zw2;

    move-object v6, v3

    goto :goto_1c

    :cond_1c
    move-object v6, v11

    :goto_1c
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->Q7:Lcl4;

    const-string v4, "tab_title_delimiter"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v37

    if-eqz v1, :cond_1d

    iget-object v3, v1, Lyads/y62;->D:Lyads/zw2;

    move-object v6, v3

    goto :goto_1d

    :cond_1d
    move-object v6, v11

    :goto_1d
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->N7:Lcl4;

    const-string v4, "tab_title_style"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v41

    if-eqz v1, :cond_1e

    iget-object v3, v1, Lyads/y62;->E:Lyads/zw2;

    move-object v6, v3

    goto :goto_1e

    :cond_1e
    move-object v6, v11

    :goto_1e
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->Y2:Lcl4;

    const-string v4, "title_paddings"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v42

    if-eqz v1, :cond_1f

    iget-object v3, v1, Lyads/y62;->F:Lyads/zw2;

    move-object v6, v3

    goto :goto_1f

    :cond_1f
    move-object v6, v11

    :goto_1f
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->P8:Lcl4;

    const-string v4, "tooltips"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v43

    if-eqz v1, :cond_20

    iget-object v3, v1, Lyads/y62;->G:Lyads/zw2;

    move-object v6, v3

    goto :goto_20

    :cond_20
    move-object v6, v11

    :goto_20
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->S8:Lcl4;

    const-string v4, "transform"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v44

    if-eqz v1, :cond_21

    iget-object v3, v1, Lyads/y62;->H:Lyads/zw2;

    move-object v6, v3

    goto :goto_21

    :cond_21
    move-object v6, v11

    :goto_21
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->V1:Lcl4;

    const-string v4, "transition_change"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v45

    if-eqz v1, :cond_22

    iget-object v3, v1, Lyads/y62;->I:Lyads/zw2;

    move-object v6, v3

    goto :goto_22

    :cond_22
    move-object v6, v11

    :goto_22
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->A1:Lcl4;

    const-string v4, "transition_in"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v46

    if-eqz v1, :cond_23

    iget-object v3, v1, Lyads/y62;->J:Lyads/zw2;

    move-object v6, v3

    goto :goto_23

    :cond_23
    move-object v6, v11

    :goto_23
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->A1:Lcl4;

    const-string v4, "transition_out"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v47

    if-eqz v1, :cond_24

    iget-object v3, v1, Lyads/y62;->K:Lyads/zw2;

    goto :goto_24

    :cond_24
    move-object v3, v11

    :goto_24
    sget-object v6, Lyads/pd2;->d:Lnl3;

    sget-object v7, Lyads/l62;->u:Lyads/st3;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v4, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;ZLyads/zw2;Lnl3;Lyads/st3;)Lyads/zw2;

    move-result-object v48

    move v5, v4

    if-eqz v1, :cond_25

    iget-object v3, v1, Lyads/y62;->L:Lyads/zw2;

    move-object v6, v3

    goto :goto_25

    :cond_25
    move-object v6, v11

    :goto_25
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->V8:Lcl4;

    const-string v4, "variable_triggers"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v49

    if-eqz v1, :cond_26

    iget-object v3, v1, Lyads/y62;->M:Lyads/zw2;

    move-object v6, v3

    goto :goto_26

    :cond_26
    move-object v6, v11

    :goto_26
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->b9:Lcl4;

    const-string v4, "variables"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v50

    sget-object v3, Lyads/l62;->o:Lyads/m36;

    if-eqz v1, :cond_27

    iget-object v4, v1, Lyads/y62;->N:Lyads/zw2;

    move-object v7, v4

    goto :goto_27

    :cond_27
    move-object v7, v11

    :goto_27
    sget-object v8, Lyads/ri2;->d:Lnl3;

    const-string v4, "visibility"

    move v6, v5

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v8

    move v5, v6

    if-eqz v1, :cond_28

    iget-object v3, v1, Lyads/y62;->O:Lyads/zw2;

    move-object v6, v3

    goto :goto_28

    :cond_28
    move-object v6, v11

    :goto_28
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->n9:Lcl4;

    const-string v4, "visibility_action"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v9

    if-eqz v1, :cond_29

    iget-object v3, v1, Lyads/y62;->P:Lyads/zw2;

    move-object v6, v3

    goto :goto_29

    :cond_29
    move-object v6, v11

    :goto_29
    iget-object v3, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->n9:Lcl4;

    const-string v4, "visibility_actions"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v6

    if-eqz v1, :cond_2a

    iget-object v11, v1, Lyads/y62;->Q:Lyads/zw2;

    :cond_2a
    move-object v4, v11

    iget-object v0, v0, Lyads/j62;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->U6:Lcl4;

    move v3, v5

    move-object v5, v0

    move-object v0, v2

    const-string v2, "width"

    move-object/from16 v1, p3

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v0

    move-object/from16 v7, v31

    move-object/from16 v31, v22

    move-object/from16 v22, v7

    move-object v7, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v17, v25

    move-object/from16 v18, v26

    move-object/from16 v25, v34

    move-object/from16 v26, v35

    move-object/from16 v34, v36

    move-object/from16 v35, v37

    move-object/from16 v36, v41

    move-object/from16 v37, v42

    move-object/from16 v41, v46

    move-object/from16 v42, v47

    move-object/from16 v46, v8

    move-object/from16 v47, v9

    move-object v8, v13

    move-object v9, v14

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    move-object/from16 v20, v24

    move-object/from16 v19, v27

    move-object/from16 v27, v28

    move-object/from16 v24, v33

    move-object/from16 v28, v38

    move-object/from16 v33, v40

    move-object/from16 v38, v43

    move-object/from16 v40, v45

    move-object/from16 v43, v48

    move-object/from16 v45, v50

    move-object/from16 v48, v6

    move-object v6, v10

    move-object/from16 v10, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v23

    move-object/from16 v23, v32

    move-object/from16 v32, v29

    move-object/from16 v29, v21

    move-object/from16 v21, v30

    move-object/from16 v30, v39

    move-object/from16 v39, v44

    move-object/from16 v44, v49

    move-object/from16 v49, v0

    invoke-direct/range {v6 .. v49}, Lyads/y62;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v6
.end method
