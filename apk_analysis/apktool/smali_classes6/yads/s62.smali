.class public final Lyads/s62;
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

    iput-object p1, p0, Lyads/s62;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 30

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance v9, Lyads/x62;

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v7, Lyads/bt4;->a:Lnl3;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "active_background_color"

    const/4 v6, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v10

    move-object v11, v4

    move-object v12, v7

    sget-object v4, Lyads/w36;->h:Lyads/q36;

    const-string v3, "active_font_variation_settings"

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v13

    move-object v14, v4

    sget-object v4, Lyads/u62;->l:Lyads/m36;

    sget-object v7, Lyads/tf1;->d:Lnl3;

    const-string v3, "active_font_weight"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v15

    move-object/from16 v16, v7

    const-string v3, "active_text_color"

    move-object v4, v11

    move-object v7, v12

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v11

    move-object v12, v4

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v7, Lyads/bt4;->e:Lnl3;

    sget-object v8, Lyads/u62;->q:Lyads/l66;

    const-string v3, "animation_duration"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v19

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    sget-object v4, Lyads/u62;->m:Lyads/m36;

    sget-object v7, Lyads/w52;->d:Lnl3;

    const-string v3, "animation_type"

    move-object/from16 v8, v18

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v18

    move-object/from16 v22, v8

    sget-object v8, Lyads/u62;->r:Lyads/l66;

    const-string v3, "corner_radius"

    move-object/from16 v4, v20

    move-object/from16 v7, v21

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v20

    move-object v7, v4

    iget-object v2, v0, Lyads/s62;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->t2:Lcl4;

    const-string v3, "corners_radius"

    move v4, v5

    const/4 v5, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v23

    move v5, v4

    sget-object v4, Lyads/w36;->c:Lyads/u36;

    const/4 v6, 0x0

    const-string v3, "font_family"

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v24

    sget-object v8, Lyads/u62;->s:Lyads/l66;

    const-string v3, "font_size"

    move-object v4, v7

    move-object/from16 v7, v21

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v21

    move-object/from16 v25, v4

    move-object/from16 v26, v7

    sget-object v4, Lyads/u62;->n:Lyads/m36;

    sget-object v7, Lyads/g12;->d:Lnl3;

    const-string v3, "font_size_unit"

    move-object/from16 v8, v22

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v22

    sget-object v4, Lyads/u62;->o:Lyads/m36;

    const-string v3, "font_weight"

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v16

    move-object/from16 v27, v7

    const-string v3, "inactive_background_color"

    move-object v4, v12

    move-object/from16 v7, v17

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v12

    move-object/from16 v17, v4

    move-object/from16 v28, v7

    const-string v3, "inactive_font_variation_settings"

    move-object v4, v14

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v14

    sget-object v4, Lyads/u62;->p:Lyads/m36;

    const-string v3, "inactive_font_weight"

    move-object/from16 v7, v27

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v27

    const-string v3, "inactive_text_color"

    move-object/from16 v4, v17

    move-object/from16 v7, v28

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v17

    move-object/from16 v28, v8

    sget-object v8, Lyads/u62;->t:Lyads/l66;

    const-string v3, "item_spacing"

    move-object/from16 v4, v25

    move-object/from16 v7, v26

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v25

    move-object/from16 v26, v4

    move-object/from16 v29, v7

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v7, Lyads/bt4;->d:Lnl3;

    const-string v3, "letter_spacing"

    move-object/from16 v8, v28

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v28

    sget-object v8, Lyads/u62;->u:Lyads/l66;

    const-string v3, "line_height"

    move-object/from16 v4, v26

    move-object/from16 v7, v29

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v6

    iget-object v0, v0, Lyads/s62;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->Y2:Lcl4;

    const-string v2, "paddings"

    const/4 v4, 0x0

    move v3, v5

    move-object v5, v0

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v26

    move-object/from16 v7, v22

    move-object/from16 v22, v17

    move-object/from16 v17, v7

    move-object v7, v10

    move-object v10, v11

    move-object v8, v13

    move-object/from16 v11, v19

    move-object/from16 v13, v20

    move-object/from16 v19, v12

    move-object/from16 v20, v14

    move-object/from16 v12, v18

    move-object/from16 v14, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v6

    move-object v6, v9

    move-object v9, v15

    move-object/from16 v18, v16

    move-object/from16 v16, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v24, v28

    invoke-direct/range {v6 .. v26}, Lyads/x62;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v6
.end method
