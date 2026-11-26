.class public final Lcom/my/tracker/obfuscated/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/tracker/obfuscated/g1$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Lcom/my/tracker/obfuscated/c3;

.field final c:Landroid/app/Application;

.field final d:Lcom/my/tracker/obfuscated/i0;

.field final e:Lcom/my/tracker/obfuscated/a;

.field final f:Lcom/my/tracker/obfuscated/n;

.field final g:Lcom/my/tracker/obfuscated/b0;

.field final h:Lcom/my/tracker/obfuscated/w1;

.field final i:Lcom/my/tracker/obfuscated/a2;

.field j:Lcom/my/tracker/obfuscated/r1;

.field protected k:Lcom/my/tracker/obfuscated/x1;


# direct methods
.method public constructor <init>(Lcom/my/tracker/obfuscated/c3;Landroid/app/Application;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/g1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/my/tracker/obfuscated/g1;->b:Lcom/my/tracker/obfuscated/c3;

    iput-object p2, p0, Lcom/my/tracker/obfuscated/g1;->c:Landroid/app/Application;

    const-string v0, "MyTracker created, version: 3.6.0"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/my/tracker/obfuscated/g1$a;

    invoke-direct {v0, p0}, Lcom/my/tracker/obfuscated/g1$a;-><init>(Lcom/my/tracker/obfuscated/g1;)V

    invoke-static {p1, v0, p2}, Lcom/my/tracker/obfuscated/i0;->a(Lcom/my/tracker/obfuscated/c3;Lcom/my/tracker/obfuscated/i0$b;Landroid/content/Context;)Lcom/my/tracker/obfuscated/i0;

    move-result-object v0

    iput-object v0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/c3;->a()Lcom/my/tracker/config/AntiFraudConfig;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/my/tracker/obfuscated/a2;->a(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/config/AntiFraudConfig;Landroid/content/Context;)Lcom/my/tracker/obfuscated/a2;

    move-result-object v1

    iput-object v1, p0, Lcom/my/tracker/obfuscated/g1;->i:Lcom/my/tracker/obfuscated/a2;

    invoke-static {v0, p1, v1, p2}, Lcom/my/tracker/obfuscated/a;->a(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/c3;Lcom/my/tracker/obfuscated/a2;Landroid/app/Application;)Lcom/my/tracker/obfuscated/a;

    move-result-object v1

    iput-object v1, p0, Lcom/my/tracker/obfuscated/g1;->e:Lcom/my/tracker/obfuscated/a;

    invoke-static {p1, p2}, Lcom/my/tracker/obfuscated/n;->a(Lcom/my/tracker/obfuscated/c3;Landroid/content/Context;)Lcom/my/tracker/obfuscated/n;

    move-result-object p1

    iput-object p1, p0, Lcom/my/tracker/obfuscated/g1;->f:Lcom/my/tracker/obfuscated/n;

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b0;->a(Lcom/my/tracker/obfuscated/i0;)Lcom/my/tracker/obfuscated/b0;

    move-result-object p1

    iput-object p1, p0, Lcom/my/tracker/obfuscated/g1;->g:Lcom/my/tracker/obfuscated/b0;

    invoke-static {v0, p2}, Lcom/my/tracker/obfuscated/w1;->a(Lcom/my/tracker/obfuscated/i0;Landroid/content/Context;)Lcom/my/tracker/obfuscated/w1;

    move-result-object p1

    iput-object p1, p0, Lcom/my/tracker/obfuscated/g1;->h:Lcom/my/tracker/obfuscated/w1;

    invoke-static {}, Lcom/my/tracker/obfuscated/x1;->a()Lcom/my/tracker/obfuscated/x1;

    move-result-object p1

    iput-object p1, p0, Lcom/my/tracker/obfuscated/g1;->k:Lcom/my/tracker/obfuscated/x1;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/my/tracker/obfuscated/c3;Landroid/app/Application;)Lcom/my/tracker/obfuscated/g1;
    .locals 0

    .line 166
    invoke-virtual {p1, p0}, Lcom/my/tracker/obfuscated/c3;->b(Ljava/lang/String;)V

    .line 167
    new-instance p0, Lcom/my/tracker/obfuscated/g1;

    invoke-direct {p0, p1, p2}, Lcom/my/tracker/obfuscated/g1;-><init>(Lcom/my/tracker/obfuscated/c3;Landroid/app/Application;)V

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->g:Lcom/my/tracker/obfuscated/b0;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/b0;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/i0;->a()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-static {}, Lcom/my/tracker/obfuscated/p2;->e()Lcom/my/tracker/obfuscated/y2;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/my/tracker/obfuscated/y2;->a(I)V

    return-void
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->b:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/c3;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    const-string p0, "MyTracker: autotrackingPurchase is disabled, you should enable it before using onActivityResult(*) method"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    .line 195
    :cond_1
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->h:Lcom/my/tracker/obfuscated/w1;

    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/w1;->b(ILandroid/content/Intent;)V

    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 1

    .line 196
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->b:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/c3;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    const-string p0, "MyTracker: autotrackingPurchase is disabled, you should enable it before using onPurchasesUpdated(*) method"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    .line 199
    :cond_1
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->h:Lcom/my/tracker/obfuscated/w1;

    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/w1;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(ILjava/util/Map;)V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/i0;->a(ILjava/util/Map;)V

    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 201
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-static {}, Lcom/my/tracker/obfuscated/p2;->e()Lcom/my/tracker/obfuscated/y2;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/my/tracker/obfuscated/y2;->a(IZ)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->e:Lcom/my/tracker/obfuscated/a;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/a;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Lcom/my/tracker/ads/AdEvent;)V
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/i0;->a(Lcom/my/tracker/ads/AdEvent;)V

    return-void
