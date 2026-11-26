.class public final Lyads/yf1;
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

    new-instance p0, Lyads/ag1;

    const-string p1, "name"

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v3, v1}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object p1

    sget-object v5, Lyads/fd1;->d:Lnl3;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "type"

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/ag1;-><init>(Lyads/zw2;Lyads/zw2;)V

    return-object p0
.end method
