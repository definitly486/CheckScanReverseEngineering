.class public final Lyads/qk1;
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
    .locals 6

    check-cast p2, Lyads/rk1;

    new-instance p0, Lyads/nk1;

    iget-object v1, p2, Lyads/rk1;->a:Lyads/zw2;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    const-string v3, "condition"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/nk1;-><init>(Lyads/as2;)V

    return-object p0
.end method
