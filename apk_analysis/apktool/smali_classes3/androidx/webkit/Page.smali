.class public final Landroidx/webkit/Page;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mPageImpl:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;


# direct methods
.method private constructor <init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/Page;->mPageImpl:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Landroidx/webkit/Page;->lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;
    .locals 1

    const-class v0, Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    invoke-static {v0, p0}, Lkt0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    new-instance v0, Lp16;

    invoke-direct {v0, p0}, Lp16;-><init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V

    invoke-interface {p0, v0}, Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroidx/webkit/Page;

    return-object p0
.end method

.method private static synthetic lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/webkit/Page;

    invoke-direct {v0, p0}, Landroidx/webkit/Page;-><init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V

    return-object v0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/webkit/Page;->mPageImpl:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
