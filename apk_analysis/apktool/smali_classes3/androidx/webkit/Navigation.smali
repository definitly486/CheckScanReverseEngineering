.class public final Landroidx/webkit/Navigation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

.field mPage:Landroidx/webkit/Page;


# direct methods
.method private constructor <init>(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Landroidx/webkit/Navigation;->lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Navigation;
    .locals 1

    const-class v0, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-static {v0, p0}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    new-instance v0, Lyi5;

    invoke-direct {v0, p0}, Lyi5;-><init>(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)V

    invoke-interface {p0, v0}, Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroidx/webkit/Navigation;

    return-object p0
.end method

.method private static synthetic lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/webkit/Navigation;

    invoke-direct {v0, p0}, Landroidx/webkit/Navigation;-><init>(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)V

    return-object v0
.end method


# virtual methods
.method public didCommit()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->didCommit()Z

    move-result p0

    return p0
.end method

.method public didCommitErrorPage()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->didCommitErrorPage()Z

    move-result p0

    return p0
.end method

.method public getPage()Landroidx/webkit/Page;
    .locals 1

    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getPage()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/webkit/Navigation;->mPage:Landroidx/webkit/Page;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getPage()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    invoke-static {v0}, Landroidx/webkit/Page;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/Navigation;->mPage:Landroidx/webkit/Page;

    :cond_1
    return-object v0
.end method

.method public getStatusCode()I
    .locals 0

    iget-object p0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getStatusCode()I

    move-result p0

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWebResourceError()Landroidx/webkit/WebResourceErrorCompat;
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->NAVIGATION_GET_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getWebResourceError()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/webkit/internal/WebResourceErrorImpl;

    iget-object p0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getWebResourceError()Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/webkit/internal/WebResourceErrorImpl;-><init>(Ljava/lang/reflect/InvocationHandler;)V

    return-object v0

    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public isBack()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isBack()Z

    move-result p0

    return p0
.end method

.method public isForward()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isForward()Z

    move-result p0

    return p0
.end method

.method public isHistory()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isHistory()Z

    move-result p0

    return p0
.end method

.method public isReload()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isReload()Z

    move-result p0

    return p0
.end method

.method public isRestore()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isRestore()Z

    move-result p0

    return p0
.end method

.method public isSameDocument()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isSameDocument()Z

    move-result p0

    return p0
.end method

.method public wasInitiatedByPage()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->wasInitiatedByPage()Z

    move-result p0

    return p0
.end method
