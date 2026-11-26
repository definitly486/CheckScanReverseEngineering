.class public Lcom/tapjoy/TJAdUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;
    }
.end annotation


# instance fields
.field public a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

.field public b:Lcom/tapjoy/TJAdUnitActivity;

.field public c:Lcom/tapjoy/TJAdUnitJSBridge;

.field public d:Landroid/view/View;

.field public e:Lcom/tapjoy/TJWebView;

.field public f:Z

.field public g:Z

.field public h:Z

.field public volatile i:Z

.field public j:Z

.field public k:Lcom/tapjoy/internal/l0;

.field public l:Lcom/tapjoy/TapjoyCache;

.field public final m:Lcom/tapjoy/d;

.field public final n:Lcom/tapjoy/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tapjoy/d;

    invoke-direct {v0, p0}, Lcom/tapjoy/d;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->m:Lcom/tapjoy/d;

    new-instance v0, Lcom/tapjoy/e;

    invoke-direct {v0, p0}, Lcom/tapjoy/e;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->n:Lcom/tapjoy/e;

    return-void
.end method


# virtual methods
.method public closeRequested(Z)V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested(Ljava/lang/Boolean;)V

    return-void
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->d:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tapjoy/TJWebView;->destroy()V

    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->i:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->f:Z

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJAdUnit;->setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;->onClosed()V

    :cond_4
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->resetContentLoadState()V

    return-void
.end method

.method public fireContentReady()V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;->onContentReady()V

    :cond_0
    return-void
.end method

.method public getBackgroundView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->d:Landroid/view/View;

    return-object p0
.end method

.method public getCloseRequested()Z
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean p0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    return p0
.end method

.method public getSdkBeacon()Lcom/tapjoy/internal/l0;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->k:Lcom/tapjoy/internal/l0;

    return-object p0
.end method

.method public getWebView()Lcom/tapjoy/TJWebView;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    return-object p0
.end method

.method public hasCalledLoad()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tapjoy/TJAdUnit;->g:Z

    return p0
.end method

.method public varargs invokeBridgeCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isPrerendered()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tapjoy/TJAdUnit;->h:Z

    return p0
.end method

.method public load(Lcom/tapjoy/TJPlacementData;ZLandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->g:Z

    new-instance v0, Lcom/tapjoy/c;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/tapjoy/c;-><init>(Lcom/tapjoy/TJAdUnit;Landroid/content/Context;Lcom/tapjoy/TJPlacementData;Z)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyOrientationChanged()V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tapjoy/TJDeviceUtils;->INSTANCE:Lcom/tapjoy/TJDeviceUtils;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJDeviceUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJDeviceUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/TJDeviceUtils;->getOrientationString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->notifyOrientationChanged(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public notifyThemeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const-string v0, "dark"

    goto :goto_0

    :cond_0
    const-string v0, "light"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->notifyThemeChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->setEnabled(Z)V

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitJSBridge;->pause()V

    :cond_0
    return-void
.end method

.method public preload(Lcom/tapjoy/TJPlacementData;Landroid/content/Context;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacementData;->isPrerenderingRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->canPreRenderPlacement()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pre-rendering ad unit for placement: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->incrementPlacementPreRenderCount()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/tapjoy/TJAdUnit;->load(Lcom/tapjoy/TJPlacementData;ZLandroid/content/Context;)V

    return v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->fireContentReady()V

    const/4 p0, 0x0

    return p0
.end method

.method public resetContentLoadState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->g:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->j:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->h:Z

    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p0, "Failed to resume TJAdUnit. TJAdUnitBridge is null."

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume bridge.didLaunchOtherActivity callbackID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->setEnabled(Z)V

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitJSBridge;->resume()V

    return-void
.end method

.method public setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    return-void
.end method

.method public setVisible(Z)V
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tapjoy/TJDeviceUtils;->INSTANCE:Lcom/tapjoy/TJDeviceUtils;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJDeviceUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJDeviceUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/TJDeviceUtils;->getOrientationString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->notifyOrientationChanged(Ljava/lang/String;II)V

    :cond_0
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->f:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->j:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitJSBridge;->display()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setWebViewListener(Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    return-void
.end method
