.class final Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.impl.UseCaseSurfaceManager$setupAsync$1$deferred$1"
    f = "UseCaseSurfaceManager.kt"
    l = {
        0x61
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->setupAsync(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Ljava/util/Map;J)Lmk2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $deferrableSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $graph:Landroidx/camera/camera2/pipe/CameraGraph;

.field final synthetic $sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

.field final synthetic $surfaceToStreamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $timeoutMillis:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/List;JLjava/util/Map;Landroidx/camera/camera2/pipe/CameraGraph;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/SessionConfigAdapter;",
            "Landroidx/camera/camera2/impl/UseCaseSurfaceManager;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;J",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$deferrableSurfaces:Ljava/util/List;

    iput-wide p4, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$timeoutMillis:J

    iput-object p6, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$surfaceToStreamMap:Ljava/util/Map;

    iput-object p7, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$graph:Landroidx/camera/camera2/pipe/CameraGraph;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$deferrableSurfaces:Ljava/util/List;

    iget-wide v4, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$timeoutMillis:J

    iget-object v6, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$surfaceToStreamMap:Ljava/util/Map;

    iget-object v7, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$graph:Landroidx/camera/camera2/pipe/CameraGraph;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;-><init>(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/List;JLjava/util/Map;Landroidx/camera/camera2/pipe/CameraGraph;Le02;)V

    iput-object p1, v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ly22;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->isSessionConfigValid()Z

    move-result v1

    if-eqz v1, :cond_10

    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    iget-object v4, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$deferrableSurfaces:Ljava/util/List;

    iget-wide v5, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$timeoutMillis:J

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->label:I

    invoke-static {v1, v4, v5, v6, p0}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->access$getSurfaces(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/List;JLe02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/util/List;
    :try_end_1
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v0}, Lz22;->e(Ly22;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    invoke-static {v0, p1}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->access$areValid(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    invoke-static {v0}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->access$getLock$p(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$deferrableSurfaces:Ljava/util/List;

    monitor-enter v0

    :try_start_2
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lm05;->b(I)I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_4

    move v4, v5

    :cond_4
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-interface {v2, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    check-cast v6, Landroid/view/Surface;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_5
    const-string p0, "Required value was null."

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {v1, v5}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->access$setConfiguredSurfaceMap$p(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/Map;)V

    invoke-static {v1}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->access$setSurfaceListener(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;)V

    sget-object v1, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$surfaceToStreamMap:Ljava/util/Map;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$deferrableSurfaces:Ljava/util/List;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$graph:Landroidx/camera/camera2/pipe/CameraGraph;

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    sget-object v6, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v6, "CXCP"

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Configured "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-interface {v2, v4, v5}, Landroidx/camera/camera2/pipe/CameraGraphBase;->setSurface-NYG5g8E(ILandroid/view/Surface;)V

    invoke-static {p0}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->access$getInactiveSurfaceCloser$p(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;)Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-interface {v5, v4, v3, v2}, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;->configure-hB7JTeY(ILandroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/camera2/pipe/CameraGraph;)V

    goto :goto_2

    :cond_8
    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isInfoEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Surface setup complete"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :goto_3
    monitor-exit v0

    throw p0

    :cond_a
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Surface setup failed: Some Surfaces are invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$deferrableSurfaces:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->reportSurfaceInvalid(Landroidx/camera/core/impl/DeferrableSurface;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_c
    :goto_4
    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isInfoEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get Surfaces: isActive="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lz22;->e(Ly22;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", surfaces="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :catch_1
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    iget-wide p0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$timeoutMillis:J

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get Surfaces within "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :goto_5
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to get Surfaces: Surfaces closed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;->getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->reportSurfaceInvalid(Landroidx/camera/core/impl/DeferrableSurface;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_10
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2
.end method
