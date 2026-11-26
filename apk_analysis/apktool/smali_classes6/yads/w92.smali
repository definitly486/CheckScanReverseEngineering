.class public final Lyads/w92;
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

    iput-object p1, p0, Lyads/w92;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    check-cast v9, Lyads/eb2;

    new-instance v10, Lyads/y72;

    iget-object v2, v9, Lyads/eb2;->a:Lyads/zw2;

    iget-object v1, v0, Lyads/w92;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v11

    iget-object v2, v9, Lyads/eb2;->b:Lyads/zw2;

    sget-object v5, Lyads/x92;->d:Lyads/m36;

    sget-object v6, Lyads/d82;->d:Lnl3;

    const-string v4, "alignment_vertical"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v12

    iget-object v2, v9, Lyads/eb2;->c:Lyads/zw2;

    iget-object v1, v0, Lyads/w92;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->a8:Lcl4;

    iget-object v6, v1, Lyads/tq3;->Y7:Lcl4;

    const-string v4, "background"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lyads/h92;

    iget-object v2, v9, Lyads/eb2;->d:Lyads/zw2;

    sget-object v5, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    sget-object v7, Lyads/x92;->a:Lyads/xr2;

    const-string v4, "baseline_offset"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object v8, v5

    move-object v14, v6

    if-nez v2, :cond_0

    move-object v15, v7

    goto :goto_0

    :cond_0
    move-object v15, v2

    :goto_0
    iget-object v2, v9, Lyads/eb2;->e:Lyads/zw2;

    iget-object v1, v0, Lyads/w92;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->d8:Lcl4;

    iget-object v6, v1, Lyads/tq3;->b8:Lcl4;

    const-string v4, "border"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lyads/o92;

    iget-object v2, v9, Lyads/eb2;->f:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/x92;->i:Lyads/l66;

    const-string v4, "end"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v17

    iget-object v2, v9, Lyads/eb2;->g:Lyads/zw2;

    sget-object v4, Lyads/w36;->c:Lyads/u36;

    const-string v7, "font_family"

    invoke-static {v1, v2, v3, v7, v4}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v18

    iget-object v2, v9, Lyads/eb2;->h:Lyads/zw2;

    const-string v7, "font_feature_settings"

    invoke-static {v1, v2, v3, v7, v4}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v19

    iget-object v2, v9, Lyads/eb2;->i:Lyads/zw2;

    sget-object v7, Lyads/x92;->j:Lyads/l66;

    const-string v4, "font_size"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v20

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    iget-object v2, v9, Lyads/eb2;->j:Lyads/zw2;

    sget-object v5, Lyads/x92;->e:Lyads/m36;

    sget-object v6, Lyads/g12;->d:Lnl3;

    sget-object v7, Lyads/x92;->b:Lyads/xr2;

    const-string v4, "font_size_unit"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_1

    move-object/from16 v23, v7

    goto :goto_1

    :cond_1
    move-object/from16 v23, v2

    :goto_1
    iget-object v2, v9, Lyads/eb2;->k:Lyads/zw2;

    sget-object v4, Lyads/w36;->h:Lyads/q36;

    const-string v5, "font_variation_settings"

    invoke-static {v1, v2, v3, v5, v4}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v24

    iget-object v2, v9, Lyads/eb2;->l:Lyads/zw2;

    sget-object v5, Lyads/x92;->f:Lyads/m36;

    sget-object v6, Lyads/tf1;->d:Lnl3;

    const-string v4, "font_weight"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v25

    iget-object v2, v9, Lyads/eb2;->m:Lyads/zw2;

    sget-object v7, Lyads/x92;->k:Lyads/l66;

    const-string v4, "font_weight_value"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    invoke-static/range {v1 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v21

    move-object v7, v5

    iget-object v2, v9, Lyads/eb2;->n:Lyads/zw2;

    const-string v4, "letter_spacing"

    move-object v5, v8

    move-object v6, v14

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v14

    iget-object v2, v9, Lyads/eb2;->o:Lyads/zw2;

    move-object v5, v7

    sget-object v7, Lyads/x92;->l:Lyads/l66;

    const-string v4, "line_height"

    move-object/from16 v6, v22

    invoke-static/range {v1 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v22

    move-object v7, v5

    move-object v8, v6

    iget-object v2, v9, Lyads/eb2;->p:Lyads/zw2;

    iget-object v1, v0, Lyads/w92;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m8:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k8:Lcl4;

    const-string v4, "mask"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lyads/aa2;

    iget-object v2, v9, Lyads/eb2;->q:Lyads/zw2;

    move-object v5, v7

    sget-object v7, Lyads/x92;->m:Lyads/l66;

    move-object v6, v8

    sget-object v8, Lyads/x92;->c:Lyads/xr2;

    const-string v4, "start"

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object v7, v5

    move-object/from16 v27, v6

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v8, v2

    :goto_2
    iget-object v2, v9, Lyads/eb2;->r:Lyads/zw2;

    sget-object v5, Lyads/x92;->g:Lyads/m36;

    sget-object v6, Lyads/bp1;->d:Lnl3;

    const-string v4, "strike"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v28

    move-object/from16 v29, v6

    iget-object v2, v9, Lyads/eb2;->s:Lyads/zw2;

    sget-object v5, Lyads/w36;->f:Lyads/p36;

    sget-object v6, Lyads/bt4;->a:Lnl3;

    const-string v4, "text_color"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v30

    iget-object v1, v9, Lyads/eb2;->t:Lyads/zw2;

    iget-object v0, v0, Lyads/w92;->a:Lyads/tq3;

    iget-object v4, v0, Lyads/tq3;->J6:Lcl4;

    iget-object v5, v0, Lyads/tq3;->H6:Lcl4;

    const-string v3, "text_shadow"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Lyads/xz1;

    iget-object v1, v9, Lyads/eb2;->u:Lyads/zw2;

    sget-object v6, Lyads/x92;->n:Lyads/l66;

    const-string v3, "top_offset"

    move-object v4, v7

    move-object/from16 v5, v27

    invoke-static/range {v0 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v6

    iget-object v1, v9, Lyads/eb2;->v:Lyads/zw2;

    sget-object v4, Lyads/x92;->h:Lyads/m36;

    const-string v3, "underline"

    move-object/from16 v5, v29

    invoke-static/range {v0 .. v5}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v32

    move-object/from16 v27, v24

    move-object/from16 v24, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v23

    move-object/from16 v23, v21

    move-object/from16 v21, v27

    move-object/from16 v27, v25

    move-object/from16 v25, v22

    move-object/from16 v22, v27

    move-object/from16 v27, v8

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v6

    invoke-direct/range {v10 .. v32}, Lyads/y72;-><init>(Ljava/util/List;Lyads/as2;Lyads/h92;Lyads/as2;Lyads/o92;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/aa2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/xz1;Lyads/as2;Lyads/as2;)V

    return-object v10
.end method
