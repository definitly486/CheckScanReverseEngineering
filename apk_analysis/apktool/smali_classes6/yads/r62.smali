.class public final Lyads/r62;
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

    iput-object p1, p0, Lyads/r62;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    new-instance v8, Lyads/x52;

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v5, Lyads/bt4;->a:Lnl3;

    sget-object v7, Lyads/u62;->a:Lyads/xr2;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "active_background_color"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v9, v7

    goto :goto_0

    :cond_0
    move-object v9, v3

    :goto_0
    sget-object v10, Lyads/w36;->h:Lyads/q36;

    const-string v3, "active_font_variation_settings"

    invoke-static {v1, v2, v3, v10}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v11

    sget-object v3, Lyads/u62;->l:Lyads/m36;

    sget-object v12, Lyads/tf1;->d:Lnl3;

    const-string v7, "active_font_weight"

    invoke-static {v1, v2, v7, v3, v12}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v13

    sget-object v7, Lyads/u62;->b:Lyads/xr2;

    const-string v3, "active_text_color"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    if-nez v3, :cond_1

    move-object/from16 v17, v7

    goto :goto_1

    :cond_1
    move-object/from16 v17, v3

    :goto_1
    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/u62;->q:Lyads/l66;

    sget-object v7, Lyads/u62;->c:Lyads/xr2;

    const-string v3, "animation_duration"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    if-nez v3, :cond_2

    move-object/from16 v20, v7

    goto :goto_2

    :cond_2
    move-object/from16 v20, v3

    :goto_2
    sget-object v4, Lyads/u62;->m:Lyads/m36;

    sget-object v5, Lyads/w52;->d:Lnl3;

    sget-object v7, Lyads/u62;->d:Lyads/xr2;

    const-string v3, "animation_type"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_3

    move-object/from16 v21, v7

    goto :goto_3

    :cond_3
    move-object/from16 v21, v3

    :goto_3
    sget-object v6, Lyads/u62;->r:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "corner_radius"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v18

    iget-object v3, v0, Lyads/r62;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->s2:Lcl4;

    const-string v6, "corners_radius"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lyads/p91;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const-string v6, "font_family"

    invoke-static {v1, v2, v6, v3}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v22

    sget-object v6, Lyads/u62;->s:Lyads/l66;

    sget-object v7, Lyads/u62;->e:Lyads/xr2;

    const-string v3, "font_size"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    if-nez v3, :cond_4

    move-object/from16 v25, v7

    goto :goto_4

    :cond_4
    move-object/from16 v25, v3

    :goto_4
    sget-object v4, Lyads/u62;->n:Lyads/m36;

    sget-object v5, Lyads/g12;->d:Lnl3;

    sget-object v7, Lyads/u62;->f:Lyads/xr2;

    const-string v3, "font_size_unit"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_5

    move-object/from16 v16, v7

    goto :goto_5

    :cond_5
    move-object/from16 v16, v3

    :goto_5
    sget-object v4, Lyads/u62;->o:Lyads/m36;

    sget-object v7, Lyads/u62;->g:Lyads/xr2;

    const-string v3, "font_weight"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v12

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v12, v7

    goto :goto_6

    :cond_6
    move-object v12, v3

    :goto_6
    const-string v3, "inactive_background_color"

    invoke-static {v1, v2, v3, v14, v15}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v26

    const-string v3, "inactive_font_variation_settings"

    invoke-static {v1, v2, v3, v10}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v10

    sget-object v3, Lyads/u62;->p:Lyads/m36;

    const-string v4, "inactive_font_weight"

    invoke-static {v1, v2, v4, v3, v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v27

    sget-object v7, Lyads/u62;->h:Lyads/xr2;

    const-string v3, "inactive_text_color"

    move-object v4, v14

    move-object v5, v15

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object v14, v6

    if-nez v3, :cond_7

    move-object v15, v7

    goto :goto_7

    :cond_7
    move-object v15, v3

    :goto_7
    sget-object v6, Lyads/u62;->t:Lyads/l66;

    sget-object v7, Lyads/u62;->i:Lyads/xr2;

    const-string v3, "item_spacing"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_8

    move-object/from16 v28, v7

    goto :goto_8

    :cond_8
    move-object/from16 v28, v3

    :goto_8
    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v5, Lyads/bt4;->d:Lnl3;

    sget-object v7, Lyads/u62;->j:Lyads/xr2;

    const-string v3, "letter_spacing"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v14

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_9

    move-object v14, v7

    goto :goto_9

    :cond_9
    move-object v14, v3

    :goto_9
    sget-object v6, Lyads/u62;->u:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "line_height"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    iget-object v0, v0, Lyads/r62;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->X2:Lcl4;

    const-string v4, "paddings"

    invoke-static {v1, v2, v4, v0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/yc1;

    if-nez v0, :cond_a

    sget-object v0, Lyads/u62;->k:Lyads/yc1;

    :cond_a
    move-object v1, v9

    move-object v2, v11

    move-object/from16 v11, v16

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v9, v22

    move-object/from16 v17, v28

    move-object/from16 v20, v0

    move-object v0, v8

    move-object/from16 v18, v14

    move-object/from16 v16, v15

    move-object/from16 v8, v19

    move-object/from16 v15, v27

    move-object/from16 v19, v3

    move-object v14, v10

    move-object v3, v13

    move-object/from16 v10, v25

    move-object/from16 v13, v26

    invoke-direct/range {v0 .. v20}, Lyads/x52;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/p91;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/yc1;)V

    return-object v0
.end method
