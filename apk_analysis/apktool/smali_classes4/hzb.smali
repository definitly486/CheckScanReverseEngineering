.class public final Lhzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzlj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzlj;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lhzb;->b:J

    iput-object p1, p0, Lhzb;->c:Lcom/google/android/gms/measurement/internal/zzlj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lhzb;->c:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-virtual {v0}, Lmdb;->zzg()V

    invoke-virtual {v0}, Lqhb;->a()V

    iget-object v1, v0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Resetting analytics data (FE)"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzh()Lcom/google/android/gms/measurement/internal/zzoc;

    move-result-object v2

    invoke-virtual {v2}, Lmdb;->zzg()V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzoc;->f:Lc9c;

    iget-object v3, v2, Lc9c;->c:Lq8c;

    invoke-virtual {v3}, Ltva;->c()V

    iget-object v3, v2, Lc9c;->d:Lcom/google/android/gms/measurement/internal/zzoc;

    iget-object v3, v3, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lc9c;->a:J

    iput-wide v3, v2, Lc9c;->b:J

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->c()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzB()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzd()Lhnb;

    move-result-object v3

    iget-object v4, v3, Lhnb;->f:Lcom/google/android/gms/measurement/internal/zzhe;

    iget-wide v5, p0, Lhzb;->b:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    iget-object p0, v3, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzd()Lhnb;

    move-result-object v4

    iget-object v4, v4, Lhnb;->v:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhg;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    iget-object v4, v3, Lhnb;->v:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;)V

    :cond_0
    iget-object v4, v3, Lhnb;->p:Lcom/google/android/gms/measurement/internal/zzhe;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    iget-object v4, v3, Lhnb;->q:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->zzt()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v3, v2}, Lhnb;->h(Z)V

    :cond_1
    iget-object p0, v3, Lhnb;->w:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {p0, v5}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;)V

    iget-object p0, v3, Lhnb;->x:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {p0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    iget-object p0, v3, Lhnb;->y:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {p0, v5}, Lcom/google/android/gms/measurement/internal/zzhd;->zzb(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object p0

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lqhb;->a()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zznl;->j(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznl;->f()V

    iget-object v4, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzm()Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgl;->zzh()V

    new-instance v4, Lt4c;

    invoke-direct {v4, p0, v3}, Lt4c;-><init>(Lcom/google/android/gms/measurement/internal/zznl;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/measurement/internal/zznl;->h(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzh()Lcom/google/android/gms/measurement/internal/zzoc;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzoc;->e:Lf9c;

    invoke-virtual {p0}, Lf9c;->a()V

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzlj;->r:Z

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object p0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zznl;->zzC(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
