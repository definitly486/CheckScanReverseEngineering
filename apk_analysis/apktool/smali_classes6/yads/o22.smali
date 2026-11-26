.class public final Lyads/o22;
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

    iput-object p1, p0, Lyads/o22;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v7, Lyads/w12;

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    const-string v3, "font_family"

    invoke-static {v0, v1, v3, v2}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v8

    sget-object v3, Lyads/w36;->b:Lyads/s36;

    sget-object v4, Lyads/bt4;->e:Lnl3;

    sget-object v5, Lyads/r22;->g:Lyads/l66;

    sget-object v6, Lyads/r22;->a:Lyads/xr2;

    const-string v2, "font_size"

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object v9, v3

    move-object v10, v4

    if-nez v2, :cond_0

    move-object v11, v6

    goto :goto_0

    :cond_0
    move-object v11, v2

    :goto_0
    sget-object v3, Lyads/r22;->e:Lyads/m36;

    sget-object v4, Lyads/g12;->d:Lnl3;

    sget-object v6, Lyads/r22;->b:Lyads/xr2;

    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "font_size_unit"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object v12, v5

    if-nez v2, :cond_1

    move-object v13, v6

    goto :goto_1

    :cond_1
    move-object v13, v2

    :goto_1
    sget-object v2, Lyads/w36;->h:Lyads/q36;

    const-string v3, "font_variation_settings"

    invoke-static {v0, v1, v3, v2}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v14

    sget-object v2, Lyads/r22;->f:Lyads/m36;

    sget-object v3, Lyads/tf1;->d:Lnl3;

    const-string v4, "font_weight"

    invoke-static {v0, v1, v4, v2, v3}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v15

    sget-object v5, Lyads/r22;->h:Lyads/l66;

    const/4 v6, 0x0

    const-string v2, "font_weight_value"

    move-object v3, v9

    move-object v4, v10

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v9

    sget-object v3, Lyads/w36;->d:Lyads/r36;

    sget-object v4, Lyads/bt4;->d:Lnl3;

    sget-object v6, Lyads/r22;->c:Lyads/xr2;

    const-string v2, "letter_spacing"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v5, v12

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v10, v6

    :goto_2
    move-object/from16 v2, p0

    goto :goto_3

    :cond_2
    move-object v10, v2

    goto :goto_2

    :goto_3
    iget-object v2, v2, Lyads/o22;->a:Lyads/tq3;

    iget-object v2, v2, Lyads/tq3;->R5:Lcl4;

    const-string v3, "offset"

    invoke-static {v0, v1, v3, v2}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lyads/nv1;

    sget-object v3, Lyads/w36;->f:Lyads/p36;

    sget-object v4, Lyads/bt4;->a:Lnl3;

    sget-object v6, Lyads/r22;->d:Lyads/xr2;

    const-string v2, "text_color"

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v9

    move-object v9, v6

    move-object v6, v0

    move-object v0, v7

    move-object v1, v8

    move-object v7, v10

    move-object v2, v11

    move-object v8, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    goto :goto_4

    :cond_3
    move-object v6, v9

    move-object v9, v0

    move-object v1, v8

    move-object v2, v11

    move-object v8, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object v0, v7

    move-object v7, v10

    :goto_4
    invoke-direct/range {v0 .. v9}, Lyads/w12;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/nv1;Lyads/as2;)V

    return-object v0
.end method
