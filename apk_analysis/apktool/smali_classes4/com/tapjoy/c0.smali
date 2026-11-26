.class public final Lcom/tapjoy/c0;
.super Lcom/tapjoy/TJJSBridgeDelegate;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJOfferwallDiscoverView;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJOfferwallDiscoverView;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-direct {p0}, Lcom/tapjoy/TJJSBridgeDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object p0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    invoke-interface {p0}, Lcom/tapjoy/TJOfferwallDiscoverListener;->contentReady()V

    return-void
.end method

.method public final a(F)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object v0, v0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object p0, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object p0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    .line 76
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/tapjoy/TJError;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object p0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    invoke-interface {p0, p1}, Lcom/tapjoy/TJOfferwallDiscoverListener;->contentError(Lcom/tapjoy/TJError;)V

    return-void
.end method

.method public final a(Lcom/tapjoy/TJTaskHandler;)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object v1, v1, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object p0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/tapjoy/TJTaskHandler;->onComplete(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lcom/tapjoy/TJTaskHandler;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting text zoom: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/tapjoy/TJTaskHandler;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method public final fireContentError(Lcom/tapjoy/TJError;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/tapjoy/TJJSBridgeDelegate;->fireContentError(Lcom/tapjoy/TJError;)Z

    iget-object v0, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object v0, v0, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    if-eqz v0, :cond_0

    new-instance v0, Lz42;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, Lz42;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final fireContentReady()Z
    .locals 2

    invoke-super {p0}, Lcom/tapjoy/TJJSBridgeDelegate;->fireContentReady()Z

    iget-object v0, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object v0, v0, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    if-eqz v0, :cond_0

    new-instance v0, Le7;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Le7;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object p0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object p0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->d:Lcom/tapjoy/internal/s2;

    iget-object p0, p0, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tapjoy/TJJSBridgeDelegate;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getOrientation()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v0, :cond_0

    const-string v0, "landscape"

    goto :goto_0

    :cond_0
    const-string v0, "portrait"

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "orientation"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "width"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "height"

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final getTextZoom(Lcom/tapjoy/TJTaskHandler;)V
    .locals 2

    new-instance v0, La52;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, La52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/c0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object p0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    return-object p0
.end method

.method public final setTextZoom(F)V
    .locals 1

    new-instance v0, Lnp9;

    invoke-direct {v0, p0, p1}, Lnp9;-><init>(Lcom/tapjoy/c0;F)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
