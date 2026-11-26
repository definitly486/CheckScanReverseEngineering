.class public final Lyads/kn1;
.super Lyads/lu0;
.source "SourceFile"


# instance fields
.field public final a:Lyads/c60;

.field public final b:Lyads/ln1;

.field public final c:Lyads/vn1;

.field public final d:Lyads/oo1;

.field public final e:Lyads/no1;

.field public final f:Lyads/sz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/c60;Lyads/ln1;Lyads/vn1;)V
    .locals 2

    new-instance v0, Lyads/cv4;

    sget-object v1, Lyads/i16;->c:Lyads/i16;

    invoke-direct {v0, p1, p2, p3, v1}, Lyads/cv4;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/i16;)V

    new-instance p1, Lyads/oo1;

    invoke-direct {p1, v0, p2, p4}, Lyads/oo1;-><init>(Lyads/cv4;Lyads/e4;Lyads/d9;)V

    new-instance p2, Lyads/no1;

    check-cast p3, Lyads/do6;

    iget-object p3, p3, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {p3, p3}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object p3

    invoke-direct {p2, p4, p3}, Lyads/no1;-><init>(Lyads/d9;Lyads/q84;)V

    new-instance p3, Lyads/sz;

    invoke-direct {p3}, Lyads/sz;-><init>()V

    invoke-direct {p0}, Lyads/lu0;-><init>()V

    iput-object p5, p0, Lyads/kn1;->a:Lyads/c60;

    iput-object p6, p0, Lyads/kn1;->b:Lyads/ln1;

    iput-object p7, p0, Lyads/kn1;->c:Lyads/vn1;

    iput-object p1, p0, Lyads/kn1;->d:Lyads/oo1;

    iput-object p2, p0, Lyads/kn1;->e:Lyads/no1;

    iput-object p3, p0, Lyads/kn1;->f:Lyads/sz;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Landroid/net/Uri;Lyads/vh2;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileads"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x5a5c588

    const/4 v3, 0x1

    if-eq v1, v2, :cond_9

    const v2, 0x33a6483b

    if-eq v1, v2, :cond_7

    const v2, 0x3ad40e7b

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const p1, 0x4bb9d424    # 2.4356936E7f

    if-eq v1, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p1, "trackUrl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lyads/kn1;->f:Lyads/sz;

    check-cast p3, Lyads/vq0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p3, v4}, Lyads/sz;->a(Landroid/view/View;Ljava/lang/Long;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object p0, p0, Lyads/kn1;->d:Lyads/oo1;

    iget-object p3, p0, Lyads/oo1;->d:Lyads/e40;

    iget-object v0, p0, Lyads/oo1;->c:Lyads/d9;

    iget-object v1, p0, Lyads/oo1;->b:Lyads/e4;

    invoke-virtual {p3, v1, v0}, Lyads/e40;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object p3

    const-string v0, "trackingUrl"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object p0, p0, Lyads/oo1;->a:Lyads/cv4;

    invoke-virtual {p0, p2, p1, p3}, Lyads/cv4;->a(Ljava/lang/String;Ljava/util/Map;Lyads/h75;)V

    return v3

    :cond_2
    const-string p3, "trackAnalytics"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lyads/kn1;->e:Lyads/no1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "eventName"

    invoke-virtual {p2, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    move-object v4, p2

    :goto_0
    if-eqz v4, :cond_6

    if-eqz p1, :cond_5

    invoke-static {p1}, Lyads/nq3;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_1
    new-instance p2, Lyads/g75;

    iget-object p3, p0, Lyads/no1;->a:Lyads/d9;

    iget-object p3, p3, Lyads/d9;->i:Lyads/c;

    invoke-direct {p2, v4, p1, p3}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p0, p0, Lyads/no1;->b:Lyads/q84;

    invoke-virtual {p0, p2}, Lyads/q84;->a(Lyads/g75;)V

    :cond_6
    return v3

    :cond_7
    const-string p1, "closeAd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lyads/kn1;->a:Lyads/c60;

    invoke-interface {p0}, Lyads/c60;->e()V

    return v3

    :cond_9
    const-string p1, "click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    iget-object p0, p0, Lyads/kn1;->c:Lyads/vn1;

    check-cast p3, Lyads/vq0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2, p3}, Lyads/vn1;->a(Landroid/net/Uri;Landroid/view/View;)V

    return v3

    :cond_b
    :goto_2
    iget-object p0, p0, Lyads/kn1;->b:Lyads/ln1;

    invoke-interface {p0, p2}, Lyads/ln1;->a(Landroid/net/Uri;)Z

    move-result p0

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Lyads/r02;Lyads/vq0;Lyads/fs2;)Z
    .locals 2

    .line 208
    invoke-super {p0, p1, p2, p3}, Lyads/lu0;->a(Lyads/r02;Lyads/vq0;Lyads/fs2;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 209
    invoke-interface {p1}, Lyads/r02;->getUrl()Lyads/as2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lyads/r02;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    invoke-virtual {p0, p1, p3, p2}, Lyads/kn1;->a(Lorg/json/JSONObject;Landroid/net/Uri;Lyads/vh2;)Z

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final a(Lyads/xr0;Lyads/vh2;Lyads/fs2;)Z
    .locals 2

    .line 206
    invoke-super {p0, p1, p2, p3}, Lyads/lu0;->a(Lyads/xr0;Lyads/vh2;Lyads/fs2;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p1, Lyads/xr0;->k:Lyads/as2;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lyads/xr0;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    invoke-virtual {p0, p1, p3, p2}, Lyads/kn1;->a(Lorg/json/JSONObject;Landroid/net/Uri;Lyads/vh2;)Z

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method
