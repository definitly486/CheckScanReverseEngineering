.class public final Lyads/y51;
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

.method public static a(Lyads/ys4;Lyads/a61;Lorg/json/JSONObject;)Lyads/v51;
    .locals 11

    new-instance v0, Lyads/v51;

    iget-object v2, p1, Lyads/a61;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/z51;->e:Lyads/l66;

    sget-object v8, Lyads/z51;->a:Lyads/xr2;

    const-string v4, "duration"

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    move-object p2, v5

    move-object v9, v6

    if-nez p0, :cond_0

    move-object p0, v8

    :cond_0
    iget-object v2, p1, Lyads/a61;->b:Lyads/zw2;

    sget-object v5, Lyads/z51;->d:Lyads/m36;

    sget-object v6, Lyads/o11;->d:Lnl3;

    sget-object v7, Lyads/z51;->b:Lyads/xr2;

    const-string v4, "interpolator"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v7

    :cond_1
    iget-object v4, p1, Lyads/a61;->c:Lyads/zw2;

    move-object v6, v9

    sget-object v9, Lyads/z51;->f:Lyads/l66;

    sget-object v10, Lyads/z51;->c:Lyads/xr2;

    move-object v8, v6

    const-string v6, "start_delay"

    move-object v7, p2

    move-object v5, v3

    move-object v3, v1

    invoke-static/range {v3 .. v10}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v10, p1

    :goto_0
    invoke-direct {v0, p0, v2, v10}, Lyads/v51;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p2, Lyads/a61;

    invoke-static {p1, p2, p3}, Lyads/y51;->a(Lyads/ys4;Lyads/a61;Lorg/json/JSONObject;)Lyads/v51;

    move-result-object p0

    return-object p0
.end method
