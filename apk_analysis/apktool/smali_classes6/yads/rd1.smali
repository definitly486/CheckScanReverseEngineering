.class public final Lyads/rd1;
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

.method public static a(Lyads/ys4;Lyads/td1;Lorg/json/JSONObject;)Lyads/od1;
    .locals 18

    move-object/from16 v0, p1

    new-instance v1, Lyads/od1;

    iget-object v3, v0, Lyads/td1;->a:Lyads/zw2;

    sget-object v6, Lyads/w36;->d:Lyads/r36;

    sget-object v7, Lyads/bt4;->d:Lnl3;

    sget-object v8, Lyads/sd1;->f:Lyads/l66;

    sget-object v9, Lyads/sd1;->a:Lyads/xr2;

    const-string v5, "alpha"

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v9}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, v3

    :goto_0
    iget-object v11, v0, Lyads/td1;->b:Lyads/zw2;

    sget-object v14, Lyads/w36;->b:Lyads/s36;

    sget-object v15, Lyads/bt4;->e:Lnl3;

    sget-object v16, Lyads/sd1;->g:Lyads/l66;

    sget-object v17, Lyads/sd1;->b:Lyads/xr2;

    const-string v13, "duration"

    move-object/from16 v10, p0

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v17}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object v3, v14

    move-object v4, v15

    if-nez v2, :cond_1

    move-object/from16 v2, v17

    :cond_1
    iget-object v11, v0, Lyads/td1;->c:Lyads/zw2;

    sget-object v14, Lyads/sd1;->e:Lyads/m36;

    sget-object v15, Lyads/o11;->d:Lnl3;

    sget-object v16, Lyads/sd1;->c:Lyads/xr2;

    const-string v13, "interpolator"

    move-object/from16 v10, p0

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v16}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v5

    if-nez v5, :cond_2

    move-object/from16 v5, v16

    :cond_2
    iget-object v11, v0, Lyads/td1;->d:Lyads/zw2;

    sget-object v16, Lyads/sd1;->h:Lyads/l66;

    sget-object v17, Lyads/sd1;->d:Lyads/xr2;

    const-string v13, "start_delay"

    move-object/from16 v10, p0

    move-object/from16 v12, p2

    move-object v14, v3

    move-object v15, v4

    invoke-static/range {v10 .. v17}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v0

    if-nez v0, :cond_3

    move-object/from16 v0, v17

    :cond_3
    invoke-direct {v1, v9, v2, v5, v0}, Lyads/od1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 102
    check-cast p2, Lyads/td1;

    invoke-static {p1, p2, p3}, Lyads/rd1;->a(Lyads/ys4;Lyads/td1;Lorg/json/JSONObject;)Lyads/od1;

    move-result-object p0

    return-object p0
.end method
