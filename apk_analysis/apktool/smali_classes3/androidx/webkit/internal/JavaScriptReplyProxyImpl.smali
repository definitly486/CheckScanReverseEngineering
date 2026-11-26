.class public Landroidx/webkit/internal/JavaScriptReplyProxyImpl;
.super Landroidx/webkit/JavaScriptReplyProxy;
.source "SourceFile"


# instance fields
.field private final mBoundaryInterface:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)V
    .locals 0

    invoke-direct {p0}, Landroidx/webkit/JavaScriptReplyProxy;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/JavaScriptReplyProxyImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Landroidx/webkit/internal/JavaScriptReplyProxyImpl;->lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Landroidx/webkit/internal/JavaScriptReplyProxyImpl;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/webkit/internal/JavaScriptReplyProxyImpl;->toErrorType(I)I

    move-result p0

    return p0
.end method

.method public static forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/JavaScriptReplyProxyImpl;
    .locals 1

    const-class v0, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    invoke-static {v0, p0}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    new-instance v0, Lfb4;

    invoke-direct {v0, p0}, Lfb4;-><init>(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)V

    invoke-interface {p0, v0}, Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/webkit/internal/JavaScriptReplyProxyImpl;

    return-object p0
.end method

.method private static synthetic lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/webkit/internal/JavaScriptReplyProxyImpl;

    invoke-direct {v0, p0}, Landroidx/webkit/internal/JavaScriptReplyProxyImpl;-><init>(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)V

    return-object v0
.end method

.method private toErrorType(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method


# virtual methods
.method public executeJavaScript(Ljava/lang/String;Landroidx/webkit/WebViewOutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/webkit/WebViewOutcomeReceiver<",
            "Ljava/lang/String;",
            "Landroidx/webkit/JavaScriptExecutionException;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->JS_INJECTION_IN_FRAME_AND_WORLD:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/webkit/internal/JavaScriptReplyProxyImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/webkit/internal/JavaScriptReplyProxyImpl$1;

    invoke-direct {v1, p0, p2}, Landroidx/webkit/internal/JavaScriptReplyProxyImpl$1;-><init>(Landroidx/webkit/internal/JavaScriptReplyProxyImpl;Landroidx/webkit/WebViewOutcomeReceiver;)V

    new-instance p0, Lkt0$a;

    invoke-direct {p0, v1}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    :goto_0
    invoke-interface {v0, p1, p0}, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;->executeJavaScript(Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 1

    .line 34
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 35
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object p0, p0, Landroidx/webkit/internal/JavaScriptReplyProxyImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;->postMessage(Ljava/lang/String;)V

    return-void

    .line 37
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public postMessage([B)V
    .locals 1

    const-string v0, "ArrayBuffer must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_ARRAY_BUFFER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/webkit/internal/JavaScriptReplyProxyImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    new-instance v0, Landroidx/webkit/internal/WebMessagePayloadAdapter;

    invoke-direct {v0, p1}, Landroidx/webkit/internal/WebMessagePayloadAdapter;-><init>([B)V

    new-instance p1, Lkt0$a;

    invoke-direct {p1, v0}, Lkt0$a;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;->postMessageWithPayload(Ljava/lang/reflect/InvocationHandler;)V

    return-void

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method
