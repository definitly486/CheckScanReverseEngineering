.class public Landroidx/webkit/internal/ProfileImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/webkit/Profile;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    return-void
.end method

.method private getCustomHeadersInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/webkit/CustomHeader;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0, p1, p2}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->getOriginMatchedHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/InvocationHandler;

    const-class p2, Lorg/chromium/support_lib_boundary/OriginMatchedHeaderBoundaryInterface;

    invoke-static {p2, p1}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/OriginMatchedHeaderBoundaryInterface;

    new-instance p2, Landroidx/webkit/CustomHeader;

    invoke-interface {p1}, Lorg/chromium/support_lib_boundary/OriginMatchedHeaderBoundaryInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/chromium/support_lib_boundary/OriginMatchedHeaderBoundaryInterface;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/chromium/support_lib_boundary/OriginMatchedHeaderBoundaryInterface;->getRules()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p2, v1, v2, p1}, Landroidx/webkit/CustomHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addCustomHeader(Landroidx/webkit/CustomHeader;)V
    .locals 2

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CUSTOM_REQUEST_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-virtual {p1}, Landroidx/webkit/CustomHeader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/webkit/CustomHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/webkit/CustomHeader;->getRules()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->addOriginMatchedHeader(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public addQuicHints(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ADD_QUIC_HINTS_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->addQuicHints(Ljava/util/Set;)V

    return-void

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public clearAllCustomHeaders()V
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CUSTOM_REQUEST_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->clearAllOriginMatchedHeaders()V

    return-void

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public clearAllOriginMatchedHeaders()V
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ORIGIN_MATCHED_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->clearAllOriginMatchedHeaders()V

    return-void

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public clearCustomHeader(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CUSTOM_REQUEST_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->clearOriginMatchedHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public clearCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CUSTOM_REQUEST_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 21
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0, p1, p2}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->clearOriginMatchedHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public clearOriginMatchedHeader(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ORIGIN_MATCHED_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->clearOriginMatchedHeader(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public getCookieManager()Landroid/webkit/CookieManager;
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public getCustomHeaders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/webkit/CustomHeader;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CUSTOM_REQUEST_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/webkit/internal/ProfileImpl;->getCustomHeadersInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public getCustomHeaders(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/webkit/CustomHeader;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CUSTOM_REQUEST_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 20
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Landroidx/webkit/internal/ProfileImpl;->getCustomHeadersInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 22
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public getCustomHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/webkit/CustomHeader;",
            ">;"
        }
    .end annotation

    .line 23
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CUSTOM_REQUEST_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 24
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/ProfileImpl;->getCustomHeadersInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 26
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public getGeolocationPermissions()Landroid/webkit/GeolocationPermissions;
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->getGeoLocationPermissions()Landroid/webkit/GeolocationPermissions;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public getPrefetchCache()Landroidx/webkit/PrefetchCache;
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PREFETCH_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/webkit/PrefetchCache;

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-direct {v0, p0}, Landroidx/webkit/PrefetchCache;-><init>(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;)V

    return-object v0

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public getServiceWorkerController()Landroid/webkit/ServiceWorkerController;
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->getServiceWorkerController()Landroid/webkit/ServiceWorkerController;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public getWebStorage()Landroid/webkit/WebStorage;
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->getWebStorage()Landroid/webkit/WebStorage;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public hasCustomHeader(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CUSTOM_REQUEST_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->hasOriginMatchedHeader(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public hasOriginMatchedHeader(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ORIGIN_MATCHED_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->hasOriginMatchedHeader(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public preconnect(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PRECONNECT:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->preconnect(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public prefetchUrlAsync(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/webkit/SpeculativeLoadingParameters;Landroidx/webkit/WebViewOutcomeReceiver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/webkit/SpeculativeLoadingParameters;",
            "Landroidx/webkit/WebViewOutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroidx/webkit/PrefetchException;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROFILE_URL_PREFETCH:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lh72;

    invoke-direct {v0, p3}, Lh72;-><init>(Landroid/os/Handler;)V

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    new-instance p3, Landroidx/webkit/internal/SpeculativeLoadingParametersAdapter;

    invoke-direct {p3, p4}, Landroidx/webkit/internal/SpeculativeLoadingParametersAdapter;-><init>(Landroidx/webkit/SpeculativeLoadingParameters;)V

    new-instance v5, Lkt0$a;

    invoke-direct {v5, p3}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-static {p5}, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter;->buildInvocationHandler(Landroidx/webkit/WebViewOutcomeReceiver;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->prefetchUrl(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/reflect/InvocationHandler;Ljava/lang/reflect/InvocationHandler;)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public prefetchUrlAsync(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewOutcomeReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/webkit/WebViewOutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroidx/webkit/PrefetchException;",
            ">;)V"
        }
    .end annotation

    .line 54
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROFILE_URL_PREFETCH:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 55
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    .line 56
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lh72;

    invoke-direct {v0, p3}, Lh72;-><init>(Landroid/os/Handler;)V

    move-object p3, v0

    .line 57
    :cond_0
    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    .line 58
    invoke-static {p4}, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter;->buildInvocationHandler(Landroidx/webkit/WebViewOutcomeReceiver;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p4

    .line 59
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->prefetchUrl(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/reflect/InvocationHandler;)V

    return-void

    .line 60
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public setMaxPrerenders(Ljava/lang/Integer;)V
    .locals 2

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SET_MAX_PRERENDERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "maxPrerenders should be greater than or equal to 1"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->setMaxPrerenders(Ljava/lang/Integer;)V

    return-void

    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public setOriginMatchedHeader(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ORIGIN_MATCHED_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0, p1, p2, p3}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->setOriginMatchedHeader(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public setSpeculativeLoadingConfig(Landroidx/webkit/SpeculativeLoadingConfig;)V
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SPECULATIVE_LOADING_CONFIG:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/webkit/internal/SpeculativeLoadingConfigAdapter;

    invoke-direct {v0, p1}, Landroidx/webkit/internal/SpeculativeLoadingConfigAdapter;-><init>(Landroidx/webkit/SpeculativeLoadingConfig;)V

    new-instance p1, Lkt0$a;

    invoke-direct {p1, v0}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->setSpeculativeLoadingConfig(Ljava/lang/reflect/InvocationHandler;)V

    return-void

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public warmUpRendererProcess()V
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WARM_UP_RENDERER_PROCESS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/ProfileImpl;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->warmUpRendererProcess()V

    return-void

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method
