.class public final Landroidx/webkit/PrefetchCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/PrefetchCache;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    return-void
.end method


# virtual methods
.method public setMaxPrefetches(Ljava/lang/Integer;)V
    .locals 2

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PREFETCH_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

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
    const-string p0, "maxPrefetches should be greater than or equal to 1"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/webkit/PrefetchCache;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->setMaxPrefetches(Ljava/lang/Integer;)V

    return-void

    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public setPrefetchTtlSeconds(Ljava/lang/Integer;)V
    .locals 2

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PREFETCH_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

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
    const-string p0, "prefetchTtlSeconds should be greater than or equal to 1"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/webkit/PrefetchCache;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->setPrefetchTtlSeconds(Ljava/lang/Integer;)V

    return-void

    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method
