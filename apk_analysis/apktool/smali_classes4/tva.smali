.class public abstract Ltva;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile d:Lcom/google/android/gms/internal/measurement/zzcl;


# instance fields
.field public final a:Lpvb;

.field public final b:Lpva;

.field public volatile c:J


# direct methods
.method public constructor <init>(Lpvb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ltva;->a:Lpvb;

    new-instance v0, Lpva;

    invoke-direct {v0, p0, p1}, Lpva;-><init>(Ltva;Lpvb;)V

    iput-object v0, p0, Ltva;->b:Lpva;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b(J)V
    .locals 3

    invoke-virtual {p0}, Ltva;->c()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Ltva;->a:Lpvb;

    invoke-interface {v0}, Lpvb;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ltva;->c:J

    invoke-virtual {p0}, Ltva;->d()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Ltva;->b:Lpva;

    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lpvb;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Failed to schedule delayed post. time"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltva;->c:J

    invoke-virtual {p0}, Ltva;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Ltva;->b:Lpva;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()Landroid/os/Handler;
    .locals 2

    sget-object v0, Ltva;->d:Lcom/google/android/gms/internal/measurement/zzcl;

    if-eqz v0, :cond_0

    sget-object p0, Ltva;->d:Lcom/google/android/gms/internal/measurement/zzcl;

    return-object p0

    :cond_0
    const-class v0, Ltva;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ltva;->d:Lcom/google/android/gms/internal/measurement/zzcl;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzcl;

    iget-object p0, p0, Ltva;->a:Lpvb;

    invoke-interface {p0}, Lpvb;->zzaZ()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzcl;-><init>(Landroid/os/Looper;)V

    sput-object v1, Ltva;->d:Lcom/google/android/gms/internal/measurement/zzcl;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Ltva;->d:Lcom/google/android/gms/internal/measurement/zzcl;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
