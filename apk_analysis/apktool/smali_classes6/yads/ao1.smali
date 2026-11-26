.class public final Lyads/ao1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/pg4;

.field public final b:Lyads/m2;

.field public final c:Lyads/q84;

.field public d:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lyads/pg4;Lyads/m2;Lyads/q84;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ao1;->a:Lyads/pg4;

    iput-object p2, p0, Lyads/ao1;->b:Lyads/m2;

    iput-object p3, p0, Lyads/ao1;->c:Lyads/q84;

    return-void
.end method

.method public static final a(Lyads/ao1;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lyads/ao1;->d:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 5

    invoke-static {}, Lcom/monetization/ads/core/divkit/DivKitFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/ao1;->b:Lyads/m2;

    invoke-virtual {p0}, Lyads/m2;->e()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lyads/ao1;->a:Lyads/pg4;

    invoke-interface {v0}, Lyads/pg4;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyads/fo1;

    iget-object v3, v3, Lyads/fo1;->a:Ljava/lang/String;

    sget-object v4, Lyads/un0;->b:[Lyads/un0;

    const-string v4, "close_dialog"

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_0
    check-cast v2, Lyads/fo1;

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_4

    iget-object p1, p0, Lyads/ao1;->b:Lyads/m2;

    invoke-virtual {p1}, Lyads/m2;->e()V

    return-void

    :cond_4
    new-instance v0, Lyads/eo1;

    const/4 v3, 0x6

    invoke-direct {v0, p1, v1, v3}, Lyads/eo1;-><init>(Landroid/content/Context;Lyads/vn1;I)V

    iget-object v0, v0, Lyads/eo1;->d:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/c81;

    const-string v3, ""

    invoke-static {p1, v0, v1, v3}, Lyads/rh2;->a(Landroid/content/Context;Lyads/c81;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)Lyads/vq0;

    move-result-object v0

    new-instance v1, Landroid/app/Dialog;

    sget v3, Lcom/yandex/mobile/ads/R$style;->MonetizationAdsInternal_FullscreenDialog:I

    invoke-direct {v1, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lvn9;

    invoke-direct {p1, p0}, Lvn9;-><init>(Lyads/ao1;)V

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance p1, Lyads/m10;

    iget-object v3, p0, Lyads/ao1;->b:Lyads/m2;

    invoke-direct {p1, v1, v3}, Lyads/m10;-><init>(Landroid/app/Dialog;Lyads/m2;)V

    new-instance v3, Lyads/n10;

    invoke-direct {v3, p1}, Lyads/n10;-><init>(Lyads/m10;)V

    invoke-virtual {v0, v3}, Lyads/vq0;->setActionHandler(Lyads/lu0;)V

    iget-object p1, v2, Lyads/fo1;->e:Lyads/db1;

    iget-object v2, v2, Lyads/fo1;->f:Lyads/qb1;

    invoke-virtual {v0, p1, v2}, Lyads/vq0;->a(Lyads/db1;Lyads/qb1;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-static {v1}, Lyads/fo0;->a(Landroid/app/Dialog;)V

    iput-object v1, p0, Lyads/ao1;->d:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    iget-object p0, p0, Lyads/ao1;->c:Lyads/q84;

    const-string v0, "Failed to show DivKit close dialog"

    invoke-virtual {p0, v0, p1}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
