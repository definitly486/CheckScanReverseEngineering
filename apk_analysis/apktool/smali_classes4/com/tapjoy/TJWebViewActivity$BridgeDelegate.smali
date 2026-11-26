.class public Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;
.super Lcom/tapjoy/TJJSBridgeDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BridgeDelegate"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;->a:Lcom/tapjoy/TJWebViewActivity;

    invoke-direct {p0}, Lcom/tapjoy/TJJSBridgeDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()Z
    .locals 0

    invoke-super {p0}, Lcom/tapjoy/TJJSBridgeDelegate;->dismiss()Z

    iget-object p0, p0, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;->a:Lcom/tapjoy/TJWebViewActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public fireContentReady()Z
    .locals 1

    invoke-super {p0}, Lcom/tapjoy/TJJSBridgeDelegate;->fireContentReady()Z

    iget-object p0, p0, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;->a:Lcom/tapjoy/TJWebViewActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJActivity;->setProgressSpinnerVisibility(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;->a:Lcom/tapjoy/TJWebViewActivity;

    return-object p0
.end method

.method public getOrientation()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/tapjoy/TJDeviceUtils;->INSTANCE:Lcom/tapjoy/TJDeviceUtils;

    iget-object v2, p0, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;->a:Lcom/tapjoy/TJWebViewActivity;

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJDeviceUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    iget-object p0, p0, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;->a:Lcom/tapjoy/TJWebViewActivity;

    invoke-virtual {v1, p0}, Lcom/tapjoy/TJDeviceUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lcom/tapjoy/TJDeviceUtils;->getOrientationString(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "orientation"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "height"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;->getContext()Landroid/content/Context;

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

.method public getTextZoom(Lcom/tapjoy/TJTaskHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/TJTaskHandler<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tapjoy/o0;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/o0;-><init>(Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;Lcom/tapjoy/TJTaskHandler;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;->a:Lcom/tapjoy/TJWebViewActivity;

    iget-object p0, p0, Lcom/tapjoy/TJWebViewActivity;->f:Lcom/tapjoy/TJWebView;

    return-object p0
.end method

.method public setBackgroundColor(Ljava/lang/String;Lcom/tapjoy/TJTaskHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJTaskHandler<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tapjoy/l0;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/l0;-><init>(Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;Ljava/lang/String;Lcom/tapjoy/TJTaskHandler;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCloseButtonClickable(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tapjoy/TJJSBridgeDelegate;->setCloseButtonClickable(Z)V

    new-instance v0, Lcom/tapjoy/n0;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/n0;-><init>(Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;Z)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCloseButtonVisible(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tapjoy/TJJSBridgeDelegate;->setCloseButtonVisible(Z)V

    new-instance v0, Lcom/tapjoy/m0;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/m0;-><init>(Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;Z)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOrientation(I)Z
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;->a:Lcom/tapjoy/TJWebViewActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setTextZoom(F)V
    .locals 1

    new-instance v0, Lcom/tapjoy/p0;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/p0;-><init>(Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;F)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldClose(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;->a:Lcom/tapjoy/TJWebViewActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public unsetOrientation()Z
    .locals 1

    iget-object p0, p0, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;->a:Lcom/tapjoy/TJWebViewActivity;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 p0, 0x1

    return p0
.end method
