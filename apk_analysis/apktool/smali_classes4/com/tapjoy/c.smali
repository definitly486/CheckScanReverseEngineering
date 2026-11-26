.class public final Lcom/tapjoy/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/tapjoy/TJPlacementData;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/tapjoy/TJAdUnit;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnit;Landroid/content/Context;Lcom/tapjoy/TJPlacementData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/c;->d:Lcom/tapjoy/TJAdUnit;

    iput-object p2, p0, Lcom/tapjoy/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tapjoy/c;->b:Lcom/tapjoy/TJPlacementData;

    iput-boolean p4, p0, Lcom/tapjoy/c;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-string v1, "Error loading ad unit content"

    iget-object v0, p0, Lcom/tapjoy/c;->d:Lcom/tapjoy/TJAdUnit;

    iget-object v2, p0, Lcom/tapjoy/c;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_1

    iget-boolean v3, v0, Lcom/tapjoy/TJAdUnit;->i:Z

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    const-string v3, "Constructing ad unit"

    invoke-static {v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iput-boolean v5, v0, Lcom/tapjoy/TJAdUnit;->i:Z

    :try_start_0
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/tapjoy/TJAdUnit;->d:Landroid/view/View;

    new-instance v3, Lcom/tapjoy/TJWebView;

    invoke-direct {v3, v2}, Lcom/tapjoy/TJWebView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    iget-object v4, v0, Lcom/tapjoy/TJAdUnit;->m:Lcom/tapjoy/d;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v3, v0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    iget-object v4, v0, Lcom/tapjoy/TJAdUnit;->n:Lcom/tapjoy/e;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lcom/tapjoy/k;

    invoke-direct {v3, v0}, Lcom/tapjoy/k;-><init>(Lcom/tapjoy/TJAdUnit;)V

    new-instance v4, Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-direct {v4, v3}, Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Lcom/tapjoy/TJJSBridgeDelegate;)V

    iput-object v4, v0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitJSBridge;

    instance-of v3, v2, Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {v0, v3}, Lcom/tapjoy/TJAdUnit;->setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V

    :cond_0
    new-instance v3, Lcom/tapjoy/TapjoyCache;

    invoke-direct {v3, v2}, Lcom/tapjoy/TapjoyCache;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/tapjoy/TJAdUnit;->l:Lcom/tapjoy/TapjoyCache;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;)V

    move v0, v6

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnit;->i:Z

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "Loading ad unit content"

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/c;->d:Lcom/tapjoy/TJAdUnit;

    iput-boolean v5, v0, Lcom/tapjoy/TJAdUnit;->g:Z

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/c;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v2, p0, Lcom/tapjoy/c;->b:Lcom/tapjoy/TJPlacementData;

    if-nez v0, :cond_4

    :try_start_2
    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->isPreloadDisabled()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    iget-object v2, p0, Lcom/tapjoy/c;->d:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, v2, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    iget-object v2, p0, Lcom/tapjoy/c;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_2

    :cond_3
    iget-object v0, v2, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    iget-object v2, p0, Lcom/tapjoy/c;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getBaseURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/c;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getHttpResponse()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/c;->d:Lcom/tapjoy/TJAdUnit;

    iget-object v7, v0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJWebView;

    iget-object v0, p0, Lcom/tapjoy/c;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getBaseURL()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/tapjoy/c;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getHttpResponse()Ljava/lang/String;

    move-result-object v9

    const-string v10, "text/html"

    const-string v11, "utf-8"

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/c;->d:Lcom/tapjoy/TJAdUnit;

    iput-boolean v6, v0, Lcom/tapjoy/TJAdUnit;->g:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/c;->d:Lcom/tapjoy/TJAdUnit;

    iput-boolean v6, v0, Lcom/tapjoy/TJAdUnit;->g:Z

    :goto_2
    iget-object v0, p0, Lcom/tapjoy/c;->d:Lcom/tapjoy/TJAdUnit;

    iget-boolean v1, v0, Lcom/tapjoy/TJAdUnit;->g:Z

    if-eqz v1, :cond_6

    iget-boolean p0, p0, Lcom/tapjoy/c;->c:Z

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v5, v6

    :goto_3
    iput-boolean v5, v0, Lcom/tapjoy/TJAdUnit;->h:Z

    return-void
.end method
