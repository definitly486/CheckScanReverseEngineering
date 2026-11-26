.class public final Lyads/wv0;
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

    iput-object p1, p0, Lyads/wv0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    check-cast p2, Lyads/yv0;

    new-instance v0, Lyads/tv0;

    iget-object v2, p2, Lyads/yv0;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/xv0;->a:Lyads/xr2;

    const-string v4, "animated"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, p1

    :goto_0
    iget-object v2, p2, Lyads/yv0;->b:Lyads/zw2;

    iget-object p0, p0, Lyads/wv0;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->z0:Lcl4;

    iget-object v6, p0, Lyads/tq3;->x0:Lcl4;

    const-string v4, "destination"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/kv0;

    iget-object p1, p2, Lyads/yv0;->c:Lyads/zw2;

    sget-object p2, Lyads/w36;->c:Lyads/u36;

    const-string p3, "id"

    invoke-static {v1, p1, v3, p3, p2}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {v0, v7, p0, p1}, Lyads/tv0;-><init>(Lyads/as2;Lyads/kv0;Lyads/as2;)V

    return-object v0
.end method
