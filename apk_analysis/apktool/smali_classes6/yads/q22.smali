.class public final Lyads/q22;
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

    iput-object p1, p0, Lyads/q22;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v8, p2

    check-cast v8, Lyads/m22;

    new-instance v9, Lyads/w12;

    iget-object v1, v8, Lyads/m22;->a:Lyads/zw2;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const-string v4, "font_family"

    invoke-static {v0, v1, v2, v4, v3}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v10

    iget-object v1, v8, Lyads/m22;->b:Lyads/zw2;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/r22;->g:Lyads/l66;

    sget-object v7, Lyads/r22;->a:Lyads/xr2;

    const-string v3, "font_size"

    invoke-static/range {v0 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v1

    move-object v11, v4

    move-object v12, v5

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v1

    :goto_0
    iget-object v1, v8, Lyads/m22;->c:Lyads/zw2;

    sget-object v4, Lyads/r22;->e:Lyads/m36;

    sget-object v5, Lyads/g12;->d:Lnl3;

    sget-object v6, Lyads/r22;->b:Lyads/xr2;

    const-string v3, "font_size_unit"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v13, v6

    goto :goto_1

    :cond_1
    move-object v13, v1

    :goto_1
    iget-object v1, v8, Lyads/m22;->d:Lyads/zw2;

    sget-object v3, Lyads/w36;->h:Lyads/q36;

    const-string v4, "font_variation_settings"

    invoke-static {v0, v1, v2, v4, v3}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v14

    iget-object v1, v8, Lyads/m22;->e:Lyads/zw2;

    sget-object v4, Lyads/r22;->f:Lyads/m36;

    sget-object v5, Lyads/tf1;->d:Lnl3;

    const-string v3, "font_weight"

    invoke-static/range {v0 .. v5}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v15

    iget-object v1, v8, Lyads/m22;->f:Lyads/zw2;

    sget-object v6, Lyads/r22;->h:Lyads/l66;

    const-string v3, "font_weight_value"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object v4, v11

    move-object v5, v12

    invoke-static/range {v0 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v11

    iget-object v1, v8, Lyads/m22;->g:Lyads/zw2;

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v5, Lyads/bt4;->d:Lnl3;

    sget-object v6, Lyads/r22;->c:Lyads/xr2;

    const-string v3, "letter_spacing"

    invoke-static/range {v0 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_2

    move-object/from16 v16, v6

    goto :goto_2

    :cond_2
    move-object/from16 v16, v1

    :goto_2
    iget-object v1, v8, Lyads/m22;->h:Lyads/zw2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lyads/q22;->a:Lyads/tq3;

    iget-object v4, v0, Lyads/tq3;->T5:Lcl4;

    iget-object v5, v0, Lyads/tq3;->R5:Lcl4;

    const-string v3, "offset"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lyads/nv1;

    iget-object v1, v8, Lyads/m22;->i:Lyads/zw2;

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v5, Lyads/bt4;->a:Lnl3;

    sget-object v6, Lyads/r22;->d:Lyads/xr2;

    const-string v3, "text_color"

    invoke-static/range {v0 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v0

    if-nez v0, :cond_3

    move-object/from16 v18, v6

    :goto_3
    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v11

    move-object v11, v7

    goto :goto_4

    :cond_3
    move-object/from16 v18, v0

    goto :goto_3

    :goto_4
    invoke-direct/range {v9 .. v18}, Lyads/w12;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/nv1;Lyads/as2;)V

    return-object v9
.end method
