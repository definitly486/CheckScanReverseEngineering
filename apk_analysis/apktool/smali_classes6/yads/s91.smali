.class public final Lyads/s91;
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
    .locals 9

    check-cast p2, Lyads/u91;

    new-instance p0, Lyads/p91;

    iget-object v1, p2, Lyads/u91;->a:Lyads/zw2;

    sget-object v6, Lyads/w36;->b:Lyads/s36;

    sget-object v7, Lyads/bt4;->e:Lnl3;

    move-object v4, v6

    sget-object v6, Lyads/t91;->a:Lyads/l66;

    const-string v3, "bottom-left"

    move-object v0, p1

    move-object v2, p3

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    move-object v6, v4

    move-object v4, v2

    move-object v2, v0

    iget-object v3, p2, Lyads/u91;->b:Lyads/zw2;

    sget-object v8, Lyads/t91;->b:Lyads/l66;

    const-string v5, "bottom-right"

    invoke-static/range {v2 .. v8}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p3

    iget-object v3, p2, Lyads/u91;->c:Lyads/zw2;

    sget-object v8, Lyads/t91;->c:Lyads/l66;

    const-string v5, "top-left"

    invoke-static/range {v2 .. v8}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v0

    iget-object v3, p2, Lyads/u91;->d:Lyads/zw2;

    sget-object v8, Lyads/t91;->d:Lyads/l66;

    const-string v5, "top-right"

    invoke-static/range {v2 .. v8}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p3, v0, p2}, Lyads/p91;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
