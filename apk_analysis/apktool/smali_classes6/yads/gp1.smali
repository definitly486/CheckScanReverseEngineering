.class public final Lyads/gp1;
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

    check-cast p2, Lyads/mp1;

    new-instance p0, Lyads/cp1;

    iget-object v1, p2, Lyads/mp1;->a:Lyads/zw2;

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v5, Lyads/bt4;->a:Lnl3;

    const-string v3, "color"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    iget-object v1, p2, Lyads/mp1;->b:Lyads/zw2;

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v5, Lyads/bt4;->d:Lnl3;

    sget-object v6, Lyads/hp1;->a:Lyads/l66;

    const-string v3, "position"

    invoke-static/range {v0 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/cp1;-><init>(Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
