.class public final Landroidx/camera/camera2/impl/UseCaseCameraState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/camera/camera2/config/UseCaseCameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;,
        Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;
    }
.end annotation


# instance fields
.field private final currentInternalParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final currentListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final currentParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final currentStreams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;"
        }
    .end annotation
.end field

.field private currentTemplate:Landroidx/camera/camera2/pipe/RequestTemplate;

.field private lastAeMode:Landroidx/camera/camera2/pipe/AeMode;

.field private lastAfMode:Landroidx/camera/camera2/pipe/AfMode;

.field private lastAwbMode:Landroidx/camera/camera2/pipe/AwbMode;

.field private final lock:Ljava/lang/Object;

.field private final pendingSignalCount:Llt;

.field private final requestListener:Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;

.field private final submittedRequestCounter:Llt;

.field private final templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

.field private updateSignal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private updateSignals:Lfr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfr<",
            "Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;",
            ">;"
        }
    .end annotation
.end field

.field private updating:Z

.field private final useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->b(I)Llt;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->submittedRequestCounter:Llt;

    new-instance p2, Lfr;

    invoke-direct {p2}, Lfr;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lfr;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentParameters:Ljava/util/Map;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentInternalParameters:Ljava/util/Map;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/Set;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentListeners:Ljava/util/Set;

    new-instance p2, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;

    invoke-direct {p2, p0}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraState;)V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->requestListener:Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;

    invoke-static {p1}, Lkt;->b(I)Llt;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Llt;

    return-void
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/impl/UseCaseCameraState;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getPendingSignalCount$p(Landroidx/camera/camera2/impl/UseCaseCameraState;)Llt;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Llt;

    return-object p0
.end method

.method public static final synthetic access$getUpdateSignals$p(Landroidx/camera/camera2/impl/UseCaseCameraState;)Lfr;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lfr;

    return-object p0
.end method

