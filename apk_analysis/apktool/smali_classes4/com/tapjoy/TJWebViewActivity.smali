.class public Lcom/tapjoy/TJWebViewActivity;
.super Lcom/tapjoy/TJActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;
    }
.end annotation


# instance fields
.field public e:Landroid/view/View;

.field public f:Lcom/tapjoy/TJWebView;

.field public g:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/TJActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    if-nez v0, :cond_0

    const-string v0, "closeRequested"

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested(Ljava/lang/Boolean;)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tapjoy/k0;

    invoke-direct {v1, p0}, Lcom/tapjoy/k0;-><init>(Lcom/tapjoy/TJWebViewActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/tapjoy/TJDeviceUtils;->INSTANCE:Lcom/tapjoy/TJDeviceUtils;

    invoke-virtual {p1, p0}, Lcom/tapjoy/TJDeviceUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, p0}, Lcom/tapjoy/TJDeviceUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/TJDeviceUtils;->getOrientationString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->notifyOrientationChanged(Ljava/lang/String;II)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    iget-object p0, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const-string p1, "dark"

    goto :goto_0

    :cond_0
    const-string p1, "light"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJAdUnitJSBridge;->notifyThemeChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/tapjoy/TJActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/tapjoy/TJDeviceUtils;->INSTANCE:Lcom/tapjoy/TJDeviceUtils;

    invoke-virtual {p1, p0}, Lcom/tapjoy/TJDeviceUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    const-string v4, "reuseHTML"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const-string v5, "html"

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_2
    move-object v7, v0

    move-object v6, v3

    goto :goto_2

    :cond_3
    move-object v6, v0

    move-object v7, v6

    move v4, v1

    :goto_2
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tapjoy/TJWebViewActivity;->e:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/tapjoy/TJWebViewActivity;->e:Landroid/view/View;

    invoke-virtual {v1, v2, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v1, Lcom/tapjoy/TJWebView;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/TJWebViewActivity;->f:Lcom/tapjoy/TJWebView;

    new-instance v2, Lcom/tapjoy/q0;

    invoke-direct {v2, p0}, Lcom/tapjoy/q0;-><init>(Lcom/tapjoy/TJWebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lcom/tapjoy/TJAdUnitJSBridge;

    new-instance v2, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;-><init>(Lcom/tapjoy/TJWebViewActivity;)V

    invoke-direct {v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Lcom/tapjoy/TJJSBridgeDelegate;)V

    iput-object v1, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v5, p0, Lcom/tapjoy/TJWebViewActivity;->f:Lcom/tapjoy/TJWebView;

    if-eqz v4, :cond_4

    const-string v9, "UTF-8"

    const/4 v10, 0x0

    const-string v8, "text/html"

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_3
    iget-object v1, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/tapjoy/TJWebViewActivity;->f:Lcom/tapjoy/TJWebView;

    invoke-virtual {v1, v2, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TJActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TJActivity;->c:Lcom/tapjoy/TJCloseButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 188
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/TJActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->f:Lcom/tapjoy/TJWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "about:blank"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->f:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0}, Lcom/tapjoy/TJWebView;->destroy()V

    iput-object v1, p0, Lcom/tapjoy/TJWebViewActivity;->f:Lcom/tapjoy/TJWebView;

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->destroy()V

    iput-object v1, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->f:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->setEnabled(Z)V

    iget-object p0, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitJSBridge;->pause()V

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->f:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->setEnabled(Z)V

    iget-object p0, p0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitJSBridge;->resume()V

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
