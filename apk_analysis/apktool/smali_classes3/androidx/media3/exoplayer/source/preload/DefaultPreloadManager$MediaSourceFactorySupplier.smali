.class Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$MediaSourceFactorySupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaSourceFactorySupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkd8<",
        "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field private cache:Landroidx/media3/datasource/cache/Cache;

.field private final context:Landroid/content/Context;

.field private customMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field private final defaultMediaSourceFactorySupplier:Lkd8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkd8<",
            "Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$MediaSourceFactorySupplier;->context:Landroid/content/Context;

    new-instance v0, Landroidx/media3/exoplayer/source/preload/a;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/preload/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lld8;->a(Lkd8;)Lkd8;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$MediaSourceFactorySupplier;->defaultMediaSourceFactorySupplier:Lkd8;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$MediaSourceFactorySupplier;->lambda$new$0(Landroid/content/Context;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Landroid/content/Context;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$MediaSourceFactorySupplier;->customMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$MediaSourceFactorySupplier;->defaultMediaSourceFactorySupplier:Lkd8;

    invoke-interface {v0}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$MediaSourceFactorySupplier;->cache:Landroidx/media3/datasource/cache/Cache;

    if-eqz v1, :cond_1

    new-instance v2, Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    invoke-direct {v2}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;-><init>()V

    new-instance v3, Landroidx/media3/datasource/DefaultDataSource$Factory;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$MediaSourceFactorySupplier;->context:Landroid/content/Context;

    invoke-direct {v3, p0}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->setUpstreamDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->setCache(Landroidx/media3/datasource/cache/Cache;)Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->setCacheWriteDataSinkFactory(Landroidx/media3/datasource/DataSink$Factory;)Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$MediaSourceFactorySupplier;->get()Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public setCache(Landroidx/media3/datasource/cache/Cache;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$MediaSourceFactorySupplier;->cache:Landroidx/media3/datasource/cache/Cache;

    return-void
.end method

.method public setCustomMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$MediaSourceFactorySupplier;->customMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    return-void
.end method
