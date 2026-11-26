.class public final Lcom/tapjoy/d;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    const-string p1, "onPageFinished: "

    invoke-static {p1, p2}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-boolean p2, p1, Lcom/tapjoy/TJAdUnit;->j:Z

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tapjoy/TJActivity;->setProgressSpinnerVisibility(Z)V

    :cond_1
    iget-object p1, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/tapjoy/TJAdUnit;->j:Z

    iget-boolean p2, p1, Lcom/tapjoy/TJAdUnit;->f:Z

    if-eqz p2, :cond_3

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnitJSBridge;->display()V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitJSBridge;->flushMessageQueue()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    const-string p1, "onPageStarted: "

    invoke-static {p1, p2}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z

    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "error:"

    invoke-static {v0, p3}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJActivity;->showErrorDialog()V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getSdkBeacon()Lcom/tapjoy/internal/l0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getSdkBeacon()Lcom/tapjoy/internal/l0;

    move-result-object v0

    iget-object v1, v0, Lcom/tapjoy/internal/l0;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v0, Lcom/tapjoy/internal/l0;->b:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "error"

    const-string v3, "loadFailure"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/tapjoy/internal/k0;

    invoke-direct {v2, v0, v1}, Lcom/tapjoy/internal/k0;-><init>(Lcom/tapjoy/internal/l0;Ljava/util/HashMap;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    const-string p1, "WebView rendering process exited while instantiating a WebViewClient unexpectedly"

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnit;->getSdkBeacon()Lcom/tapjoy/internal/l0;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnit;->getSdkBeacon()Lcom/tapjoy/internal/l0;

    move-result-object p1

    iget-object p2, p1, Lcom/tapjoy/internal/l0;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p1, Lcom/tapjoy/internal/l0;->b:Ljava/util/HashMap;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v0, "error"

    const-string v1, "terminated"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tapjoy/internal/k0;

    invoke-direct {v0, p1, p2}, Lcom/tapjoy/internal/k0;-><init>(Lcom/tapjoy/internal/l0;Ljava/util/HashMap;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object p1, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p2, p1, Lcom/tapjoy/TJAdUnit;->d:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p2, p2, Lcom/tapjoy/TJAdUnit;->d:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iput-object v0, p1, Lcom/tapjoy/TJAdUnit;->d:Landroid/view/View;

    :cond_2
    iget-object p2, p1, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p2, p2, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object p1, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1}, Lcom/tapjoy/TJWebView;->destroy()V

    iget-object p1, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iput-object v0, p1, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    :cond_4
    iget-object p2, p1, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/tapjoy/TJAdUnitJSBridge;->cleanUpJSBridge()V

    iget-object p1, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iput-object v0, p1, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    :cond_5
    iget-object p0, p1, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5

    iget-object v0, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->l:Lcom/tapjoy/TapjoyCache;

    invoke-virtual {v0, p2}, Lcom/tapjoy/TapjoyCache;->getCachedDataForURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyCacheData;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCacheData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCacheData;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    const-string p0, "Reading request for "

    const-string p1, " from cache -- localPath: "

    invoke-static {p0, p2, p1}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCacheData;->getLocalFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    :try_start_0
    iget-object v0, p2, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p2, p2, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz p2, :cond_4

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p2, "https://"

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/net/URL;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tapjoy/TapjoyConnectCore;->getRedirectDomain()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tapjoy/TapjoyUtil;->getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    return v0

    :catch_0
    :cond_2
    iget-object p2, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p2, p2, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean p2, p2, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    if-eqz p2, :cond_3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_6

    :try_start_2
    iget-object p0, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception in loading URL. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p2, "javascript:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_3
    const-string v1, ""

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception in evaluateJavascript. Device not supported. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception getting NetworkInfo: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/tapjoy/TJActivity;->showErrorDialog()V

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :cond_6
    :goto_2
    return v0
.end method
