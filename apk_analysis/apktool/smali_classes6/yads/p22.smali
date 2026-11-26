.class public final Lyads/p22;
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

    iput-object p1, p0, Lyads/p22;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 17

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance v8, Lyads/m22;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const/4 v5, 0x0

    const-string v2, "font_family"

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v9

    sget-object v3, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/r22;->g:Lyads/l66;

    const-string v2, "font_size"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v10

    move-object v11, v3

    move-object v12, v6

    sget-object v3, Lyads/r22;->e:Lyads/m36;

    sget-object v6, Lyads/g12;->d:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "font_size_unit"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v13

    sget-object v3, Lyads/w36;->h:Lyads/q36;

    const-string v2, "font_variation_settings"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v14

    sget-object v3, Lyads/r22;->f:Lyads/m36;

    sget-object v6, Lyads/tf1;->d:Lnl3;

    const-string v2, "font_weight"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v15

    move-object/from16 v16, v7

    sget-object v7, Lyads/r22;->h:Lyads/l66;

    const-string v2, "font_weight_value"

    move-object v3, v11

    move-object v6, v12

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v11

    sget-object v3, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    const-string v2, "letter_spacing"

    move-object/from16 v7, v16

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v12

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lyads/p22;->a:Lyads/tq3;

    iget-object v5, v0, Lyads/tq3;->S5:Lcl4;

    const-string v2, "offset"

    move v3, v4

    const/4 v4, 0x0

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v16

    move v4, v3

    sget-object v3, Lyads/w36;->f:Lyads/p36;

    const/4 v5, 0x0

    sget-object v6, Lyads/bt4;->a:Lnl3;

    const-string v2, "text_color"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v0

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct/range {v5 .. v14}, Lyads/m22;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v5
.end method
