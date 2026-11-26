.class public final Lcom/google/android/gms/internal/measurement/zzbu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lcom/google/android/gms/internal/measurement/zzbu;


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzbu;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbu;->b:Lcom/google/android/gms/internal/measurement/zzbu;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/zzbu;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbu;->b:Lcom/google/android/gms/internal/measurement/zzbu;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzbu;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzbu;->b:Lcom/google/android/gms/internal/measurement/zzbu;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbu;->b:Lcom/google/android/gms/internal/measurement/zzbu;

    return-object v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/measurement/zzbt;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbu;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method
