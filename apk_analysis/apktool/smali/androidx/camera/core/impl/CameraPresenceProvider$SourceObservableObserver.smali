.class final Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Observable$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraPresenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SourceObservableObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/Observable$Observer<",
        "Ljava/util/List<",
        "+",
        "Landroidx/camera/core/CameraIdentifier;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/impl/CameraPresenceProvider;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraPresenceProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->this$0:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->this$0:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-static {v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->access$isMonitoring$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CameraPresencePrvdr"

    const-string v1, "Error from source camera presence observable. Triggering refresh."

    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->this$0:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-static {p0}, Landroidx/camera/core/impl/CameraPresenceProvider;->access$getSourcePresenceObservable$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Landroidx/camera/core/impl/Observable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/camera/core/impl/Observable;->fetchData()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onNewData(Ljava/lang/Object;)V
    .locals 0

    .line 272
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->onNewData(Ljava/util/List;)V

    return-void
.end method

.method public onNewData(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->this$0:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-static {v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->access$isMonitoring$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->this$0:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-static {v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->access$getCameraFactory$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Landroidx/camera/core/impl/CameraFactory;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->this$0:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-static {v1}, Landroidx/camera/core/impl/CameraPresenceProvider;->access$getCameraRepository$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Landroidx/camera/core/impl/CameraRepository;

    move-result-object v1

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->this$0:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-static {v2}, Landroidx/camera/core/impl/CameraPresenceProvider;->access$getCameraValidator$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Landroidx/camera/core/impl/CameraValidator;

    move-result-object v2

    if-nez v2, :cond_3

    goto/16 :goto_4

    :cond_3
    const/16 v3, 0xa

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v5}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-object v4, Lkx2;->b:Lkx2;

    :cond_5
    instance-of p1, v0, Landroidx/camera/core/impl/CameraFactory$Interrogator;

    const/4 v5, 0x6

    const-string v6, "CameraPresencePrvdr"

    const/4 v7, 0x0

    if-eqz p1, :cond_7

    :try_start_0
    iget-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->this$0:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-static {p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->access$getCurrentFilteredIds$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Ljava/util/List;

    move-result-object p1

    move-object v8, v0

    check-cast v8, Landroidx/camera/core/impl/CameraFactory$Interrogator;

    invoke-interface {v8, v4}, Landroidx/camera/core/impl/CameraFactory$Interrogator;->getAvailableCameraIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v7, v7, v5, v7}, Landroidx/camera/core/CameraIdentifier$Factory;->create$default(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/Identifier;ILjava/lang/Object;)Landroidx/camera/core/CameraIdentifier;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_6
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {v9}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {p1, v8}, Lmr7;->j(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v1, p1}, Landroidx/camera/core/impl/CameraValidator;->isChangeInvalid(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Camera removal update invalid. Aborting."

    invoke-static {v6, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    const-string v1, "Failed to interrogate camera factory. Falling back to full update."

    invoke-static {v6, v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :try_start_1
    invoke-interface {v0, v4}, Landroidx/camera/core/impl/CameraPresenceMonitor;->onCameraIdsUpdated(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraFactory;->getAvailableCameraIds()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v7, v7, v5, v7}, Landroidx/camera/core/CameraIdentifier$Factory;->create$default(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/Identifier;ILjava/lang/Object;)Landroidx/camera/core/CameraIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    iget-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->this$0:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-static {p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->access$getCurrentFilteredIds$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :goto_4
    return-void

    :cond_9
    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->this$0:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-static {p0, v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->access$processFilteredCameraIdUpdate(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;)V

    return-void

    :catch_1
    move-exception p0

    const-string p1, "CameraFactory failed to update. The camera list may be stale until the next update."

    invoke-static {v6, p1, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
