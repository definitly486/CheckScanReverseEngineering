.class public final Lyads/hh2;
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

    check-cast p2, Lyads/jh2;

    new-instance p0, Lyads/zg2;

    iget-object v1, p2, Lyads/jh2;->a:Lyads/zw2;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/ih2;->a:Lyads/l66;

    const-string v3, "height"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    iget-object v3, p2, Lyads/jh2;->b:Lyads/zw2;

    sget-object v8, Lyads/ih2;->b:Lyads/l66;

    move-object v7, v5

    const-string v5, "width"

    move-object v6, v4

    move-object v4, v2

    move-object v2, v0

    invoke-static/range {v2 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/zg2;-><init>(Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
