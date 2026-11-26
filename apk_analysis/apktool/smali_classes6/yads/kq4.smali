.class public final Lyads/kq4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/iq4;


# instance fields
.field public final a:Lcom/yandex/mobile/ads/common/AdActivity;

.field public final b:Lyads/d2;

.field public final c:Landroid/window/OnBackInvokedCallback;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/common/AdActivity;Lyads/d2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/kq4;->a:Lcom/yandex/mobile/ads/common/AdActivity;

    iput-object p2, p0, Lyads/kq4;->b:Lyads/d2;

    new-instance p1, Lb1a;

    invoke-direct {p1, p0}, Lb1a;-><init>(Lyads/kq4;)V

    iput-object p1, p0, Lyads/kq4;->c:Landroid/window/OnBackInvokedCallback;

    return-void
.end method

.method public static final a(Lyads/kq4;)V
    .locals 2

    iget-object v0, p0, Lyads/kq4;->b:Lyads/d2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lyads/d2;->c:Lyads/n2;

    invoke-interface {v0}, Lyads/n2;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lyads/kq4;->a:Lcom/yandex/mobile/ads/common/AdActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 19
    iget-object v0, p0, Lyads/kq4;->a:Lcom/yandex/mobile/ads/common/AdActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    .line 20
    iget-object p0, p0, Lyads/kq4;->c:Landroid/window/OnBackInvokedCallback;

    const/4 v1, 0x0

    .line 21
    invoke-interface {v0, v1, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lyads/kq4;->a:Lcom/yandex/mobile/ads/common/AdActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object p0, p0, Lyads/kq4;->c:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, p0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method
