.class public final Lcom/tapjoy/i0;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJSplitWebView;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJSplitWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p1, p1, Lcom/tapjoy/TJSplitWebView;->l:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p1, p1, Lcom/tapjoy/TJSplitWebView;->p:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p1, p1, Lcom/tapjoy/TJSplitWebView;->p:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-virtual {p0}, Lcom/tapjoy/TJSplitWebView;->isFirstOrLastPage()V

    :cond_1
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p1, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p1, p1, Lcom/tapjoy/TJSplitWebView;->l:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p1, p1, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p1, p1, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/tapjoy/TapjoyUrlFormatter;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p0, p0, Lcom/tapjoy/TJSplitWebView;->p:Landroid/widget/ProgressBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const-string p0, "onPageStarted: "

    invoke-static {p0, p2}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "onReceivedError: "

    const-string p2, " firstUrl:"

    invoke-static {p1, p4, p2}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p2, p2, Lcom/tapjoy/TJSplitWebView;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-boolean p2, p1, Lcom/tapjoy/TJSplitWebView;->u:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/TJSplitWebView;->showErrorDialog()V

    return-void

    :cond_0
    iget-object p1, p1, Lcom/tapjoy/TJSplitWebView;->d:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p0, p0, Lcom/tapjoy/TJSplitWebView;->j:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/tapjoy/TJAdUnitJSBridge;->dismissSplitView(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    iget-object p1, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p2, p1, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p2, p2, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object p1, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p1, p1, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1}, Lcom/tapjoy/TJWebView;->destroy()V

    iget-object p1, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iput-object v0, p1, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    :cond_1
    iget-object p1, p1, Lcom/tapjoy/TJSplitWebView;->j:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnitJSBridge;->cleanUpJSBridge()V

    iget-object p0, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iput-object v0, p0, Lcom/tapjoy/TJSplitWebView;->j:Lcom/tapjoy/TJAdUnitJSBridge;

    :cond_2
    const-string p0, "WebView rendering process exited while instantiating a WebViewClient unexpectedly"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->f:Ljava/lang/String;

    iget-object v0, v0, Lcom/tapjoy/TJSplitWebView;->g:Landroid/net/Uri;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object v0, v0, Lcom/tapjoy/TJSplitWebView;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object v0, v0, Lcom/tapjoy/TJSplitWebView;->j:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->dismissSplitView(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "shouldOverrideUrlLoading: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object v1, v1, Lcom/tapjoy/TJSplitWebView;->h:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJSplitWebView;->e:Ljava/lang/String;

    const/4 p0, 0x0

    return p0

    :cond_2
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p1, p1, Lcom/tapjoy/TJSplitWebView;->k:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p1, p1, Lcom/tapjoy/TJSplitWebView;->l:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/tapjoy/i0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p0, p0, Lcom/tapjoy/TJSplitWebView;->j:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/tapjoy/TJAdUnitJSBridge;->dismissSplitView(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
