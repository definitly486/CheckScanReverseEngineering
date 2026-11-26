.class public final Lyads/v92;
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

    iput-object p1, p0, Lyads/v92;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 33

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance v9, Lyads/eb2;

    iget-object v2, v0, Lyads/v92;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->l1:Lcl4;

    const-string v3, "actions"

    move v4, v5

    const/4 v5, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v10

    move v5, v4

    sget-object v4, Lyads/x92;->d:Lyads/m36;

    sget-object v7, Lyads/d82;->d:Lnl3;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "alignment_vertical"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v11

    iget-object v2, v0, Lyads/v92;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->Z7:Lcl4;

    const-string v3, "background"

    move v4, v5

    const/4 v5, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v12

    move v5, v4

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v7, Lyads/bt4;->d:Lnl3;

    const-string v3, "baseline_offset"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v13

    move-object v15, v4

    move-object/from16 v16, v7

    move-object v14, v8

    iget-object v2, v0, Lyads/v92;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->c8:Lcl4;

    const-string v3, "border"

    move v4, v5

    const/4 v5, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v17

    move v5, v4

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v7, Lyads/bt4;->e:Lnl3;

    sget-object v8, Lyads/x92;->i:Lyads/l66;

    const-string v3, "end"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v18

    move-object v8, v7

    move-object v7, v4

    sget-object v4, Lyads/w36;->c:Lyads/u36;

    const-string v3, "font_family"

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v19

    const-string v3, "font_feature_settings"

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v20

    move-object v4, v7

    move-object v7, v8

    sget-object v8, Lyads/x92;->j:Lyads/l66;

    const-string v3, "font_size"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v21

    move-object/from16 v22, v4

    move-object/from16 v23, v7

    sget-object v4, Lyads/x92;->e:Lyads/m36;

    sget-object v7, Lyads/g12;->d:Lnl3;

    const-string v3, "font_size_unit"

    move-object v8, v14

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v14

    sget-object v4, Lyads/w36;->h:Lyads/q36;

    const-string v3, "font_variation_settings"

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v24

    sget-object v4, Lyads/x92;->f:Lyads/m36;

    sget-object v7, Lyads/tf1;->d:Lnl3;

    const-string v3, "font_weight"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v25

    move-object/from16 v26, v8

    sget-object v8, Lyads/x92;->k:Lyads/l66;

    const-string v3, "font_weight_value"

    move-object/from16 v4, v22

    move-object/from16 v7, v23

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v22

    move-object/from16 v23, v4

    move-object/from16 v27, v7

    const-string v3, "letter_spacing"

    move-object v4, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v26

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v15

    sget-object v8, Lyads/x92;->l:Lyads/l66;

    const-string v3, "line_height"

    move-object/from16 v4, v23

    move-object/from16 v7, v27

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v16

    move-object/from16 v23, v7

    move-object v7, v4

    iget-object v2, v0, Lyads/v92;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->l8:Lcl4;

    const-string v3, "mask"

    move v4, v5

    const/4 v5, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v27

    move v5, v4

    const/4 v6, 0x0

    sget-object v8, Lyads/x92;->m:Lyads/l66;

    const-string v3, "start"

    move-object v4, v7

    move-object/from16 v7, v23

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v23

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    sget-object v4, Lyads/x92;->g:Lyads/m36;

    sget-object v6, Lyads/bp1;->d:Lnl3;

    const-string v3, "strike"

    move-object v7, v6

    const/4 v6, 0x0

    move-object/from16 v8, v26

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v26

    move-object/from16 v30, v7

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v7, Lyads/bt4;->a:Lnl3;

    const-string v3, "text_color"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v31

    iget-object v0, v0, Lyads/v92;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->I6:Lcl4;

    const-string v2, "text_shadow"

    const/4 v4, 0x0

    move v3, v5

    move-object v5, v0

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v32

    move-object v1, v0

    move v5, v3

    const/4 v0, 0x0

    sget-object v7, Lyads/x92;->n:Lyads/l66;

    const-string v2, "top_offset"

    move v4, v5

    move-object/from16 v3, v28

    move-object/from16 v6, v29

    move-object v5, v0

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v28

    move-object v1, v0

    move v5, v4

    sget-object v3, Lyads/x92;->h:Lyads/m36;

    const/4 v5, 0x0

    const-string v2, "underline"

    move-object v7, v8

    move-object/from16 v6, v30

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v0

    move-object/from16 v6, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v20

    move-object/from16 v20, v15

    move-object/from16 v15, v21

    move-object/from16 v21, v6

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    move-object v10, v13

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    move-object/from16 v19, v22

    move-object/from16 v17, v24

    move-object/from16 v18, v25

    move-object/from16 v24, v26

    move-object/from16 v22, v27

    move-object/from16 v27, v28

    move-object/from16 v25, v31

    move-object/from16 v26, v32

    move-object/from16 v28, v0

    invoke-direct/range {v6 .. v28}, Lyads/eb2;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v6
.end method
