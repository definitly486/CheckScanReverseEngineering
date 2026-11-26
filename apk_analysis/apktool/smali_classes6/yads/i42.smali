.class public final Lyads/i42;
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

    iput-object p1, p0, Lyads/i42;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p2, Lyads/k42;

    invoke-virtual {p0, p1, p2, p3}, Lyads/i42;->a(Lyads/ys4;Lyads/k42;Lorg/json/JSONObject;)Lyads/f42;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/k42;Lorg/json/JSONObject;)Lyads/f42;
    .locals 9

    new-instance v0, Lyads/f42;

    iget-object v2, p2, Lyads/k42;->a:Lyads/zw2;

    iget-object p0, p0, Lyads/i42;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->x3:Lcl4;

    iget-object v6, p0, Lyads/tq3;->v3:Lcl4;

    const-string v4, "item_spacing"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/af1;

    if-nez p0, :cond_0

    sget-object p0, Lyads/j42;->a:Lyads/af1;

    :cond_0
    iget-object v2, p2, Lyads/k42;->b:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/j42;->c:Lyads/l66;

    sget-object v8, Lyads/j42;->b:Lyads/xr2;

    const-string v4, "max_visible_items"

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v8, p1

    :goto_0
    invoke-direct {v0, p0, v8}, Lyads/f42;-><init>(Lyads/af1;Lyads/as2;)V

    return-object v0
.end method