.end method

.method public a(Lcom/my/tracker/miniapps/MiniAppEvent;)V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/i0;->a(Lcom/my/tracker/miniapps/MiniAppEvent;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    .line 188
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->b:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/c3;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const-string p0, "MyTracker: autotrackingPurchase is enabled, you mustn\'t use trackAppGalleryPurchase(*) method"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->h:Lcom/my/tracker/obfuscated/w1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/my/tracker/obfuscated/w1;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/my/tracker/obfuscated/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/i0;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MyTracker: tracker has already been initialized"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MyTracker is initialized with id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/tracker/obfuscated/g1;->b:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/c3;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->c:Landroid/app/Application;

    invoke-static {v0}, Lcom/my/tracker/obfuscated/f1;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->c:Landroid/app/Application;

    invoke-static {v0}, Lcom/my/tracker/obfuscated/e0;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->b:Lcom/my/tracker/obfuscated/c3;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lhv9;

    invoke-direct {v2, v1}, Lhv9;-><init>(Lcom/my/tracker/obfuscated/i0;)V

    iget-object v1, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Liv9;

    invoke-direct {v3, v1}, Liv9;-><init>(Lcom/my/tracker/obfuscated/i0;)V

    invoke-virtual {v0, v2, v3}, Lcom/my/tracker/obfuscated/c3;->a(Lcom/my/tracker/obfuscated/v;Lcom/my/tracker/obfuscated/v;)V

    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/i0;->d()V

    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->b:Lcom/my/tracker/obfuscated/c3;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    iget-object v2, p0, Lcom/my/tracker/obfuscated/g1;->i:Lcom/my/tracker/obfuscated/a2;

    iget-object v3, p0, Lcom/my/tracker/obfuscated/g1;->c:Landroid/app/Application;

    invoke-static {v0, v1, v2, v3}, Lcom/my/tracker/obfuscated/a1;->a(Lcom/my/tracker/obfuscated/c3;Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/a2;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/g1;->f:Lcom/my/tracker/obfuscated/n;

    iget-object v2, p0, Lcom/my/tracker/obfuscated/g1;->c:Landroid/app/Application;

    invoke-static {v0, v1, v2}, Lcom/my/tracker/obfuscated/t0;->a(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/n;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/g1;->f:Lcom/my/tracker/obfuscated/n;

    iget-object v2, p0, Lcom/my/tracker/obfuscated/g1;->c:Landroid/app/Application;

    invoke-static {v0, v1, v2}, Lcom/my/tracker/obfuscated/z0;->a(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/n;Landroid/content/Context;)V

    invoke-static {}, Lcom/my/tracker/obfuscated/p2;->d()Lcom/my/tracker/obfuscated/x2;

    move-result-object v0

    iget-object v1, p0, Lcom/my/tracker/obfuscated/g1;->b:Lcom/my/tracker/obfuscated/c3;

    iget-object v2, p0, Lcom/my/tracker/obfuscated/g1;->c:Landroid/app/Application;

    invoke-interface {v0, v1, v2}, Lcom/my/tracker/obfuscated/x2;->a(Lcom/my/tracker/obfuscated/c3;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->e:Lcom/my/tracker/obfuscated/a;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/a;->a()V

    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->h:Lcom/my/tracker/obfuscated/w1;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/w1;->a()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/g1;->c:Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/my/tracker/obfuscated/r1;->a(Lcom/my/tracker/obfuscated/i0;Landroid/app/Application;)Lcom/my/tracker/obfuscated/r1;

    move-result-object v0

    iput-object v0, p0, Lcom/my/tracker/obfuscated/g1;->j:Lcom/my/tracker/obfuscated/r1;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/r1;->a(Ljava/util/List;)V

    :cond_1
    iget-object p1, p0, Lcom/my/tracker/obfuscated/g1;->k:Lcom/my/tracker/obfuscated/x1;

    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->c:Landroid/app/Application;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljv9;

    invoke-direct {v1, p0}, Ljv9;-><init>(Lcom/my/tracker/obfuscated/i0;)V

    invoke-virtual {p1, v0, v1}, Lcom/my/tracker/obfuscated/x1;->a(Landroid/content/Context;Lcom/my/tracker/obfuscated/v;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/i0;->c(Ljava/util/Map;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/g1;->b:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/c3;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const-string p0, "MyTracker: autotrackingPurchase is enabled, you mustn\'t use trackPurchase(*) method"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    .line 187
    :cond_1
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->h:Lcom/my/tracker/obfuscated/w1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/my/tracker/obfuscated/w1;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public b(IZ)V
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-static {}, Lcom/my/tracker/obfuscated/p2;->e()Lcom/my/tracker/obfuscated/y2;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/my/tracker/obfuscated/y2;->b(IZ)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/my/tracker/obfuscated/i0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/g1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->d:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/i0;->d(Ljava/util/Map;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object p0, p0, Lcom/my/tracker/obfuscated/g1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    xor-int/lit8 v0, p0, 0x1

    if-nez p0, :cond_0

    const-string p0, "MyTracker error: tracker hasn\'t been initialized"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    :cond_0
    return v0
.end method
