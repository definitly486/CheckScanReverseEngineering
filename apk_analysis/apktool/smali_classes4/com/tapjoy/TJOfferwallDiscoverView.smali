.class public Lcom/tapjoy/TJOfferwallDiscoverView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Lcom/tapjoy/TJWebView;

.field public b:Lcom/tapjoy/TJAdUnitJSBridge;

.field public c:Lcom/tapjoy/TJOfferwallDiscoverListener;

.field public d:Lcom/tapjoy/internal/s2;

.field public final e:Ljava/util/concurrent/ExecutorService;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->e:Ljava/util/concurrent/ExecutorService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->f:Z

    iput-boolean p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->e:Ljava/util/concurrent/ExecutorService;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->f:Z

    .line 18
    iput-boolean p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->e:Ljava/util/concurrent/ExecutorService;

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->f:Z

    .line 22
    iput-boolean p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->e:Ljava/util/concurrent/ExecutorService;

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->f:Z

    .line 26
    iput-boolean p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->g:Z

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0}, Lcom/tapjoy/TJWebView;->destroy()V

    iget-object v0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    iput-object v0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->f:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->g:Z

    return-void
.end method

.method public final synthetic a(Ljava/lang/String;)V
    .locals 2

    .line 33
    new-instance v0, Lcom/tapjoy/internal/p1;

    invoke-direct {v0}, Lcom/tapjoy/internal/p1;-><init>()V

    new-instance v1, Lcom/tapjoy/b0;

    invoke-direct {v1, p0}, Lcom/tapjoy/b0;-><init>(Lcom/tapjoy/TJOfferwallDiscoverView;)V

    invoke-virtual {v0, p1, v1}, Lcom/tapjoy/internal/p1;->a(Ljava/lang/String;Lcom/tapjoy/b0;)V

    return-void
.end method

.method public clearContent()V
    .locals 2

    new-instance v0, Lsr4;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lsr4;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    if-nez p2, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitJSBridge;->resume()V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitJSBridge;->pause()V

    :cond_1
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->f:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->g:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnitJSBridge;->display()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->f:Z

    :cond_0
    return-void
.end method

.method public requestContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/tapjoy/TJError;

    const-string p2, "Tapjoy SDK is not connected"

    invoke-direct {p1, v1, p2}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/tapjoy/TJOfferwallDiscoverListener;->requestFailure(Lcom/tapjoy/TJError;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/TJOfferwallDiscoverView;->clearContent()V

    new-instance v0, Lcom/tapjoy/TJWebView;

    invoke-direct {v0, p1}, Lcom/tapjoy/TJWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    new-instance p1, Lcom/tapjoy/d0;

    invoke-direct {p1, p0}, Lcom/tapjoy/d0;-><init>(Lcom/tapjoy/TJOfferwallDiscoverView;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Lcom/tapjoy/TJAdUnitJSBridge;

    new-instance v0, Lcom/tapjoy/c0;

    invoke-direct {v0, p0}, Lcom/tapjoy/c0;-><init>(Lcom/tapjoy/TJOfferwallDiscoverView;)V

    invoke-direct {p1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Lcom/tapjoy/TJJSBridgeDelegate;)V

    iput-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p0, p1, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lwt;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p2}, Lwt;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    if-eqz p1, :cond_4

    new-instance p2, Lcom/tapjoy/TJError;

    const-string v1, "Placement is null"

    invoke-direct {p2, v0, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/tapjoy/TJOfferwallDiscoverListener;->requestFailure(Lcom/tapjoy/TJError;)V

    :cond_4
    invoke-virtual {p0}, Lcom/tapjoy/TJOfferwallDiscoverView;->clearContent()V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/tapjoy/TJError;

    const-string v1, "Context is null"

    invoke-direct {p2, v0, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/tapjoy/TJOfferwallDiscoverListener;->requestFailure(Lcom/tapjoy/TJError;)V

    :cond_6
    invoke-virtual {p0}, Lcom/tapjoy/TJOfferwallDiscoverView;->clearContent()V

    return-void
.end method

.method public setListener(Lcom/tapjoy/TJOfferwallDiscoverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    return-void
.end method
