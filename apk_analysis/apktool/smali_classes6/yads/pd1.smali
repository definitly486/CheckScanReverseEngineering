.class public final Lyads/pd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/od1;
    .locals 15

    new-instance v0, Lyads/od1;

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v5, Lyads/bt4;->d:Lnl3;

    sget-object v6, Lyads/sd1;->f:Lyads/l66;

    sget-object v7, Lyads/sd1;->a:Lyads/xr2;

    const-string v3, "alpha"

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    sget-object v11, Lyads/w36;->b:Lyads/s36;

    sget-object v12, Lyads/bt4;->e:Lnl3;

    sget-object v13, Lyads/sd1;->g:Lyads/l66;

    sget-object v14, Lyads/sd1;->b:Lyads/xr2;

    const-string v10, "duration"

    move-object v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v1

    move-object v2, v11

    move-object v3, v12

    if-nez v1, :cond_1

    move-object v1, v14

    :cond_1
    sget-object v11, Lyads/sd1;->e:Lyads/m36;

    sget-object v12, Lyads/o11;->d:Lnl3;

    sget-object v14, Lyads/sd1;->c:Lyads/xr2;

    sget-object v13, Lyads/uq3;->a:Lyads/l66;

    const-string v10, "interpolator"

    move-object v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v14

    :cond_2
    sget-object v13, Lyads/sd1;->h:Lyads/l66;

    sget-object v14, Lyads/sd1;->d:Lyads/xr2;

    const-string v10, "start_delay"

    move-object v8, p0

    move-object/from16 v9, p1

    move-object v11, v2

    move-object v12, v3

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v14, p0

    :goto_1
    invoke-direct {v0, v7, v1, v4, v14}, Lyads/od1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lyads/pd1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/od1;

    move-result-object p0

    return-object p0
.end method