.method public static final synthetic access$submitLatest(Landroidx/camera/camera2/impl/UseCaseCameraState;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraState;->submitLatest(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getIntOrNull(Ljava/util/Map;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_1
    return-object p0
.end method

.method private final submitLatest(Le02;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Update RepeatingRequest: "

    instance-of v3, v0, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;

    iget v4, v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;

    invoke-direct {v3, v1, v0}, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraState;Le02;)V

    :goto_0
    iget-object v0, v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->result:Ljava/lang/Object;

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    iget v5, v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->label:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v3, v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lr07;

    :try_start_0
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_2
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v5, Lr07;

    invoke-direct {v5}, Lr07;-><init>()V

    :try_start_1
    iget-object v0, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    invoke-virtual {v0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v0

    iput-object v5, v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->L$0:Ljava/lang/Object;

    iput v7, v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->label:I

    invoke-interface {v0, v3}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Le02;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v4, :cond_3

    return-object v4

    :cond_3
    move-object v3, v5

    :goto_1
    :try_start_2
    move-object v4, v0

    check-cast v4, Ljava/lang/AutoCloseable;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    move-object v0, v4

    check-cast v0, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    new-instance v5, Lr07;

    invoke-direct {v5}, Lr07;-><init>()V

    new-instance v7, Lr07;

    invoke-direct {v7}, Lr07;-><init>()V

    iget-object v9, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v10, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    iput-object v8, v5, Lr07;->b:Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_4
    iget-object v15, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentTemplate:Landroidx/camera/camera2/pipe/RequestTemplate;

    iget-object v10, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/Set;

    check-cast v10, Ljava/lang/Iterable;

    invoke-static {v10}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    iget-object v10, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    iget-object v12, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentTemplate:Landroidx/camera/camera2/pipe/RequestTemplate;

    invoke-interface {v10, v12}, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;->getOverrideParams-xlOpshk(Landroidx/camera/camera2/pipe/RequestTemplate;)Ljava/util/Map;

    move-result-object v10

    iget-object v12, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentParameters:Ljava/util/Map;

    invoke-static {v12}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    invoke-static {v10, v12}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v12

    iget-object v10, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentInternalParameters:Ljava/util/Map;

    invoke-static {v10}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v13

    invoke-static {}, Landroidx/camera/camera2/impl/TagsKt;->getUSE_CASE_CAMERA_STATE_CUSTOM_TAG()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v10

    iget-object v14, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->submittedRequestCounter:Llt;

    invoke-virtual {v14}, Llt;->b()I

    move-result v14

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v13, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentListeners:Ljava/util/Set;

    check-cast v8, Ljava/util/Collection;

    invoke-static {v8}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v14

    iget-object v8, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->requestListener:Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Landroidx/camera/camera2/pipe/Request;

    const/16 v17, 0x20

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v18}, Landroidx/camera/camera2/pipe/Request;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/camera/camera2/pipe/RequestTemplate;Landroidx/camera/camera2/pipe/InputRequest;ILjh2;)V

    iput-object v10, v5, Lr07;->b:Ljava/lang/Object;

    :goto_2
    iget-object v8, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lxp1;

    iput-object v8, v7, Lr07;->b:Ljava/lang/Object;

    iput-boolean v6, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    const/4 v10, 0x0

    iput-object v10, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lxp1;

    sget-object v10, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v9

    iget-object v9, v5, Lr07;->b:Ljava/lang/Object;

    if-nez v9, :cond_5

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->stopRepeating()V

    iget-object v0, v7, Lr07;->b:Ljava/lang/Object;

    iput-object v0, v3, Lr07;->b:Ljava/lang/Object;

    :goto_3
    const/4 v10, 0x0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_7

    :cond_5
    if-eqz v8, :cond_6

    iget-object v7, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v9, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lfr;

    new-instance v10, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    iget-object v11, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->submittedRequestCounter:Llt;

    iget v11, v11, Llt;->a:I

    invoke-direct {v10, v11, v8}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;-><init>(ILxp1;)V

    invoke-virtual {v9, v10}, Lfr;->addLast(Ljava/lang/Object;)V

    iget-object v8, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Llt;

    invoke-virtual {v8}, Llt;->b()I

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v7

    invoke-static {v8}, Lvc3;->a(I)V

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_6
    :goto_4
    sget-object v7, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v7, "CXCP"

    invoke-static {v7}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lr07;->b:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v2, v5, Lr07;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/pipe/Request;

    invoke-interface {v0, v2}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->startRepeating(Landroidx/camera/camera2/pipe/Request;)V

    iget-object v2, v5, Lr07;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/pipe/Request;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/Request;->getParameters()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroidx/camera/camera2/impl/UseCaseCameraState;->update3A(Landroidx/camera/camera2/pipe/CameraGraph$Session;Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :goto_5
    :try_start_8
    invoke-static {v4, v10}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_a

    :goto_6
    :try_start_9
    monitor-exit v9

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_7
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_b
    invoke-static {v4, v2}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_b} :catch_0

    :catch_1
    move-exception v0

    move-object v3, v5

    :goto_8
    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v2, "CXCP"

    invoke-static {v2}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot acquire session at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    iget-object v2, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_c
    iget-boolean v0, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    if-eqz v0, :cond_9

    iput-boolean v6, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    iget-object v0, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lxp1;

    iput-object v0, v3, Lr07;->b:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lxp1;

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_b

    :cond_9
    :goto_9
    sget-object v0, Lj59;->a:Lj59;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    monitor-exit v2

    :goto_a
    iget-object v0, v3, Lr07;->b:Ljava/lang/Object;

    check-cast v0, Lxp1;

    if-eqz v0, :cond_a

    sget-object v1, Lj59;->a:Lj59;

    invoke-interface {v0, v1}, Lxp1;->f(Ljava/lang/Object;)Z

    :cond_a
    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :goto_b
    monitor-exit v2

    throw v0
.end method

.method private final update3A(Landroidx/camera/camera2/pipe/CameraGraph$Session;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraGraph$Session;",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, v0}, Landroidx/camera/camera2/impl/UseCaseCameraState;->getIntOrNull(Ljava/util/Map;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v2, Landroidx/camera/camera2/pipe/AeMode;->Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

    invoke-virtual {v2, v0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->fromIntOrNull-kQd0u18(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, v0}, Landroidx/camera/camera2/impl/UseCaseCameraState;->getIntOrNull(Ljava/util/Map;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v2, Landroidx/camera/camera2/pipe/AfMode;->Companion:Landroidx/camera/camera2/pipe/AfMode$Companion;

    invoke-virtual {v2, v0}, Landroidx/camera/camera2/pipe/AfMode$Companion;->fromIntOrNull-MKXwA8g(I)Landroidx/camera/camera2/pipe/AfMode;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, v0}, Landroidx/camera/camera2/impl/UseCaseCameraState;->getIntOrNull(Ljava/util/Map;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sget-object v0, Landroidx/camera/camera2/pipe/AwbMode;->Companion:Landroidx/camera/camera2/pipe/AwbMode$Companion;

    invoke-virtual {v0, p2}, Landroidx/camera/camera2/pipe/AwbMode$Companion;->fromIntOrNull--SaEiwI(I)Landroidx/camera/camera2/pipe/AwbMode;

    move-result-object v1

    :cond_2
    move-object v5, v1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz v3, :cond_3

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAeMode:Landroidx/camera/camera2/pipe/AeMode;

    invoke-virtual {v3, v1}, Landroidx/camera/camera2/pipe/AeMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, p2

    :goto_2
    if-eqz v4, :cond_4

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAfMode:Landroidx/camera/camera2/pipe/AfMode;

    invoke-virtual {v4, v2}, Landroidx/camera/camera2/pipe/AfMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    move v2, p2

    :goto_3
    if-eqz v5, :cond_5

    iget-object v6, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAwbMode:Landroidx/camera/camera2/pipe/AwbMode;

    invoke-virtual {v5, v6}, Landroidx/camera/camera2/pipe/AwbMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move p2, v0

    :cond_5
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-eqz p2, :cond_a

    :cond_6
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UseCaseCameraState: Updating 3A modes: AE("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", changed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), AF("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), AWB("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v9, 0x38

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v10}, Landroidx/camera/camera2/pipe/CameraControls3A;->update3A-ydBZfZg$default(Landroidx/camera/camera2/pipe/CameraControls3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lmk2;

    if-eqz v3, :cond_8

    iput-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAeMode:Landroidx/camera/camera2/pipe/AeMode;

    :cond_8
    if-eqz v4, :cond_9

    iput-object v4, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAfMode:Landroidx/camera/camera2/pipe/AfMode;

    :cond_9
    if-eqz v5, :cond_a

    iput-object v5, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAwbMode:Landroidx/camera/camera2/pipe/AwbMode;

    :cond_a
    return-void
.end method

.method public static synthetic updateAsync-Tp9XwKQ$default(Landroidx/camera/camera2/impl/UseCaseCameraState;Ljava/util/Map;ZLjava/util/Map;ZLjava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Ljava/util/Set;Le02;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    const/4 v1, 0x1

    if-eqz p10, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    move p4, v1

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p9, p9, 0x40

    if-eqz p9, :cond_6

    move-object p7, v0

    :cond_6
    invoke-virtual/range {p0 .. p8}, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateAsync-Tp9XwKQ(Ljava/util/Map;ZLjava/util/Map;ZLjava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Ljava/util/Set;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final updateState-HOTx9TI(Ljava/util/Map;ZLjava/util/Map;ZLjava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;",
            "Landroidx/camera/camera2/pipe/RequestTemplate;",
            "Ljava/util/Set<",
            "+",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UseCaseCameraState#updateState: parameters = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", internalParameters = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", streams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", template = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentParameters:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentParameters:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    if-eqz p3, :cond_4

    if-nez p4, :cond_3

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentInternalParameters:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_3
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentInternalParameters:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    if-eqz p5, :cond_5

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/Set;

    check-cast p5, Ljava/util/Collection;

    invoke-interface {p1, p5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_5
    if-eqz p6, :cond_6

    iput-object p6, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentTemplate:Landroidx/camera/camera2/pipe/RequestTemplate;

    :cond_6
    if-eqz p7, :cond_7

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentListeners:Ljava/util/Set;

    check-cast p7, Ljava/util/Collection;

    invoke-interface {p0, p7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lxp1;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string v3, "UseCaseCameraState closed"

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lxp1;->e(Ljava/lang/Throwable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lxp1;

    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lfr;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lfr;

    invoke-virtual {v1}, Lfr;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->getSignal()Lxp1;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string v3, "UseCaseCameraState closed"

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lxp1;->e(Ljava/lang/Throwable;)Z

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Llt;

    invoke-virtual {v1}, Llt;->a()I

    goto :goto_1

    :cond_2
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final tryStartRepeating(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraState;->submitLatest(Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final updateAsync-Tp9XwKQ(Ljava/util/Map;ZLjava/util/Map;ZLjava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Ljava/util/Set;Le02;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;",
            "Landroidx/camera/camera2/pipe/RequestTemplate;",
            "Ljava/util/Set<",
            "+",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;",
            "Le02<",
            "-",
            "Lmk2<",
            "Lj59;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "UseCaseCameraState#updateState: parameters = "

    instance-of v1, p8, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;

    if-eqz v1, :cond_0

    move-object v1, p8

    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;

    iget v2, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;

    invoke-direct {v1, p0, p8}, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraState;Le02;)V

    :goto_0
    iget-object p8, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->result:Ljava/lang/Object;

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    iget v3, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p0, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lr07;

    invoke-static {p8}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p8}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p8, Lr07;

    invoke-direct {p8}, Lr07;-><init>()V

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v5, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v5, "CXCP"

    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", internalParameters = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", streams = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", template = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    if-nez p2, :cond_4

    iget-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentParameters:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    :cond_4
    iget-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentParameters:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5
    if-eqz p3, :cond_7

    if-nez p4, :cond_6

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentInternalParameters:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_6
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentInternalParameters:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    if-eqz p5, :cond_8

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/Set;

    check-cast p5, Ljava/util/Collection;

    invoke-interface {p1, p5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_8
    if-eqz p6, :cond_9

    iput-object p6, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentTemplate:Landroidx/camera/camera2/pipe/RequestTemplate;

    :cond_9
    if-eqz p7, :cond_a

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentListeners:Ljava/util/Set;

    check-cast p7, Ljava/util/Collection;

    invoke-interface {p1, p7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_a
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lxp1;

    if-nez p1, :cond_b

    new-instance p1, Lyp1;

    invoke-direct {p1}, Lyp1;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lxp1;

    :cond_b
    iget-boolean p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_c

    monitor-exit v3

    return-object p1

    :cond_c
    :try_start_1
    iput-boolean v4, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    iput-object p1, p8, Lr07;->b:Ljava/lang/Object;

    sget-object p1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    iput-object p8, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->L$0:Ljava/lang/Object;

    iput v4, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->label:I

    invoke-direct {p0, v1}, Landroidx/camera/camera2/impl/UseCaseCameraState;->submitLatest(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_d

    return-object v2

    :cond_d
    move-object p0, p8

    :goto_2
    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    return-object p0

    :goto_3
    monitor-exit v3

    throw p0
.end method
