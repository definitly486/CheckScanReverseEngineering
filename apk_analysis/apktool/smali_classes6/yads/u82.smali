.class public final Lyads/u82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 7

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v3

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p0, Lyads/cb2;

    move v4, v3

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const/4 v5, 0x0

    const-string v2, "description"

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object p1

    sget-object v5, Lyads/t72;->d:Lnl3;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "type"

    move v3, v4

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/cb2;-><init>(Lyads/zw2;Lyads/zw2;)V

    return-object p0
.end method
