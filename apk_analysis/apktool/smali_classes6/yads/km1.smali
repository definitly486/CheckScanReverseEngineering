.class public final Lyads/km1;
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

    check-cast p2, Lyads/mm1;

    new-instance p0, Lyads/hm1;

    iget-object v1, p2, Lyads/mm1;->a:Lyads/zw2;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v6, Lyads/lm1;->a:Lyads/xr2;

    const-string v3, "allow_empty"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, v6

    :cond_0
    iget-object v3, p2, Lyads/mm1;->b:Lyads/zw2;

    move-object v7, v5

    const-string v5, "condition"

    move-object v6, v4

    move-object v4, v2

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p3

    move-object v2, v4

    iget-object v1, p2, Lyads/mm1;->c:Lyads/zw2;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const-string v4, "label_id"

    invoke-static {v0, v1, v2, v4, v3}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v0

    iget-object p2, p2, Lyads/mm1;->d:Lyads/zw2;

    const-string v1, "variable"

    invoke-static {p2, v2, v1}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, p2}, Lyads/hm1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Ljava/lang/String;)V

    return-object p0
.end method
