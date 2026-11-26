.class public Landroidx/webkit/internal/WebResourceErrorImpl;
.super Landroidx/webkit/WebResourceErrorCompat;
.source "SourceFile"


# instance fields
.field private mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

.field private mFrameworksImpl:Landroid/webkit/WebResourceError;


# direct methods
.method public constructor <init>(Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/webkit/WebResourceErrorCompat;-><init>()V

    .line 15
    iput-object p1, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mFrameworksImpl:Landroid/webkit/WebResourceError;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    invoke-direct {p0}, Landroidx/webkit/WebResourceErrorCompat;-><init>()V

    const-class v0, Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    invoke-static {v0, p1}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    iput-object p1, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    return-void
.end method

.method private getFrameworksImpl()Landroid/webkit/WebResourceError;
    .locals 2

    iget-object v0, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mFrameworksImpl:Landroid/webkit/WebResourceError;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getCompatConverter()Landroidx/webkit/internal/WebkitToCompatConverter;

    move-result-object v0

    iget-object v1, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    invoke-static {v1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/webkit/internal/WebkitToCompatConverter;->convertWebResourceError(Ljava/lang/reflect/InvocationHandler;)Landroid/webkit/WebResourceError;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mFrameworksImpl:Landroid/webkit/WebResourceError;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDebugCode()I
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->NAVIGATION_GET_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;->getDebugCode()I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0}, Landroidx/webkit/internal/WebResourceErrorImpl;->getFrameworksImpl()Landroid/webkit/WebResourceError;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getErrorCode()I
    .locals 0

    invoke-direct {p0}, Landroidx/webkit/internal/WebResourceErrorImpl;->getFrameworksImpl()Landroid/webkit/WebResourceError;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p0

    return p0
.end method
