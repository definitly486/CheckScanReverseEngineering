.class public Lcom/tapjoy/TJAdUnitActivity;
.super Lcom/tapjoy/TJActivity;
.source "SourceFile"


# static fields
.field public static i:Lcom/tapjoy/TJAdUnitActivity;


# instance fields
.field public final e:Landroid/os/Handler;

.field public f:Lcom/tapjoy/TJAdUnit;

.field public g:Lcom/tapjoy/TJPlacementData;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tapjoy/TJActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->a(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getCloseRequested()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "closeRequested"

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJAdUnit;->closeRequested(Z)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Landroid/os/Handler;

    new-instance v0, Lcom/tapjoy/l;

    invoke-direct {v0, p0}, Lcom/tapjoy/l;-><init>(Lcom/tapjoy/TJAdUnitActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJPlacementData;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/tapjoy/TJMemoryDataStorage;->getInstance()Lcom/tapjoy/TJMemoryDataStorage;

    move-result-object p1

    iget-object p0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tapjoy/TJMemoryDataStorage;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/TJAdUnitActivity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Z

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJPlacementData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "SHOW"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content dismissed for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->f:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/tapjoy/TJPlacementListener;->onContentDismiss(Lcom/tapjoy/TJPlacement;)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJAdUnitActivity;->a(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnit;->notifyOrientationChanged()V

    iget-object p0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->notifyThemeChanged()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TJAdUnitActivity onCreate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/tapjoy/TJActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "placement_name"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/tapjoy/TJMemoryDataStorage;->getInstance()Lcom/tapjoy/TJMemoryDataStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJMemoryDataStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/tapjoy/TJPlacementData;

    :cond_1
    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJPlacementData;

    if-nez v0, :cond_2

    const-string p1, "Failed to launch AdUnit Activity"

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/TJCorePlacement;->getAdUnit()Lcom/tapjoy/TJAdUnit;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/tapjoy/TJAdUnit;

    invoke-direct {p1}, Lcom/tapjoy/TJAdUnit;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    :goto_1
    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnit;->hasCalledLoad()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const-string p1, "No content loaded for ad unit -- loading now"

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p1, v1, v0, p0}, Lcom/tapjoy/TJAdUnit;->load(Lcom/tapjoy/TJPlacementData;ZLandroid/content/Context;)V

    :cond_5
    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1, p0}, Lcom/tapjoy/TJAdUnit;->setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V

    :try_start_0
    sget-object p1, Lcom/tapjoy/TJDeviceUtils;->INSTANCE:Lcom/tapjoy/TJDeviceUtils;

    invoke-virtual {p1, p0}, Lcom/tapjoy/TJDeviceUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnit;->getBackgroundView()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/TJActivity;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->getWebView()Lcom/tapjoy/TJWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJActivity;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    iget-object v2, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacementData;->hasProgressSpinner()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJActivity;->setProgressSpinnerVisibility(Z)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJActivity;->setProgressSpinnerVisibility(Z)V

    :goto_2
    iget-object p1, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/tapjoy/TJActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/tapjoy/TJActivity;->c:Lcom/tapjoy/TJCloseButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJAdUnit;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->b()V

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/TJAdUnitActivity;

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "onPause"

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->pause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJPlacementData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->shouldHandleDismissOnPause()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "is Finishing"

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->b()V

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 1

    const-string v0, "onResume"

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object p0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Lcom/tapjoy/TJAdUnit;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->resume()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string p0, "onStart"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string p0, "onStop"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return-void
.end method
