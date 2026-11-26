.class public final Lcom/my/tracker/obfuscated/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/i0$a;
.implements Lcom/my/tracker/obfuscated/d$b;


# instance fields
.field final a:Lcom/my/tracker/obfuscated/i0;

.field final b:Lcom/my/tracker/obfuscated/t1;

.field final c:Lcom/my/tracker/obfuscated/d;


# direct methods
.method private constructor <init>(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/t1;Lcom/my/tracker/obfuscated/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/e;->a:Lcom/my/tracker/obfuscated/i0;

    iput-object p2, p0, Lcom/my/tracker/obfuscated/e;->b:Lcom/my/tracker/obfuscated/t1;

    invoke-virtual {p3, p0}, Lcom/my/tracker/obfuscated/d$a;->a(Lcom/my/tracker/obfuscated/d$b;)Lcom/my/tracker/obfuscated/d;

    move-result-object p1

    iput-object p1, p0, Lcom/my/tracker/obfuscated/e;->c:Lcom/my/tracker/obfuscated/d;

    return-void
.end method

.method public static a(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/t1;Landroid/content/Context;)Lcom/my/tracker/obfuscated/e;
    .locals 1

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/my/tracker/obfuscated/d;->a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/d$a;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p0, "AppGalleryPurchaseHandler: can\'t support appGallery purchases "

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/my/tracker/obfuscated/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/tracker/obfuscated/e;-><init>(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/t1;Lcom/my/tracker/obfuscated/d$a;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/my/tracker/obfuscated/e;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/my/tracker/obfuscated/e;->b()V

    return-void
.end method

.method private synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/my/tracker/obfuscated/d;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 33
    const-string p0, "AppGalleryPurchaseHandler: error parse productInfo object"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/e;->a:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual/range {p0 .. p5}, Lcom/my/tracker/obfuscated/i0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic b()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/my/tracker/obfuscated/e;->b:Lcom/my/tracker/obfuscated/t1;

    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/t1;->b()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-string p0, "AppGalleryPurchaseHandler: not yet time for tracking"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/my/tracker/obfuscated/e;->c:Lcom/my/tracker/obfuscated/d;

    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/d;->a()V

    iget-object p0, p0, Lcom/my/tracker/obfuscated/e;->b:Lcom/my/tracker/obfuscated/t1;

    invoke-virtual {p0, v0, v1}, Lcom/my/tracker/obfuscated/t1;->a(J)V

    return-void
.end method

.method public static synthetic b(Lcom/my/tracker/obfuscated/e;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/my/tracker/obfuscated/e;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/my/tracker/obfuscated/e;->a:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {v0, p0}, Lcom/my/tracker/obfuscated/i0;->a(Lcom/my/tracker/obfuscated/i0$a;)V

    .line 25
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/e;->c()V

    return-void
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 26
    const-string p0, "AppGalleryPurchaseHandler: result code isn\'t equal to RESULT_OK"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 27
    const-string p0, "AppGalleryPurchaseHandler: empty intent has been received"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/my/tracker/obfuscated/e;->c:Lcom/my/tracker/obfuscated/d;

    invoke-virtual {p0, p2}, Lcom/my/tracker/obfuscated/d;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    .line 29
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string p0, "AppGalleryPurchaseHandler: can\'t addAppGalleryRawPurchases, appGalleryRawPurchases is empty"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/e;->a:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {v0, p1, p0}, Lcom/my/tracker/obfuscated/i0;->a(Ljava/util/List;Lcom/my/tracker/obfuscated/i0$a;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7

    .line 39
    new-instance v0, Lst9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lst9;-><init>(Lcom/my/tracker/obfuscated/e;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/my/tracker/obfuscated/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1

    .line 36
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string p0, "AppGalleryPurchaseHandler: empty subs raw purchases list"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/e;->c:Lcom/my/tracker/obfuscated/d;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/d;->a(Ljava/util/List;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 18
    new-instance v0, Lrr0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lrr0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/my/tracker/obfuscated/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AppGalleryPurchaseHandler: can\'t trackAppGalleryRawPurchases, appGalleryRawPurchases is empty"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/e;->a:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/i0;->c(Ljava/util/List;)V

    return-void
.end method
