.class public final Lcom/tapjoy/k;
.super Lcom/tapjoy/TJJSBridgeDelegate;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Lcom/tapjoy/TJJSBridgeDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismiss()Z
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public final fireContentReady()Z
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->fireContentReady()V

    const/4 p0, 0x1

    return p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object p0, p0, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOrientation()Ljava/util/Map;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/k;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/tapjoy/TJDeviceUtils;->INSTANCE:Lcom/tapjoy/TJDeviceUtils;

    invoke-virtual {v1, p0}, Lcom/tapjoy/TJDeviceUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, p0}, Lcom/tapjoy/TJDeviceUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TJDeviceUtils;->getOrientationString(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "orientation"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "width"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "height"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3}, Lcom/tapjoy/TJDeviceUtils;->getScreenRotation(Landroid/content/Context;II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "rotation"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getStatusBarHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/tapjoy/k;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/tapjoy/TJDeviceUtils;->INSTANCE:Lcom/tapjoy/TJDeviceUtils;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJDeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getTextZoom(Lcom/tapjoy/TJTaskHandler;)V
    .locals 1

    new-instance v0, Lcom/tapjoy/f;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/f;-><init>(Lcom/tapjoy/k;Lcom/tapjoy/TJTaskHandler;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    return-object p0
.end method

.method public final setBackgroundColor(Ljava/lang/String;Lcom/tapjoy/TJTaskHandler;)V
    .locals 1

    new-instance v0, Lcom/tapjoy/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/h;-><init>(Lcom/tapjoy/k;Ljava/lang/String;Lcom/tapjoy/TJTaskHandler;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setCloseButtonClickable(Z)V
    .locals 1

    new-instance v0, Lcom/tapjoy/j;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/j;-><init>(Lcom/tapjoy/k;Z)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setCloseButtonVisible(Z)V
    .locals 1

    new-instance v0, Lcom/tapjoy/i;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/i;-><init>(Lcom/tapjoy/k;Z)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setOrientation(I)Z
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final setTextZoom(F)V
    .locals 1

    new-instance v0, Lcom/tapjoy/g;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/g;-><init>(Lcom/tapjoy/k;F)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setupSdkBeacons(Lcom/tapjoy/internal/l0;)V
    .locals 1

    iget-object p0, p0, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->k:Lcom/tapjoy/internal/l0;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/tapjoy/TJAdUnit;->f:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/tapjoy/internal/l0;->c:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/tapjoy/internal/l0;->f:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/tapjoy/internal/l0;->f:Z

    new-instance p0, Ljava/util/HashMap;

    iget-object v0, p1, Lcom/tapjoy/internal/l0;->b:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v0, Lcom/tapjoy/internal/j0;

    invoke-direct {v0, p1, p0}, Lcom/tapjoy/internal/j0;-><init>(Lcom/tapjoy/internal/l0;Ljava/util/HashMap;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final shouldClose(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final unsetOrientation()Z
    .locals 1

    iget-object p0, p0, Lcom/tapjoy/k;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
