.class public final Lcom/google/android/gms/internal/measurement/zzlw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Lw1c;

.field public static final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final synthetic zza:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlw;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlw;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static zza(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlw;->b:Lw1c;

    if-nez v0, :cond_7

    if-nez p0, :cond_0

    goto :goto_5

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlw;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzlw;->b:Lw1c;

    if-nez v1, :cond_6

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzlw;->b:Lw1c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object p0, v2

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v1, Lw1c;->a:Landroid/content/Context;

    if-eq v2, p0, :cond_5

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzld;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzma;->a()V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzld;

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_1
    new-instance v1, Lj3c;

    invoke-direct {v1, p0}, Lj3c;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lld8;->a(Lkd8;)Lkd8;

    move-result-object v1

    new-instance v2, Lw1c;

    invoke-direct {v2, p0, v1}, Lw1c;-><init>(Landroid/content/Context;Lkd8;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzlw;->b:Lw1c;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzlw;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_5
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_6
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_7
    :goto_5
    return-void
.end method
