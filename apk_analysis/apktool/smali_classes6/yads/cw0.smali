.class public final Lyads/cw0;
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
    .locals 8

    check-cast p2, Lyads/ew0;

    new-instance p0, Lyads/zv0;

    iget-object v0, p2, Lyads/ew0;->a:Lyads/zw2;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    const-string v2, "state_id"

    invoke-static {p1, v0, p3, v2, v1}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v0

    iget-object v2, p2, Lyads/ew0;->b:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/dw0;->a:Lyads/xr2;

    const-string v4, "temporary"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, p1

    :goto_0
    invoke-direct {p0, v0, v7}, Lyads/zv0;-><init>(Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
