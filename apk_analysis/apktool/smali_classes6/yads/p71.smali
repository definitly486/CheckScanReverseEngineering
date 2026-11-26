.class public final Lyads/p71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/p71;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 8

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p1, Lyads/s71;

    iget-object p0, p0, Lyads/p71;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->t9:Lcl4;

    const-string v2, "div"

    move v3, v4

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p0

    sget-object p2, Lyads/w36;->c:Lyads/u36;

    const/4 v5, 0x0

    const-string v2, "id"

    move v4, v3

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object p2

    move v3, v4

    sget-object v2, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    move-object v3, v2

    const-string v2, "selector"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lyads/s71;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object p1
.end method
