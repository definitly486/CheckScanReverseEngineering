.class public final Lcom/google/android/gms/internal/measurement/zzvy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final b:Lcom/google/android/gms/internal/measurement/zzrg;

.field public static final c:Ljava/util/WeakHashMap;

.field public static final d:Lggc;

.field public static final synthetic zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    const-string v1, "androidx.fragment.app.FragmentViewLifecycleOwner.handleLifecycleEvent"

    const-string v2, "com.google.android.libraries.logging.logger.transmitters.clearcut"

    const-string v3, "com.google.android.libraries.performance.primes.transmitter.clearcut"

    const-string v4, "com.google.android.libraries.performance.primes.metrics.crash.CrashMetricServiceImpl"

    const-string v5, "com.google.android.libraries.performance.primes.metrics.crash.applicationexit.ApplicationExitMetricServiceImpl"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/n;->m(I[Ljava/lang/Object;)Lcom/google/common/collect/n;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/common/collect/z;->k:Lcom/google/common/collect/z;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvy;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrg;

    const-string v1, "tiktok_systrace"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzrg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvy;->b:Lcom/google/android/gms/internal/measurement/zzrg;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvy;->c:Ljava/util/WeakHashMap;

    new-instance v0, Lggc;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvy;->d:Lggc;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/measurement/zzwq;Lcom/google/android/gms/internal/measurement/zzws;)Lcom/google/android/gms/internal/measurement/zzws;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwq;->zzc:Lcom/google/android/gms/internal/measurement/zzxb;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwq;->b:Lcom/google/android/gms/internal/measurement/zzws;

    if-ne v0, p1, :cond_0

    goto :goto_4

    :cond_0
    if-nez v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzvy;->b:Lcom/google/android/gms/internal/measurement/zzrg;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzrk;->zza(Lcom/google/android/gms/internal/measurement/zzrg;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzwq;->a:Z

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzwq;->a:Z

    if-eqz v1, :cond_8

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v1

    if-ne v1, p1, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzws;->zza()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_3

    :cond_4
    :goto_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v1

    if-ne v0, v1, :cond_6

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzws;->zza()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p1}, Ltv8;->d(Lcom/google/android/gms/internal/measurement/zzws;)V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-static {v0}, Ltv8;->c(Lcom/google/android/gms/internal/measurement/zzws;)V

    :cond_7
    if-eqz p1, :cond_8

    invoke-static {p1}, Ltv8;->b(Lcom/google/android/gms/internal/measurement/zzws;)V

    :cond_8
    :goto_3
    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwq;->b:Lcom/google/android/gms/internal/measurement/zzws;

    return-object v0

    :cond_9
    :goto_4
    return-object p1
.end method

.method public static zzd()Lcom/google/android/gms/internal/measurement/zzwq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvy;->d:Lggc;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwq;

    return-object v0
.end method
