.class public final Lyads/dv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/ys4;Lyads/fv0;Lorg/json/JSONObject;)Lyads/av0;
    .locals 16

    move-object/from16 v0, p1

    new-instance v1, Lyads/av0;

    iget-object v3, v0, Lyads/fv0;->a:Lyads/zw2;

    sget-object v6, Lyads/w36;->a:Lyads/o36;

    sget-object v7, Lyads/bt4;->c:Lnl3;

    sget-object v8, Lyads/ev0;->a:Lyads/xr2;

    const-string v5, "animated"

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    iget-object v2, v0, Lyads/fv0;->b:Lyads/zw2;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const-string v4, "id"

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    invoke-static {v9, v2, v11, v4, v3}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v2

    iget-object v10, v0, Lyads/fv0;->c:Lyads/zw2;

    sget-object v13, Lyads/w36;->b:Lyads/s36;

    sget-object v14, Lyads/bt4;->e:Lnl3;

    sget-object v15, Lyads/ev0;->b:Lyads/xr2;

    const-string v12, "item_count"

    invoke-static/range {v9 .. v15}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v15

    :cond_1
    iget-object v10, v0, Lyads/fv0;->d:Lyads/zw2;

    sget-object v15, Lyads/ev0;->c:Lyads/xr2;

    const-string v12, "offset"

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    invoke-static/range {v9 .. v15}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v15

    :cond_2
    iget-object v10, v0, Lyads/fv0;->e:Lyads/zw2;

    sget-object v13, Lyads/ev0;->e:Lyads/m36;

    sget-object v14, Lyads/zu0;->d:Lnl3;

    sget-object v15, Lyads/ev0;->d:Lyads/xr2;

    const-string v12, "overflow"

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    invoke-static/range {v9 .. v15}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v5, v15

    :goto_1
    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    :cond_3
    move-object v5, v0

    goto :goto_1

    :goto_2
    invoke-direct/range {v0 .. v5}, Lyads/av0;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p2, Lyads/fv0;

    invoke-static {p1, p2, p3}, Lyads/dv0;->a(Lyads/ys4;Lyads/fv0;Lorg/json/JSONObject;)Lyads/av0;

    move-result-object p0

    return-object p0
.end method
