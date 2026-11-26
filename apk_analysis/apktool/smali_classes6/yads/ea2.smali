.class public final Lyads/ea2;
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
    .locals 7

    check-cast p2, Lyads/ga2;

    new-instance p0, Lyads/ba2;

    iget-object v1, p2, Lyads/ga2;->a:Lyads/zw2;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v6, Lyads/fa2;->a:Lyads/xr2;

    const-string v3, "is_enabled"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, p1

    :goto_0
    invoke-direct {p0, v6}, Lyads/ba2;-><init>(Lyads/as2;)V

    return-object p0
.end method
