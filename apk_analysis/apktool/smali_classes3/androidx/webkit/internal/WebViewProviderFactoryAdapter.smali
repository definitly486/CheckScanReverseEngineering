.class public Landroidx/webkit/internal/WebViewProviderFactoryAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/webkit/internal/WebViewProviderFactory;


# instance fields
.field final mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    return-void
.end method

.method public static synthetic a(Landroidx/webkit/WebViewOutcomeReceiver;Landroidx/webkit/WebViewStartupException;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->lambda$startUpWebView$4(Landroidx/webkit/WebViewOutcomeReceiver;Landroidx/webkit/WebViewStartupException;)V

    return-void
.end method

.method public static synthetic b(Landroidx/webkit/WebViewOutcomeReceiver;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->lambda$startUpWebView$3(Landroidx/webkit/WebViewOutcomeReceiver;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic c(Landroidx/webkit/WebViewOutcomeReceiver;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->lambda$startUpWebView$5(Landroidx/webkit/WebViewOutcomeReceiver;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic d(Landroidx/webkit/WebViewOutcomeReceiver;Landroidx/webkit/internal/WebViewStartupResultImpl;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->lambda$startUpWebView$2(Landroidx/webkit/WebViewOutcomeReceiver;Landroidx/webkit/internal/WebViewStartupResultImpl;)V

    return-void
.end method

.method public static synthetic e(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroidx/webkit/WebViewStartUpResult;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->lambda$startUpWebView$1(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroidx/webkit/WebViewStartUpResult;)V

    return-void
.end method

.method public static synthetic f(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroidx/webkit/WebViewStartUpResult;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->lambda$startUpWebView$0(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroidx/webkit/WebViewStartUpResult;)V

    return-void
.end method

.method private static synthetic lambda$startUpWebView$0(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroidx/webkit/WebViewStartUpResult;)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;->onSuccess(Landroidx/webkit/WebViewStartUpResult;)V

    return-void
.end method

.method private static synthetic lambda$startUpWebView$1(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroidx/webkit/WebViewStartUpResult;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lyg9;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lyg9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$startUpWebView$2(Landroidx/webkit/WebViewOutcomeReceiver;Landroidx/webkit/internal/WebViewStartupResultImpl;)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/webkit/WebViewOutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$startUpWebView$3(Landroidx/webkit/WebViewOutcomeReceiver;Ljava/util/function/Consumer;)V
    .locals 3

    new-instance v0, Landroidx/webkit/internal/WebViewStartupResultImpl;

    invoke-direct {v0, p1}, Landroidx/webkit/internal/WebViewStartupResultImpl;-><init>(Ljava/util/function/Consumer;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lfd7;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, v0}, Lfd7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$startUpWebView$4(Landroidx/webkit/WebViewOutcomeReceiver;Landroidx/webkit/WebViewStartupException;)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/webkit/WebViewOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$startUpWebView$5(Landroidx/webkit/WebViewOutcomeReceiver;Ljava/util/function/Consumer;)V
    .locals 2

    invoke-static {p1}, Landroidx/webkit/internal/WebViewStartupExceptionBuilder;->buildException(Ljava/util/function/Consumer;)Landroidx/webkit/WebViewStartupException;

    move-result-object p1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lxg9;

    invoke-direct {v1, p0, p1}, Lxg9;-><init>(Landroidx/webkit/WebViewOutcomeReceiver;Landroidx/webkit/WebViewStartupException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->createWebView(Landroid/webkit/WebView;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    const-class p1, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-static {p1, p0}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    return-object p0
.end method

.method public getDropDataProvider()Lorg/chromium/support_lib_boundary/DropDataContentProviderBoundaryInterface;
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getDropDataProvider()Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    const-class v0, Lorg/chromium/support_lib_boundary/DropDataContentProviderBoundaryInterface;

    invoke-static {v0, p0}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/DropDataContentProviderBoundaryInterface;

    return-object p0
.end method

.method public getProfileStore()Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getProfileStore()Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    const-class v0, Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    invoke-static {v0, p0}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    return-object p0
.end method

.method public getProxyController()Lorg/chromium/support_lib_boundary/ProxyControllerBoundaryInterface;
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getProxyController()Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    const-class v0, Lorg/chromium/support_lib_boundary/ProxyControllerBoundaryInterface;

    invoke-static {v0, p0}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/ProxyControllerBoundaryInterface;

    return-object p0
.end method

.method public getServiceWorkerController()Lorg/chromium/support_lib_boundary/ServiceWorkerControllerBoundaryInterface;
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getServiceWorkerController()Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    const-class v0, Lorg/chromium/support_lib_boundary/ServiceWorkerControllerBoundaryInterface;

    invoke-static {v0, p0}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/ServiceWorkerControllerBoundaryInterface;

    return-object p0
.end method

.method public getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getStatics()Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    const-class v0, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    invoke-static {v0, p0}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    return-object p0
.end method

.method public getTracingController()Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getTracingController()Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    const-class v0, Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;

    invoke-static {v0, p0}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;

    return-object p0
.end method

.method public getWebViewBuilder()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getWebViewBuilder()Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    const-class v0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    invoke-static {v0, p0}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    return-object p0
.end method

.method public getWebViewFeatures()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getSupportedFeatures()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWebkitToCompatConverter()Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getWebkitToCompatConverter()Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    const-class v0, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    invoke-static {v0, p0}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    return-object p0
.end method

.method public startUpWebView(Landroidx/webkit/WebViewStartUpConfig;Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    new-instance v0, Landroidx/webkit/internal/WebViewStartUpConfigAdapter;

    invoke-direct {v0, p1}, Landroidx/webkit/internal/WebViewStartUpConfigAdapter;-><init>(Landroidx/webkit/WebViewStartUpConfig;)V

    new-instance p1, Lkt0$a;

    invoke-direct {p1, v0}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    new-instance v0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;

    new-instance v1, Lwq;

    const/4 v2, 0x5

    invoke-direct {v1, p2, v2}, Lwq;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;-><init>(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;)V

    new-instance p2, Lkt0$a;

    invoke-direct {p2, v0}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->startUpWebView(Ljava/lang/reflect/InvocationHandler;Ljava/lang/reflect/InvocationHandler;)V

    return-void
.end method

.method public startUpWebView(Landroidx/webkit/WebViewStartUpConfig;Landroidx/webkit/WebViewOutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/webkit/WebViewStartUpConfig;",
            "Landroidx/webkit/WebViewOutcomeReceiver<",
            "Landroidx/webkit/WebViewStartUpResult;",
            "Landroidx/webkit/WebViewStartupException;",
            ">;)V"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lzg9;

    invoke-direct {v0, p1}, Lzg9;-><init>(Landroidx/webkit/WebViewStartUpConfig;)V

    new-instance p1, Lah9;

    invoke-direct {p1, p2}, Lah9;-><init>(Landroidx/webkit/WebViewOutcomeReceiver;)V

    new-instance v1, Lbh9;

    invoke-direct {v1, p2}, Lbh9;-><init>(Landroidx/webkit/WebViewOutcomeReceiver;)V

    invoke-interface {p0, v0, p1, v1}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->startUpWebView(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method
