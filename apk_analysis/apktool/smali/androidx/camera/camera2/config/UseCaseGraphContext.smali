.class public final Landroidx/camera/camera2/config/UseCaseGraphContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _graph:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraGraphProvider:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

.field private final graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

.field private final streamConfigMapProvider:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/CameraStream$Config;",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;>;"
        }
    .end annotation
.end field

.field private final surfaceToStreamMap$delegate:Lcl4;


# direct methods
.method public constructor <init>(Lws6;Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Lws6;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lws6<",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            ">;",
            "Landroidx/camera/camera2/adapter/CameraStateAdapter;",
            "Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;",
            "Lws6<",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/CameraStream$Config;",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;>;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->cameraGraphProvider:Lws6;

    iput-object p2, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    iput-object p3, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    iput-object p4, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->streamConfigMapProvider:Lws6;

    new-instance p1, Lq;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lq;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->_graph:Lcl4;

    new-instance p1, Lm99;

    invoke-direct {p1, p5, p0}, Lm99;-><init>(Ljava/util/Map;Landroidx/camera/camera2/config/UseCaseGraphContext;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->surfaceToStreamMap$delegate:Lcl4;

    return-void
.end method

.method public synthetic constructor <init>(Lws6;Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Lws6;Ljava/util/Map;ILjh2;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 49
    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/config/UseCaseGraphContext;-><init>(Lws6;Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Lws6;Ljava/util/Map;)V

    return-void
.end method

.method private static final _graph$lambda$0(Landroidx/camera/camera2/config/UseCaseGraphContext;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->cameraGraphProvider:Lws6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraGraph;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/Map;Landroidx/camera/camera2/config/UseCaseGraphContext;)Ljava/util/Map;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->surfaceToStreamMap_delegate$lambda$0(Ljava/util/Map;Landroidx/camera/camera2/config/UseCaseGraphContext;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/camera/camera2/config/UseCaseGraphContext;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->_graph$lambda$0(Landroidx/camera/camera2/config/UseCaseGraphContext;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    return-object p0
.end method

.method private static getGraph$delegate(Landroidx/camera/camera2/config/UseCaseGraphContext;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->_graph:Lcl4;

    return-object p0
.end method

.method private static final surfaceToStreamMap_delegate$lambda$0(Ljava/util/Map;Landroidx/camera/camera2/config/UseCaseGraphContext;)Ljava/util/Map;
    .locals 4

    if-nez p0, :cond_2

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p1, Landroidx/camera/camera2/config/UseCaseGraphContext;->streamConfigMapProvider:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/CameraStream$Config;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/camera2/pipe/CameraGraphBase;->getStreams()Landroidx/camera/camera2/pipe/StreamGraph;

    move-result-object v3

    invoke-interface {v3, v2}, Landroidx/camera/camera2/pipe/StreamGraph;->get(Landroidx/camera/camera2/pipe/CameraStream$Config;)Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private final useGraphSession$$forInline(Lnl3;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraGraph$Session;",
            "+TT;>;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    invoke-interface {p0, p2}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Le02;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object p2, p0

    check-cast p2, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface {p1, p2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    invoke-static {p0, p2}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final closeGraph()V
    .locals 5

    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->_graph:Lcl4;

    invoke-interface {v0}, Lcl4;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-interface {p0, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v1, :cond_2

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_4
    instance-of v0, p0, Landroid/content/res/TypedArray;

    if-eqz v0, :cond_5

    check-cast p0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_5
    instance-of v0, p0, Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_6

    check-cast p0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_6
    instance-of v0, p0, Landroid/media/MediaDrm;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    goto :goto_1

    :cond_7
    invoke-static {}, Lmi2;->b()V

    :cond_8
    :goto_1
    return-void
.end method

.method public final configureCameraStateListener()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->setCameraGraph(Landroidx/camera/camera2/pipe/CameraGraph;)V

    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphUpdated(Landroidx/camera/camera2/pipe/CameraGraph;)V

    return-void
.end method

.method public final getGraph()Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->_graph:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/camera/camera2/pipe/CameraGraph;

    return-object p0
.end method

.method public final getStreamIdsFromSurfaces(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;)",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getSurfaceToStreamMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/StreamId;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getSurfaceToStreamMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->surfaceToStreamMap$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final useGraphSession(Lnl3;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraGraph$Session;",
            "+TT;>;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/camera/camera2/config/UseCaseGraphContext$useGraphSession$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/config/UseCaseGraphContext$useGraphSession$1;

    iget v1, v0, Landroidx/camera/camera2/config/UseCaseGraphContext$useGraphSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/config/UseCaseGraphContext$useGraphSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/config/UseCaseGraphContext$useGraphSession$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/config/UseCaseGraphContext$useGraphSession$1;-><init>(Landroidx/camera/camera2/config/UseCaseGraphContext;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/config/UseCaseGraphContext$useGraphSession$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/config/UseCaseGraphContext$useGraphSession$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Landroidx/camera/camera2/config/UseCaseGraphContext$useGraphSession$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lnl3;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    iput-object p1, v0, Landroidx/camera/camera2/config/UseCaseGraphContext$useGraphSession$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/config/UseCaseGraphContext$useGraphSession$1;->label:I

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object p0, p2

    check-cast p0, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, v3}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p2, p0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method
