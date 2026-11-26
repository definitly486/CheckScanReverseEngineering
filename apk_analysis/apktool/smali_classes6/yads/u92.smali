.class public final Lyads/u92;
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

    iput-object p1, p0, Lyads/u92;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v8, Lyads/y72;

    iget-object v3, v0, Lyads/u92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v9

    sget-object v3, Lyads/x92;->d:Lyads/m36;

    sget-object v4, Lyads/d82;->d:Lnl3;

    const-string v5, "alignment_vertical"

    invoke-static {v1, v2, v5, v3, v4}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v10

    iget-object v3, v0, Lyads/u92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->Y7:Lcl4;

    const-string v4, "background"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lyads/h92;

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v5, Lyads/bt4;->d:Lnl3;

    sget-object v7, Lyads/x92;->a:Lyads/xr2;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "baseline_offset"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    if-nez v3, :cond_0

    move-object v15, v7

    goto :goto_0

    :cond_0
    move-object v15, v3

    :goto_0
    iget-object v3, v0, Lyads/u92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->b8:Lcl4;

    const-string v4, "border"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lyads/o92;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/x92;->i:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "end"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v17

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const-string v6, "font_family"

    invoke-static {v1, v2, v6, v3}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v18

    const-string v6, "font_feature_settings"

    invoke-static {v1, v2, v6, v3}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v19

    sget-object v6, Lyads/x92;->j:Lyads/l66;

    const-string v3, "font_size"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    sget-object v4, Lyads/x92;->e:Lyads/m36;

    sget-object v5, Lyads/g12;->d:Lnl3;

    sget-object v7, Lyads/x92;->b:Lyads/xr2;

    const-string v3, "font_size_unit"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v14

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v14, v7

    goto :goto_1

    :cond_1
    move-object v14, v3

    :goto_1
    sget-object v3, Lyads/w36;->h:Lyads/q36;

    const-string v4, "font_variation_settings"

    invoke-static {v1, v2, v4, v3}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v23

    sget-object v3, Lyads/x92;->f:Lyads/m36;

    sget-object v4, Lyads/tf1;->d:Lnl3;

    const-string v5, "font_weight"

    invoke-static {v1, v2, v5, v3, v4}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v24

    sget-object v6, Lyads/x92;->k:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "font_weight_value"

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v21

    const-string v3, "letter_spacing"

    invoke-static {v1, v2, v3, v12, v13}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v12

    sget-object v6, Lyads/x92;->l:Lyads/l66;

    const-string v3, "line_height"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v13

    iget-object v3, v0, Lyads/u92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k8:Lcl4;

    const-string v6, "mask"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lyads/aa2;

    sget-object v6, Lyads/x92;->m:Lyads/l66;

    sget-object v7, Lyads/x92;->c:Lyads/xr2;

    const-string v3, "start"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v7, v3

    :goto_2
    sget-object v3, Lyads/x92;->g:Lyads/m36;

    sget-object v6, Lyads/bp1;->d:Lnl3;

    move-object/from16 v25, v4

    const-string v4, "strike"

    invoke-static {v1, v2, v4, v3, v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v26

    sget-object v3, Lyads/w36;->f:Lyads/p36;

    sget-object v4, Lyads/bt4;->a:Lnl3;

    move-object/from16 v27, v5

    const-string v5, "text_color"

    invoke-static {v1, v2, v5, v3, v4}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v28

    iget-object v0, v0, Lyads/u92;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->H6:Lcl4;

    const-string v3, "text_shadow"

    invoke-static {v1, v2, v3, v0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Lyads/xz1;

    sget-object v5, Lyads/x92;->n:Lyads/l66;

    move-object v0, v6

    const/4 v6, 0x0

    const-string v2, "top_offset"

    move-object/from16 v30, v7

    move-object/from16 v3, v25

    move-object/from16 v4, v27

    move-object v7, v0

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object/from16 v31, v1

    move-object v1, v0

    move-object/from16 v0, v31

    sget-object v3, Lyads/x92;->h:Lyads/m36;

    const-string v4, "underline"

    invoke-static {v1, v0, v4, v3, v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v0

    move-object v1, v9

    move-object v3, v11

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v9, v20

    move-object/from16 v16, v22

    move-object/from16 v11, v23

    move-object/from16 v18, v26

    move-object/from16 v20, v29

    move-object/from16 v17, v30

    move-object/from16 v22, v0

    move-object v0, v8

    move-object v15, v13

    move-object/from16 v8, v19

    move-object/from16 v13, v21

    move-object/from16 v19, v28

    move-object/from16 v21, v2

    move-object v2, v10

    move-object v10, v14

    move-object v14, v12

    move-object/from16 v12, v24

    invoke-direct/range {v0 .. v22}, Lyads/y72;-><init>(Ljava/util/List;Lyads/as2;Lyads/h92;Lyads/as2;Lyads/o92;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/aa2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/xz1;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
