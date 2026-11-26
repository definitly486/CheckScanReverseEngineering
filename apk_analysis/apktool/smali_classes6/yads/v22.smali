.class public final Lyads/v22;
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

.method public static a(Lyads/ys4;Lyads/x22;Lorg/json/JSONObject;)Lyads/x22;
    .locals 8

    invoke-interface {p0}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {p0}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p0, Lyads/x22;

    sget-object v3, Lyads/w36;->f:Lyads/p36;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lyads/x22;->a:Lyads/zw2;

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    sget-object v6, Lyads/bt4;->a:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "color"

    move-object v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/x22;-><init>(Lyads/zw2;)V

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 0

    const/4 p0, 0x0

    .line 35
    invoke-static {p1, p0, p2}, Lyads/v22;->a(Lyads/ys4;Lyads/x22;Lorg/json/JSONObject;)Lyads/x22;

    move-result-object p0

    return-object p0
.end method
