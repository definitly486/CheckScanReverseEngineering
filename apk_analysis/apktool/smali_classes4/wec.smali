.class public final synthetic Lwec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzui;

.field public final synthetic b:Lx1$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzui;Lx1$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwec;->a:Lcom/google/android/gms/internal/measurement/zzui;

    iput-object p2, p0, Lwec;->b:Lx1$a;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lwec;->a:Lcom/google/android/gms/internal/measurement/zzui;

    iget-object p0, p0, Lwec;->b:Lx1$a;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzui;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Len3;->V(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzui;->b(Landroid/net/Uri;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzui;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/zzui;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Len3;->X(Ljava/lang/Object;)Lu24;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
