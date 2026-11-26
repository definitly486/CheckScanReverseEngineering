.class public final Landroidx/camera/video/internal/utils/CodecUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/video/internal/utils/CodecUtil;

.field private static final MAX_CODEC_INFO_CACHE_COUNT:I = 0xa

.field private static allAudioEncoderMimeTypesCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static allEncoderInfosCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static allEncoderMimeTypesCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static allVideoEncoderMimeTypesCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final codecInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/internal/utils/CodecUtil;

    invoke-direct {v0}, Landroidx/camera/video/internal/utils/CodecUtil;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->INSTANCE:Landroidx/camera/video/internal/utils/CodecUtil;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->codecInfoCache:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createCodec(Landroidx/camera/video/internal/encoder/EncoderConfig;)Landroid/media/MediaCodec;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    sget-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->INSTANCE:Landroidx/camera/video/internal/utils/CodecUtil;

    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/EncoderConfig;->getMimeType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Landroidx/camera/video/internal/utils/CodecUtil;->createCodec(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    return-object p0
.end method

.method private final createCodec(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 0

    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/camera/video/internal/encoder/InvalidConfigException;

    invoke-direct {p1, p0}, Landroidx/camera/video/internal/encoder/InvalidConfigException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Landroidx/camera/video/internal/encoder/InvalidConfigException;

    invoke-direct {p1, p0}, Landroidx/camera/video/internal/encoder/InvalidConfigException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final findCodecAndGetCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->codecInfoCache:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    if-eqz v1, :cond_0

    check-cast v1, Landroid/media/MediaCodecInfo;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Landroidx/camera/video/internal/utils/CodecUtil;->INSTANCE:Landroidx/camera/video/internal/utils/CodecUtil;

    invoke-direct {v2, p0}, Landroidx/camera/video/internal/utils/CodecUtil;->createCodec(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, p0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaCodecInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    :cond_1
    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final getAllAudioEncoderMimeTypes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->allAudioEncoderMimeTypesCache:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroidx/camera/video/internal/utils/CodecUtil;->getAllEncoderMimeTypes()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v3, "audio/"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sput-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->allAudioEncoderMimeTypesCache:Ljava/util/List;

    :cond_2
    return-object v0
.end method

.method private final getAllEncoderInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/video/internal/utils/CodecUtil;->allEncoderInfosCache:Ljava/util/List;

    if-nez p0, :cond_2

    new-instance p0, Landroid/media/MediaCodecList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {p0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sput-object v1, Landroidx/camera/video/internal/utils/CodecUtil;->allEncoderInfosCache:Ljava/util/List;

    return-object v1

    :cond_2
    return-object p0
.end method

.method private final getAllEncoderMimeTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->allEncoderMimeTypesCache:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroidx/camera/video/internal/utils/CodecUtil;->getAllEncoderInfos()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodecInfo;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget-object v1, Lkx2;->b:Lkx2;

    :goto_1
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lqn1;->x0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Landroidx/camera/video/internal/utils/CodecUtil;->allEncoderMimeTypesCache:Ljava/util/List;

    return-object p0

    :cond_2
    return-object v0
.end method

.method private final getAllVideoEncoderMimeTypes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->allVideoEncoderMimeTypesCache:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroidx/camera/video/internal/utils/CodecUtil;->getAllEncoderMimeTypes()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v3, "video/"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sput-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->allVideoEncoderMimeTypesCache:Ljava/util/List;

    :cond_2
    return-object v0
.end method

.method public static final getAudioEncoderMimeTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->INSTANCE:Landroidx/camera/video/internal/utils/CodecUtil;

    invoke-direct {v0}, Landroidx/camera/video/internal/utils/CodecUtil;->getAllAudioEncoderMimeTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final getVideoEncoderMimeTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->INSTANCE:Landroidx/camera/video/internal/utils/CodecUtil;

    invoke-direct {v0}, Landroidx/camera/video/internal/utils/CodecUtil;->getAllVideoEncoderMimeTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final reset()V
    .locals 1

    const/4 p0, 0x0

    sput-object p0, Landroidx/camera/video/internal/utils/CodecUtil;->allEncoderInfosCache:Ljava/util/List;

    sput-object p0, Landroidx/camera/video/internal/utils/CodecUtil;->allEncoderMimeTypesCache:Ljava/util/List;

    sput-object p0, Landroidx/camera/video/internal/utils/CodecUtil;->allVideoEncoderMimeTypesCache:Ljava/util/List;

    sput-object p0, Landroidx/camera/video/internal/utils/CodecUtil;->allAudioEncoderMimeTypesCache:Ljava/util/List;

    sget-object p0, Landroidx/camera/video/internal/utils/CodecUtil;->codecInfoCache:Landroid/util/LruCache;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
