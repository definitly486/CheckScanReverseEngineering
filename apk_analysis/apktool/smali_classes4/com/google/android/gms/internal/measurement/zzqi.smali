.class public final Lcom/google/android/gms/internal/measurement/zzqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzqm;


# static fields
.field public static d:Z


# instance fields
.field public final a:Lkd8;

.field public final b:I

.field public final c:Lncc;


# direct methods
.method public constructor <init>(Lkd8;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqi;->a:Lkd8;

    const/4 p1, 0x5

    const/16 p2, 0xa

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzqi;->b:I

    sget-object p1, Lncc;->b:Lncc;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqi;->c:Lncc;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 8

    const-class v1, Lcom/google/android/gms/internal/measurement/zzqi;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzqi;->d:Z

    if-nez v0, :cond_0

    new-instance v4, Lmcc;

    invoke-direct {v4, p0}, Lmcc;-><init>(Lcom/google/android/gms/internal/measurement/zzqi;)V

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzqi;->b:I

    int-to-long v6, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzqi;->a:Lkd8;

    invoke-interface {v2}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lxr4;

    new-instance v2, Llcc;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Llcc;-><init>(Lcom/google/android/gms/internal/measurement/zzqi;Lmcc;Lxr4;J)V

    invoke-interface {v5, v2, v6, v7, v0}, Lxr4;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lnd5$b$a;

    move-result-object p0

    new-instance v0, Lsxb;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lsxb;-><init>(Ljava/lang/Object;I)V

    sget-object v3, Ljn2;->INSTANCE:Ljn2;

    invoke-virtual {p0, v0, v3}, Lij3;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-boolean v2, Lcom/google/android/gms/internal/measurement/zzqi;->d:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
