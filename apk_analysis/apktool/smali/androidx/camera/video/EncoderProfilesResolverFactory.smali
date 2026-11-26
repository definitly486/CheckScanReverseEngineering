.class public final Landroidx/camera/video/EncoderProfilesResolverFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/video/EncoderProfilesResolverFactory;

.field private static final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;",
            "Landroidx/camera/video/EncoderProfilesResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/EncoderProfilesResolverFactory;

    invoke-direct {v0}, Landroidx/camera/video/EncoderProfilesResolverFactory;-><init>()V

    sput-object v0, Landroidx/camera/video/EncoderProfilesResolverFactory;->INSTANCE:Landroidx/camera/video/EncoderProfilesResolverFactory;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroidx/camera/video/EncoderProfilesResolverFactory;->cache:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/video/EncoderProfilesResolverFactory;->getResolver$lambda$0(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object p0

    return-object p0
.end method

.method private final createResolver(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/camera/core/impl/CameraInfoInternal;

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    sget-object p2, Landroidx/camera/video/EncoderProfilesProviderResolver;->INSTANCE:Landroidx/camera/video/EncoderProfilesProviderResolver;

    invoke-virtual {p2, p1, p3, p0, p4}, Landroidx/camera/video/EncoderProfilesProviderResolver;->resolve(Landroidx/camera/core/impl/CameraInfoInternal;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/core/impl/EncoderProfilesProvider;

    move-result-object p2

    new-instance p3, Landroidx/camera/video/EncoderProfilesResolver;

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedDynamicRanges()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p3, p2, p0, p1}, Landroidx/camera/video/EncoderProfilesResolver;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;ILjava/util/Set;)V

    return-object p3
.end method

.method public static final getResolver(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lgy2;

    invoke-direct {v0, p0, p1, p2, p3}, Lgy2;-><init>(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sget-object v0, Landroidx/camera/video/EncoderProfilesResolverFactory;->INSTANCE:Landroidx/camera/video/EncoderProfilesResolverFactory;

    invoke-direct {v0, p0}, Landroidx/camera/video/EncoderProfilesResolverFactory;->shouldSkipCache(Landroidx/camera/core/CameraInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroidx/camera/video/EncoderProfilesResolverFactory;->getResolver$lambda$1(Lcl4;)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Landroidx/camera/core/impl/AdapterCameraInfo;

    new-instance v2, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;

    invoke-virtual {p0}, Landroidx/camera/core/impl/ForwardingCameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/core/impl/AdapterCameraInfo;->getCameraConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;-><init>(Ljava/lang/String;Ljava/lang/Object;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V

    sget-object p0, Landroidx/camera/video/EncoderProfilesResolverFactory;->cache:Landroid/util/LruCache;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/video/EncoderProfilesResolver;

    if-nez p1, :cond_1

    invoke-static {v1}, Landroidx/camera/video/EncoderProfilesResolverFactory;->getResolver$lambda$1(Lcl4;)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public static synthetic getResolver$default(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;ILjava/lang/Object;)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    sget-object p3, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->FINDER:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/video/EncoderProfilesResolverFactory;->getResolver(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object p0

    return-object p0
.end method

.method private static final getResolver$lambda$0(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 1

    sget-object v0, Landroidx/camera/video/EncoderProfilesResolverFactory;->INSTANCE:Landroidx/camera/video/EncoderProfilesResolverFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/video/EncoderProfilesResolverFactory;->createResolver(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object p0

    return-object p0
.end method

.method private static final getResolver$lambda$1(Lcl4;)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcl4<",
            "Landroidx/camera/video/EncoderProfilesResolver;",
            ">;)",
            "Landroidx/camera/video/EncoderProfilesResolver;"
        }
    .end annotation

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/video/EncoderProfilesResolver;

    return-object p0
.end method

.method private final shouldSkipCache(Landroidx/camera/core/CameraInfo;)Z
    .locals 1

    instance-of p0, p1, Landroidx/camera/core/impl/AdapterCameraInfo;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    check-cast p1, Landroidx/camera/core/impl/AdapterCameraInfo;

    invoke-virtual {p1}, Landroidx/camera/core/impl/ForwardingCameraInfo;->isExternalCamera()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroidx/camera/core/impl/ForwardingCameraInfo;->getLensFacing()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method
