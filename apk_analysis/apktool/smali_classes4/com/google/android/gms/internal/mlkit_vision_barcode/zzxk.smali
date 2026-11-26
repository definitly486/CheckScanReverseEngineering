.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final r:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/lang/Object;

.field public final d:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;

.field public final g:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

.field public final h:Ljava/lang/String;

.field public i:Ljava/util/concurrent/Executor;

.field public j:F

.field public k:F

.field public l:J

.field public m:J

.field public n:Ljava/util/concurrent/ScheduledFuture;

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "AutoZoom"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->r:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzd;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzar;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    new-instance v3, Lxt7;

    invoke-direct {v3, p1}, Lxt7;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwi;

    const-string v5, "scanner-auto-zoom"

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwh;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwg;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwh;

    move-result-object v6

    invoke-direct {v4, p1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwh;)V

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;-><init>(Landroid/content/Context;Lxt7;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwf;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zzz()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->h:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->q:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->j:F

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->k:F

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zza()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->l:J

    return-void
.end method

.method public static zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->q:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->j:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->zza()J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->i()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->r:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v3, "AutoZoom"

    const-string v4, "Reset zoom = 1"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zzdM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a(FLcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(FLcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;FFLcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;->zzf(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;->zzc(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->c:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zza()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->m:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;->zzb(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;

    if-eqz p4, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzup;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzup;-><init>()V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->b()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzup;->zzc(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzup;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->d()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzup;->zze(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzup;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->a()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzup;->zzb(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzup;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->c()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzup;->zzd(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzup;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzup;->zza(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzup;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzup;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzur;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzur;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzuo;->zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzut;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzut;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzws;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final c(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    invoke-virtual {v1}, Lyxa;->zzs()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zza()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->l:J

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->n:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zza()J
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zza()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->l:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzi(ILcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;)V
    .locals 13

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->q:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->l()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->b()F

    move-result v0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->p:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zzdK:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->j:F

    invoke-virtual {p0, v0, v3, v3, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->b(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;FFLcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->p:Z

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->r:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v3, "AutoZoom"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "Process PredictedArea: [%.2f, %.2f, %.2f, %.2f, %.2f], frameIndex = %d"

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->b()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->d()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->a()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->c()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v7 .. v12}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    invoke-virtual {v0, v12, p2}, Lyxa;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    invoke-virtual {v0}, Ljya;->zzw()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->h()I

    move-result v4

    if-le v3, v4, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, p1

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_3

    move v3, v4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->r:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v4, "AutoZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing recent frameIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lvwa;->zzf(Ljava/lang/Object;)Ljava/util/List;

    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    invoke-virtual {v3}, Ljya;->zzu()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p1, :cond_6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->f()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->f()Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    move v6, v2

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->b()F

    move-result v6

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->b()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->d()F

    move-result v7

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->d()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->a()F

    move-result v8

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->a()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->c()F

    move-result v9

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->c()F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    new-instance v10, Lihc;

    invoke-direct {v10, v6, v7, v8, v9}, Lihc;-><init>(FFFF)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->e()F

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->e()F

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->e()F

    move-result v7

    add-float/2addr v5, v7

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->e()F

    move-result v7

    sub-float/2addr v5, v7

    div-float/2addr v6, v5

    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->d()F

    move-result v5

    cmpl-float v5, v6, v5

    if-ltz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->g()I

    move-result v0

    if-ge p1, v0, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->l()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->a()F

    move-result p1

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_11

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->c:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->zza()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->j()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_b

    monitor-exit p1

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->b()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->d()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->a()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;->c()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;->zzi(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdv;

    move-result-object v0

    const v3, 0x4e6e6b28    # 1.0E9f

    :cond_c
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->c()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/high16 v6, -0x41000000    # -0.5f

    add-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v6, 0x3a83126f    # 0.001f

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float v4, v5, v4

    cmpl-float v5, v3, v4

    if-lez v5, :cond_c

    move v3, v4

    goto :goto_3

    :cond_d
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->j:F

    mul-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v3

    iget v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->k:F

    if-gez v4, :cond_e

    move v0, v3

    :cond_e
    cmpl-float v2, v5, v2

    if-lez v2, :cond_f

    cmpl-float v2, v0, v5

    if-lez v2, :cond_f

    goto :goto_4

    :cond_f
    move v5, v0

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->j:F

    sub-float v2, v5, v0

    div-float/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->e()F

    move-result v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxm;->f()F

    move-result v0

    neg-float v0, v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_10

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->r:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v0, "AutoZoom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto zoom to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " is filtered by threshold"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zza()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->l:J

    monitor-exit p1

    goto :goto_5

    :cond_10
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->r:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, "AutoZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Going to set zoom = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zzdL:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    invoke-virtual {p0, v5, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->a(FLcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_11
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_6
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_12
    :goto_7
    monitor-exit v1

    return-void

    :goto_8
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final zzj()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->q:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->zzn(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->q:I

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzk(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->c:Ljava/lang/Object;

    monitor-enter v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;->zzd(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->k:F

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzm()V
    .locals 10

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->q:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->c(Z)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxi;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxi;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1f4

    move-wide v7, v5

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->n:Ljava/util/concurrent/ScheduledFuture;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->q:I

    const/4 v4, 0x0

    if-ne v3, v0, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zza()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->m:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->p:Z

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zzdF:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->j:F

    invoke-virtual {p0, v0, v3, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->b(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;FFLcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zzdH:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->j:F

    invoke-virtual {p0, v0, v3, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->b(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;FFLcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;)V

    :goto_0
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->q:I

    monitor-exit v1

    return-void

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzn(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->q:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->c(Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->p:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zzdK:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->j:F

    invoke-virtual {p0, p1, v3, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->b(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;FFLcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zzdI:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->j:F

    invoke-virtual {p0, p1, v3, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->b(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;FFLcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zzdJ:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->j:F

    invoke-virtual {p0, p1, v3, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->b(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;FFLcom/google/android/gms/internal/mlkit_vision_barcode/zzxn;)V

    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->p:Z

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->q:I

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->o:Ljava/lang/String;

    monitor-exit v0

    return-void

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzo(Lq8b;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxk;->i:Ljava/util/concurrent/Executor;

    return-void
.end method
