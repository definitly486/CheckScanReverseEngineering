.class public Landroidx/webkit/internal/WebViewProviderAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    return-void
.end method

.method public static synthetic a(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/webkit/internal/WebViewProviderAdapter;->lambda$prerenderUrlAsync$3(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Void;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/webkit/internal/WebViewProviderAdapter;->lambda$prerenderUrlAsync$0(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic c(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Void;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/webkit/internal/WebViewProviderAdapter;->lambda$prerenderUrlAsync$2(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic d(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/webkit/internal/WebViewProviderAdapter;->lambda$prerenderUrlAsync$1(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$prerenderUrlAsync$0(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Void;)V
    .locals 0

    invoke-interface {p0}, Landroidx/webkit/PrerenderOperationCallback;->onPrerenderActivated()V

    return-void
.end method

.method private static synthetic lambda$prerenderUrlAsync$1(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Landroidx/webkit/PrerenderException;

    const-string v1, "Prerender operation failed"

    invoke-direct {v0, v1, p1}, Landroidx/webkit/PrerenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroidx/webkit/PrerenderOperationCallback;->onError(Landroidx/webkit/PrerenderException;)V

    return-void
.end method

.method private static synthetic lambda$prerenderUrlAsync$2(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Void;)V
    .locals 0

    invoke-interface {p0}, Landroidx/webkit/PrerenderOperationCallback;->onPrerenderActivated()V

    return-void
.end method

.method private static synthetic lambda$prerenderUrlAsync$3(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Landroidx/webkit/PrerenderException;

    const-string v1, "Prerender operation failed"

    invoke-direct {v0, v1, p1}, Landroidx/webkit/PrerenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroidx/webkit/PrerenderOperationCallback;->onError(Landroidx/webkit/PrerenderException;)V

    return-void
.end method


# virtual methods
.method public addDocumentStartJavaScript(Ljava/lang/String;[Ljava/lang/String;)Landroidx/webkit/internal/ScriptHandlerImpl;
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0, p1, p2}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addDocumentStartJavaScript(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    invoke-static {p0}, Landroidx/webkit/internal/ScriptHandlerImpl;->toScriptHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/ScriptHandlerImpl;

    move-result-object p0

    return-object p0
.end method

.method public addJavaScriptOnEvent(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)Landroidx/webkit/internal/ScriptHandlerImpl;
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0, p1, p3, p2, p4}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addJavaScriptOnEvent(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    invoke-static {p0}, Landroidx/webkit/internal/ScriptHandlerImpl;->toScriptHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/ScriptHandlerImpl;

    move-result-object p0

    return-object p0
.end method

.method public addNavigationListener(Ljava/util/concurrent/Executor;Landroidx/webkit/NavigationListener;)V
    .locals 1

    new-instance v0, Landroidx/webkit/internal/NavigationListenerAdapter;

    invoke-direct {v0, p2}, Landroidx/webkit/internal/NavigationListenerAdapter;-><init>(Landroidx/webkit/NavigationListener;)V

    new-instance p2, Lkt0$a;

    invoke-direct {p2, v0}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0, p1, p2}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addWebViewNavigationListener(Ljava/util/concurrent/Executor;Ljava/lang/reflect/InvocationHandler;)V

    return-void
.end method

.method public addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Landroidx/webkit/WebViewCompat$WebMessageListener;)V
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    new-instance v0, Landroidx/webkit/internal/WebMessageListenerAdapter;

    invoke-direct {v0, p3}, Landroidx/webkit/internal/WebMessageListenerAdapter;-><init>(Landroidx/webkit/WebViewCompat$WebMessageListener;)V

    new-instance p3, Lkt0$a;

    invoke-direct {p3, v0}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2, p3}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V

    return-void
.end method

.method public addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroidx/webkit/WebViewCompat$WebMessageListener;)V
    .locals 1

    .line 16
    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    new-instance v0, Landroidx/webkit/internal/WebMessageListenerAdapter;

    invoke-direct {v0, p4}, Landroidx/webkit/internal/WebMessageListenerAdapter;-><init>(Landroidx/webkit/WebViewCompat$WebMessageListener;)V

    .line 17
    new-instance p4, Lkt0$a;

    invoke-direct {p4, v0}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    .line 18
    invoke-interface {p0, p1, p2, p4, p3}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;Ljava/lang/String;)V

    return-void
.end method

.method public createWebMessageChannel()[Landroidx/webkit/WebMessagePortCompat;
    .locals 4

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->createWebMessageChannel()[Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [Landroidx/webkit/WebMessagePortCompat;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Landroidx/webkit/internal/WebMessagePortImpl;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroidx/webkit/internal/WebMessagePortImpl;-><init>(Ljava/lang/reflect/InvocationHandler;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getExecutionWorld(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getJavaScriptWorld(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getProfile()Landroidx/webkit/Profile;
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getProfile()Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    const-class v0, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-static {v0, p0}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    new-instance v0, Landroidx/webkit/internal/ProfileImpl;

    invoke-direct {v0, p0}, Landroidx/webkit/internal/ProfileImpl;-><init>(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;)V

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object p0

    return-object p0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object p0

    return-object p0
.end method

.method public getWebViewRenderProcess()Landroidx/webkit/WebViewRenderProcess;
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebViewRenderer()Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    invoke-static {p0}, Landroidx/webkit/internal/WebViewRenderProcessImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/WebViewRenderProcessImpl;

    move-result-object p0

    return-object p0
.end method

.method public getWebViewRenderProcessClient()Landroidx/webkit/WebViewRenderProcessClient;
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebViewRendererClient()Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lkt0$a;

    iget-object p0, p0, Lkt0$a;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;

    invoke-virtual {p0}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->getWebViewRenderProcessClient()Landroidx/webkit/WebViewRenderProcessClient;

    move-result-object p0

    return-object p0
.end method

.method public insertVisualStateCallback(JLandroidx/webkit/WebViewCompat$VisualStateCallback;)V
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    new-instance v0, Landroidx/webkit/internal/VisualStateCallbackAdapter;

    invoke-direct {v0, p3}, Landroidx/webkit/internal/VisualStateCallbackAdapter;-><init>(Landroidx/webkit/WebViewCompat$VisualStateCallback;)V

    new-instance p3, Lkt0$a;

    invoke-direct {p3, v0}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2, p3}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->insertVisualStateCallback(JLjava/lang/reflect/InvocationHandler;)V

    return-void
.end method

.method public isAudioMuted()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->isAudioMuted()Z

    move-result p0

    return p0
.end method

.method public postWebMessage(Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;)V
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    new-instance v0, Landroidx/webkit/internal/WebMessageAdapter;

    invoke-direct {v0, p1}, Landroidx/webkit/internal/WebMessageAdapter;-><init>(Landroidx/webkit/WebMessageCompat;)V

    new-instance p1, Lkt0$a;

    invoke-direct {p1, v0}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->postMessageToMainFrame(Ljava/lang/reflect/InvocationHandler;Landroid/net/Uri;)V

    return-void
.end method

.method public prerenderUrlAsync(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/webkit/PrerenderOperationCallback;)V
    .locals 6

    .line 29
    new-instance v4, Lvg9;

    invoke-direct {v4, p4}, Lvg9;-><init>(Landroidx/webkit/PrerenderOperationCallback;)V

    .line 30
    new-instance v5, Lwg9;

    invoke-direct {v5, p4}, Lwg9;-><init>(Landroidx/webkit/PrerenderOperationCallback;)V

    .line 31
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->prerenderUrl(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public prerenderUrlAsync(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/webkit/SpeculativeLoadingParameters;Landroidx/webkit/PrerenderOperationCallback;)V
    .locals 8

    new-instance v0, Landroidx/webkit/internal/SpeculativeLoadingParametersAdapter;

    invoke-direct {v0, p4}, Landroidx/webkit/internal/SpeculativeLoadingParametersAdapter;-><init>(Landroidx/webkit/SpeculativeLoadingParameters;)V

    new-instance v5, Lkt0$a;

    invoke-direct {v5, v0}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    new-instance v6, Ltg9;

    invoke-direct {v6, p5}, Ltg9;-><init>(Landroidx/webkit/PrerenderOperationCallback;)V

    new-instance v7, Lug9;

    invoke-direct {v7, p5}, Lug9;-><init>(Landroidx/webkit/PrerenderOperationCallback;)V

    iget-object v1, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v7}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->prerenderUrl(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/reflect/InvocationHandler;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public removeNavigationListener(Landroidx/webkit/NavigationListener;)V
    .locals 1

    new-instance v0, Landroidx/webkit/internal/NavigationListenerAdapter;

    invoke-direct {v0, p1}, Landroidx/webkit/internal/NavigationListenerAdapter;-><init>(Landroidx/webkit/NavigationListener;)V

    new-instance p1, Lkt0$a;

    invoke-direct {p1, v0}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->removeWebViewNavigationListener(Ljava/lang/reflect/InvocationHandler;)V

    return-void
.end method

.method public removeWebMessageListener(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->removeWebMessageListener(Ljava/lang/String;)V

    return-void
.end method

.method public removeWebMessageListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0, p1, p2}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->removeWebMessageListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveState(Landroid/os/Bundle;IZ)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0, p1, p2, p3}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->saveState(Landroid/os/Bundle;IZ)V

    return-void
.end method

.method public setAudioMuted(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->setAudioMuted(Z)V

    return-void
.end method

.method public setProfileWithName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->setProfile(Ljava/lang/String;)V

    return-void
.end method

.method public setWebViewRenderProcessClient(Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewRenderProcessClient;)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;

    invoke-direct {v0, p1, p2}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;-><init>(Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewRenderProcessClient;)V

    new-instance p1, Lkt0$a;

    invoke-direct {p1, v0}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->setWebViewRendererClient(Ljava/lang/reflect/InvocationHandler;)V

    return-void
.end method
