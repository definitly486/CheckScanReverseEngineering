.class public abstract Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lyads/in3;",
        ">",
        "Landroid/app/Activity;"
    }
.end annotation


# instance fields
.field private final a:Ly22;

.field private c:Lyads/in3;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    invoke-static {v1, v0}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->a:Ly22;

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ly22;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->a:Ly22;

    return-object p0
.end method

.method public final b()Lyads/in3;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->c:Lyads/in3;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->c()Lyads/kg6;

    move-result-object v0

    check-cast v0, Leh1;

    iget-object v0, v0, Leh1;->b:Ljava/lang/Object;

    check-cast v0, Lyads/gf0;

    invoke-static {v0}, Lyads/gf0;->s(Lyads/gf0;)Lyads/in3;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->c:Lyads/in3;

    :cond_0
    return-object v0
.end method

.method public abstract c()Lyads/kg6;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lyads/ap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lyads/ap;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lyads/ap;->a:Lyads/in3;

    if-eqz v0, :cond_1

    move-object v2, v0

    :cond_1
    iput-object v2, p0, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->c:Lyads/in3;

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->a:Ly22;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lz22;->b(Ly22;Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->c:Lyads/in3;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyads/in3;->a:Ly22;

    invoke-static {p0, v1}, Lz22;->b(Ly22;Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lyads/ap;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->b()Lyads/in3;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/ap;-><init>(Lyads/in3;)V

    return-object v0
.end method
