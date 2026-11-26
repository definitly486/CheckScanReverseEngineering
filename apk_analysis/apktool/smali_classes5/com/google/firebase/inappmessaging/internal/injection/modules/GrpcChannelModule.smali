.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcChannelModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesGrpcChannel(Ljava/lang/String;)Ly81;
    .locals 6
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    sget-object p0, Lio/grpc/ManagedChannelRegistry;->c:Ljava/util/logging/Logger;

    const-class p0, Lio/grpc/ManagedChannelRegistry;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lio/grpc/ManagedChannelRegistry;->d:Lio/grpc/ManagedChannelRegistry;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-class v0, Lio/grpc/ManagedChannelProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljv5;

    invoke-direct {v2}, Ljv5;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Lio/grpc/ManagedChannelProvider;

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v3, Lkz4;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lio/grpc/ManagedChannelRegistry$a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v2, v3, v4}, Lio/grpc/p;->a(Ljava/lang/Class;Ljava/util/Iterator;Lkd8;Lio/grpc/p$b;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lio/grpc/ManagedChannelRegistry;

    invoke-direct {v2}, Lio/grpc/ManagedChannelRegistry;-><init>()V

    sput-object v2, Lio/grpc/ManagedChannelRegistry;->d:Lio/grpc/ManagedChannelRegistry;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/ManagedChannelProvider;

    sget-object v3, Lio/grpc/ManagedChannelRegistry;->c:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service loader found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v3, Lio/grpc/ManagedChannelRegistry;->d:Lio/grpc/ManagedChannelRegistry;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lio/grpc/ManagedChannelRegistry;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_0
    sget-object v0, Lio/grpc/ManagedChannelRegistry;->d:Lio/grpc/ManagedChannelRegistry;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lio/grpc/ManagedChannelRegistry;->a:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Llz4;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lio/grpc/ManagedChannelRegistry;->b:Ljava/util/List;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p1

    :catchall_3
    move-exception p1

    new-instance v0, Ljava/util/ServiceConfigurationError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_1
    sget-object v0, Lio/grpc/ManagedChannelRegistry;->d:Lio/grpc/ManagedChannelRegistry;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit p0

    monitor-enter v0

    :try_start_b
    iget-object p0, v0, Lio/grpc/ManagedChannelRegistry;->b:Ljava/util/List;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    monitor-exit v0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/ManagedChannelProvider;

    :goto_2
    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lio/grpc/ManagedChannelProvider;->a(Ljava/lang/String;)Lhv5;

    move-result-object p0

    iget-object p0, p0, Lhv5;->a:Liz4;

    invoke-virtual {p0}, Liz4;->a()Ldz4;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;

    const-string p1, "No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_4
    move-exception p0

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw p0

    :goto_3
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw p1
.end method

.method public providesServiceHost()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    const-string p0, "firebaseinappmessaging.googleapis.com"

    return-object p0
.end method
