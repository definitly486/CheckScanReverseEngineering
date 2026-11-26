.class public final Lyads/cf1;
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

.method public static a(Lyads/ys4;Lyads/ff1;Lorg/json/JSONObject;)Lyads/ff1;
    .locals 9

    invoke-interface {p0}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {p0}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p0, Lyads/ff1;

    sget-object v3, Lyads/ef1;->b:Lyads/m36;

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lyads/ff1;->a:Lyads/zw2;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v8

    :goto_0
    sget-object v6, Lyads/g12;->d:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "unit"

    move-object v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p2

    sget-object v3, Lyads/w36;->b:Lyads/s36;

    if-eqz p1, :cond_1

    iget-object v8, p1, Lyads/ff1;->b:Lyads/zw2;

    :cond_1
    move-object v5, v8

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/ef1;->c:Lyads/l66;

    const-string v2, "value"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lyads/ff1;-><init>(Lyads/zw2;Lyads/zw2;)V

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 0

    const/4 p0, 0x0

    .line 52
    invoke-static {p1, p0, p2}, Lyads/cf1;->a(Lyads/ys4;Lyads/ff1;Lorg/json/JSONObject;)Lyads/ff1;

    move-result-object p0

    return-object p0
.end method
