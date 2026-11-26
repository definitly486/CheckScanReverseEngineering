.class public final Lcfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljs;


# instance fields
.field public b:Ljava/util/List;

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zztp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zztp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfc;->c:Lcom/google/android/gms/internal/measurement/zztp;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    iget-object v0, p0, Lcfc;->c:Lcom/google/android/gms/internal/measurement/zztp;

    iget-object v1, v0, Lifc;->a:Ljava/lang/String;

    const-string v2, "Initialize "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lifc;->h:Lcom/google/android/gms/internal/measurement/zzwb;

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzxd;->zza:Lcom/google/android/gms/internal/measurement/zzxd;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzxd;)Lcom/google/android/gms/internal/measurement/zzwi;

    move-result-object v1

    :try_start_0
    iget-object v2, v0, Lifc;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcfc;->b:Ljava/util/List;

    if-nez v3, :cond_0

    iget-object v3, v0, Lifc;->i:Ljava/util/List;

    iput-object v3, p0, Lcfc;->b:Ljava/util/List;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v3, v0, Lifc;->i:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcfc;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lhfc;

    iget-object v3, p0, Lcfc;->c:Lcom/google/android/gms/internal/measurement/zztp;

    invoke-direct {v2, v3}, Lhfc;-><init>(Lcom/google/android/gms/internal/measurement/zztp;)V

    iget-object v3, p0, Lcfc;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lks;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v4, v2}, Lks;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_4
    invoke-static {v2}, Len3;->W(Ljava/lang/Exception;)Lu24$b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/j;->n(Ljava/lang/Iterable;)Lcom/google/common/collect/j;

    move-result-object v0

    new-instance v2, Lbfc;

    invoke-direct {v2, p0}, Lbfc;-><init>(Lcfc;)V

    sget-object p0, Ljn2;->INSTANCE:Ljn2;

    new-instance v3, Lgo1;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Llb;-><init>(Lcom/google/common/collect/i;Z)V

    new-instance v0, Lgo1$b;

    invoke-direct {v0, v3, v2, p0}, Lgo1$b;-><init>(Lgo1;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object v0, v3, Lgo1;->p:Lgo1$c;

    invoke-virtual {v3}, Llb;->s()V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzwi;->zza(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzwi;->close()V

    return-object v3

    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzwi;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method
