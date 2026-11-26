.class public final Lyads/oz1;
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


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p2

    check-cast v0, Lyads/uz1;

    new-instance v1, Lyads/jz1;

    iget-object v3, v0, Lyads/uz1;->a:Lyads/zw2;

    sget-object v6, Lyads/w36;->f:Lyads/p36;

    sget-object v7, Lyads/bt4;->a:Lnl3;

    sget-object v8, Lyads/pz1;->a:Lyads/xr2;

    const-string v5, "color"

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    iget-object v10, v0, Lyads/uz1;->b:Lyads/zw2;

    sget-object v13, Lyads/pz1;->c:Lyads/m36;

    sget-object v14, Lyads/iz1;->d:Lnl3;

    sget-object v15, Lyads/pz1;->b:Lyads/xr2;

    const-string v12, "orientation"

    move-object/from16 v9, p1

    move-object/from16 v11, p3

    invoke-static/range {v9 .. v15}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v15, v0

    :goto_1
    invoke-direct {v1, v8, v15}, Lyads/jz1;-><init>(Lyads/as2;Lyads/as2;)V

    return-object v1
.end method
