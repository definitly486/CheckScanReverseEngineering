.class public final Lyads/w51;
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

.method public static b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/v51;
    .locals 16

    new-instance v0, Lyads/v51;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/z51;->e:Lyads/l66;

    sget-object v7, Lyads/z51;->a:Lyads/xr2;

    const-string v3, "duration"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v15, v7

    goto :goto_0

    :cond_0
    move-object v15, v3

    :goto_0
    sget-object v11, Lyads/z51;->d:Lyads/m36;

    sget-object v12, Lyads/o11;->d:Lnl3;

    sget-object v14, Lyads/z51;->b:Lyads/xr2;

    sget-object v13, Lyads/uq3;->a:Lyads/l66;

    const-string v10, "interpolator"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v14, v1

    :goto_1
    sget-object v6, Lyads/z51;->f:Lyads/l66;

    sget-object v7, Lyads/z51;->c:Lyads/xr2;

    const-string v3, "start_delay"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v7, v1

    :goto_2
    invoke-direct {v0, v15, v14, v7}, Lyads/v51;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lyads/w51;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/v51;

    move-result-object p0

    return-object p0
.end method
