.class public final Lyads/b11;
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

    check-cast p2, Lyads/d11;

    new-instance p0, Lyads/y01;

    iget-object v1, p2, Lyads/d11;->a:Lyads/zw2;

    sget-object v4, Lyads/c11;->a:Lyads/m36;

    sget-object v5, Lyads/x01;->d:Lnl3;

    const-string v3, "action"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    iget-object p2, p2, Lyads/d11;->b:Lyads/zw2;

    sget-object p3, Lyads/w36;->c:Lyads/u36;

    const-string v1, "id"

    invoke-static {v0, p2, v2, v1, p3}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/y01;-><init>(Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
