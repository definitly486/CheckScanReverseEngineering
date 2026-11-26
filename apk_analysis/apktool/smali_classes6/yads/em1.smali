.class public final Lyads/em1;
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

    check-cast p2, Lyads/gm1;

    new-instance p0, Lyads/bm1;

    iget-object v1, p2, Lyads/gm1;->a:Lyads/zw2;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v6, Lyads/fm1;->a:Lyads/xr2;

    const-string v3, "allow_empty"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, p1

    :goto_0
    iget-object p1, p2, Lyads/gm1;->b:Lyads/zw2;

    sget-object p3, Lyads/w36;->c:Lyads/u36;

    const-string v1, "label_id"

    invoke-static {v0, p1, v2, v1, p3}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    iget-object p2, p2, Lyads/gm1;->c:Lyads/zw2;

    const-string p3, "variable"

    invoke-static {v0, p2, v2, p3}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v6, p1, p2}, Lyads/bm1;-><init>(Lyads/as2;Lyads/as2;Ljava/lang/String;)V

    return-object p0
.end method
