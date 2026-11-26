.class public final Lyads/t62;
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

    iput-object p1, p0, Lyads/t62;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    check-cast v9, Lyads/x62;

    new-instance v10, Lyads/x52;

    iget-object v2, v9, Lyads/x62;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->f:Lyads/p36;

    sget-object v6, Lyads/bt4;->a:Lnl3;

    sget-object v7, Lyads/u62;->a:Lyads/xr2;

    const-string v4, "active_background_color"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object v8, v5

    move-object v11, v6

    if-nez v2, :cond_0

    move-object v12, v7

    goto :goto_0

    :cond_0
    move-object v12, v2

    :goto_0
    iget-object v2, v9, Lyads/x62;->b:Lyads/zw2;

    sget-object v13, Lyads/w36;->h:Lyads/q36;

    const-string v4, "active_font_variation_settings"

    invoke-static {v1, v2, v3, v4, v13}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v14

    iget-object v2, v9, Lyads/x62;->c:Lyads/zw2;

    sget-object v5, Lyads/u62;->l:Lyads/m36;

    sget-object v6, Lyads/tf1;->d:Lnl3;

    const-string v4, "active_font_weight"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v15

    move-object/from16 v16, v6

    iget-object v2, v9, Lyads/x62;->d:Lyads/zw2;

    sget-object v7, Lyads/u62;->b:Lyads/xr2;

    const-string v4, "active_text_color"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v8

    move-object v6, v11

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object v11, v5

    move-object/from16 v17, v6

    if-nez v2, :cond_1

    move-object/from16 v18, v7

    goto :goto_1

    :cond_1
    move-object/from16 v18, v2

    :goto_1
    iget-object v2, v9, Lyads/x62;->e:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/u62;->q:Lyads/l66;

    sget-object v8, Lyads/u62;->c:Lyads/xr2;

    const-string v4, "animation_duration"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    if-nez v2, :cond_2

    move-object/from16 v21, v8

    goto :goto_2

    :cond_2
    move-object/from16 v21, v2

    :goto_2
    iget-object v2, v9, Lyads/x62;->f:Lyads/zw2;

    sget-object v5, Lyads/u62;->m:Lyads/m36;

    sget-object v6, Lyads/w52;->d:Lnl3;

    sget-object v7, Lyads/u62;->d:Lyads/xr2;

    const-string v4, "animation_type"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_3

    move-object/from16 v22, v7

    goto :goto_3

    :cond_3
    move-object/from16 v22, v2

    :goto_3
    iget-object v2, v9, Lyads/x62;->g:Lyads/zw2;

    sget-object v7, Lyads/u62;->r:Lyads/l66;

    const-string v4, "corner_radius"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    invoke-static/range {v1 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v19

    move-object v7, v5

    iget-object v2, v9, Lyads/x62;->h:Lyads/zw2;

    iget-object v1, v0, Lyads/t62;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->u2:Lcl4;

    iget-object v6, v1, Lyads/tq3;->s2:Lcl4;

    const-string v4, "corners_radius"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lyads/p91;

    iget-object v2, v9, Lyads/x62;->i:Lyads/zw2;

    sget-object v4, Lyads/w36;->c:Lyads/u36;

    const-string v5, "font_family"

    invoke-static {v1, v2, v3, v5, v4}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v24

    iget-object v2, v9, Lyads/x62;->j:Lyads/zw2;

    move-object v5, v7

    sget-object v7, Lyads/u62;->s:Lyads/l66;

    sget-object v8, Lyads/u62;->e:Lyads/xr2;

    const-string v4, "font_size"

    move-object/from16 v6, v20

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object/from16 v20, v5

    move-object/from16 v25, v6

    if-nez v2, :cond_4

    move-object/from16 v26, v8

    goto :goto_4

    :cond_4
    move-object/from16 v26, v2

    :goto_4
    iget-object v2, v9, Lyads/x62;->k:Lyads/zw2;

    sget-object v5, Lyads/u62;->n:Lyads/m36;

    sget-object v6, Lyads/g12;->d:Lnl3;

    sget-object v7, Lyads/u62;->f:Lyads/xr2;

    const-string v4, "font_size_unit"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_5

    move-object/from16 v27, v7

    goto :goto_5

    :cond_5
    move-object/from16 v27, v2

    :goto_5
    iget-object v2, v9, Lyads/x62;->l:Lyads/zw2;

    sget-object v5, Lyads/u62;->o:Lyads/m36;

    sget-object v7, Lyads/u62;->g:Lyads/xr2;

    const-string v4, "font_weight"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_6

    move-object/from16 v28, v7

    goto :goto_6

    :cond_6
    move-object/from16 v28, v2

    :goto_6
    iget-object v2, v9, Lyads/x62;->m:Lyads/zw2;

    const-string v4, "inactive_background_color"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v11

    move-object/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v11

    move-object v8, v5

    iget-object v2, v9, Lyads/x62;->n:Lyads/zw2;

    const-string v4, "inactive_font_variation_settings"

    invoke-static {v1, v2, v3, v4, v13}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v13

    iget-object v2, v9, Lyads/x62;->o:Lyads/zw2;

    sget-object v5, Lyads/u62;->p:Lyads/m36;

    const-string v4, "inactive_font_weight"

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v16

    iget-object v2, v9, Lyads/x62;->p:Lyads/zw2;

    sget-object v7, Lyads/u62;->h:Lyads/xr2;

    const-string v4, "inactive_text_color"

    move-object v5, v8

    move-object/from16 v6, v17

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_7

    move-object/from16 v17, v7

    goto :goto_7

    :cond_7
    move-object/from16 v17, v2

    :goto_7
    iget-object v2, v9, Lyads/x62;->q:Lyads/zw2;

    sget-object v7, Lyads/u62;->t:Lyads/l66;

    sget-object v8, Lyads/u62;->i:Lyads/xr2;

    const-string v4, "item_spacing"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v20

    move-object/from16 v6, v25

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    move-object v8, v2

    :goto_8
    iget-object v2, v9, Lyads/x62;->r:Lyads/zw2;

    sget-object v5, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    sget-object v7, Lyads/u62;->j:Lyads/xr2;

    const-string v4, "letter_spacing"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_9

    move-object/from16 v29, v7

    goto :goto_9

    :cond_9
    move-object/from16 v29, v2

    :goto_9
    iget-object v2, v9, Lyads/x62;->s:Lyads/zw2;

    sget-object v7, Lyads/u62;->u:Lyads/l66;

    const-string v4, "line_height"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v20

    move-object/from16 v6, v25

    invoke-static/range {v1 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v6

    iget-object v1, v9, Lyads/x62;->t:Lyads/zw2;

    iget-object v0, v0, Lyads/t62;->a:Lyads/tq3;

    iget-object v4, v0, Lyads/tq3;->Z2:Lcl4;

    iget-object v5, v0, Lyads/tq3;->X2:Lcl4;

    const-string v3, "paddings"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/yc1;

    if-nez v0, :cond_a

    sget-object v0, Lyads/u62;->k:Lyads/yc1;

    :cond_a
    move-object/from16 v20, v23

    move-object/from16 v23, v11

    move-object v11, v12

    move-object v12, v14

    move-object/from16 v14, v18

    move-object/from16 v18, v20

    move-object/from16 v30, v0

    move-object/from16 v25, v16

    move-object/from16 v16, v22

    move-object/from16 v20, v26

    move-object/from16 v22, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v6

    move-object/from16 v26, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v24

    move-object/from16 v24, v13

    move-object v13, v15

    move-object/from16 v15, v21

    move-object/from16 v21, v27

    move-object/from16 v27, v8

    invoke-direct/range {v10 .. v30}, Lyads/x52;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/p91;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/yc1;)V

    return-object v10
.end method
