.class public final synthetic Lvec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzui;

.field public final synthetic b:Lx1$a;

.field public final synthetic c:Lx1$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzui;Lx1$a;Lx1$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvec;->a:Lcom/google/android/gms/internal/measurement/zzui;

    iput-object p2, p0, Lvec;->b:Lx1$a;

    iput-object p3, p0, Lvec;->c:Lx1$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Lvec;->a:Lcom/google/android/gms/internal/measurement/zzui;

    iget-object v1, p0, Lvec;->b:Lx1$a;

    iget-object p0, p0, Lvec;->c:Lx1$a;

    invoke-static {v1}, Len3;->V(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Len3;->V(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Len3;->X(Ljava/lang/Object;)Lu24;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lwec;

    invoke-direct {p1, v0, p0}, Lwec;-><init>(Lcom/google/android/gms/internal/measurement/zzui;Lx1$a;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lks;)Lks;

    move-result-object p1

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzui;->d:Llp7;

    invoke-static {p0, p1, v1}, Lx1;->p(Lcom/google/common/util/concurrent/ListenableFuture;Lks;Ljava/util/concurrent/Executor;)Lx1$a;

    move-result-object p0

    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/zzui;->h:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
