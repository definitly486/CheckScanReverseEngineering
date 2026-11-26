.class public final Lj15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2c;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/io/Serializable;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzlj;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzom;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj15;->b:Ljava/lang/Object;

    iput-object p2, p0, Lj15;->c:Ljava/io/Serializable;

    iput-object p3, p0, Lj15;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj15;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lj15;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-char v3, p1, v2

    const/16 v4, 0x23

    if-eq v3, v4, :cond_6

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_4

    const/16 v4, 0x41

    if-eq v3, v4, :cond_3

    const/16 v4, 0x48

    if-eq v3, v4, :cond_2

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x55

    if-eq v3, v4, :cond_0

    new-instance v4, Lzr4;

    invoke-direct {v4}, Lk15;-><init>()V

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    iput-object v3, v4, Lzr4;->a:Ljava/lang/Character;

    goto :goto_1

    :cond_0
    new-instance v4, Lt89;

    invoke-direct {v4}, Lk15;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v4, Lcy4;

    invoke-direct {v4}, Lk15;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v4, Lvv3;

    invoke-direct {v4}, Lk15;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v4, Lvc;

    invoke-direct {v4}, Lk15;-><init>()V

    goto :goto_1

    :cond_4
    new-instance v4, Lto4;

    invoke-direct {v4}, Lk15;-><init>()V

    goto :goto_1

    :cond_5
    new-instance v4, Lzr4;

    invoke-direct {v4}, Lk15;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v4, Lzr4;->a:Ljava/lang/Character;

    goto :goto_1

    :cond_6
    new-instance v4, Lgn2;

    invoke-direct {v4}, Lk15;-><init>()V

    :goto_1
    invoke-virtual {v4}, Lk15;->a()Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_7

    iget-object v3, p0, Lj15;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    iput-object v0, p0, Lj15;->c:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6

    iget-object p1, p0, Lj15;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-virtual {p1}, Lmdb;->zzg()V

    iget-object p4, p0, Lj15;->d:Ljava/lang/Object;

    check-cast p4, Lcom/google/android/gms/measurement/internal/zzom;

    const/16 p5, 0xc8

    if-eq p2, p5, :cond_0

    const/16 p5, 0xcc

    if-eq p2, p5, :cond_0

    const/16 p5, 0x130

    if-ne p2, p5, :cond_1

    move p2, p5

    :cond_0
    if-nez p3, :cond_1

    iget-object p2, p1, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p2

    iget-wide v0, p4, Lcom/google/android/gms/measurement/internal/zzom;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p5, "[sgtm] Upload succeeded for row_id"

    invoke-virtual {p2, p5, p3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzlr;->zzb:Lcom/google/android/gms/measurement/internal/zzlr;

    goto :goto_0

    :cond_1
    iget-object p5, p1, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p5

    iget-wide v0, p4, Lcom/google/android/gms/measurement/internal/zzom;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "[sgtm] Upload failed for row_id. response, exception"

    invoke-virtual {p5, v2, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzfy;->zzt:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 p5, 0x0

    invoke-virtual {p3, p5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string p5, ","

    invoke-virtual {p3, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzlr;->zzd:Lcom/google/android/gms/measurement/internal/zzlr;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzlr;->zzc:Lcom/google/android/gms/measurement/internal/zzlr;

    :goto_0
    iget-object p0, p0, Lj15;->c:Ljava/io/Serializable;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p3, p1, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaf;

    iget-wide v1, p4, Lcom/google/android/gms/measurement/internal/zzom;->zza:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzlr;->zza()I

    move-result v3

    iget-wide v4, p4, Lcom/google/android/gms/measurement/internal/zzom;->zzf:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzaf;-><init>(JIJ)V

    invoke-virtual {p3}, Lmdb;->zzg()V

    invoke-virtual {p3}, Lqhb;->a()V

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/google/android/gms/measurement/internal/zznl;->j(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Lk7c;

    invoke-direct {p5, p3, p4, v0}, Lk7c;-><init>(Lcom/google/android/gms/measurement/internal/zznl;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzaf;)V

    invoke-virtual {p3, p5}, Lcom/google/android/gms/measurement/internal/zznl;->h(Ljava/lang/Runnable;)V

    iget-object p1, p1, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "[sgtm] Updated status for row_id"

    invoke-virtual {p1, p4, p3, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
