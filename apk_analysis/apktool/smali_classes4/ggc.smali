.class public final Lggc;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# virtual methods
.method public final synthetic initialValue()Ljava/lang/Object;
    .locals 2

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzwq;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzrn;->zza(Ljava/lang/Thread;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzwq;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzvy;->c:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, v0, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
