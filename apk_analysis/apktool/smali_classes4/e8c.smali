.class public final Le8c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzoc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzoc;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Le8c;->b:J

    iput-object p1, p0, Le8c;->c:Lcom/google/android/gms/measurement/internal/zzoc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Le8c;->c:Lcom/google/android/gms/measurement/internal/zzoc;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzoc;->f:Lc9c;

    invoke-virtual {v0}, Lmdb;->zzg()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzoc;->b()V

    iget-object v2, v0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    const-string v4, "Activity resumed, time"

    iget-wide v5, p0, Le8c;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzfy;->zzaS:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->zzv()Z

    move-result p0

    if-nez p0, :cond_0

    iget-boolean p0, v0, Lcom/google/android/gms/measurement/internal/zzoc;->d:Z

    if-eqz p0, :cond_3

    :cond_0
    iget-object p0, v1, Lc9c;->d:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-virtual {p0}, Lmdb;->zzg()V

    iget-object p0, v1, Lc9c;->c:Lq8c;

    invoke-virtual {p0}, Ltva;->c()V

    iput-wide v5, v1, Lc9c;->a:J

    iput-wide v5, v1, Lc9c;->b:J

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->zzv()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzd()Lhnb;

    move-result-object p0

    iget-object p0, p0, Lhnb;->s:Lcom/google/android/gms/measurement/internal/zzhc;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    iget-object p0, v1, Lc9c;->d:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-virtual {p0}, Lmdb;->zzg()V

    iget-object p0, v1, Lc9c;->c:Lq8c;

    invoke-virtual {p0}, Ltva;->c()V

    iput-wide v5, v1, Lc9c;->a:J

    iput-wide v5, v1, Lc9c;->b:J

    :cond_3
    :goto_0
    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzoc;->g:Lbm2;

    iget-object v1, p0, Lbm2;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-virtual {v1}, Lmdb;->zzg()V

    iget-object p0, p0, Lbm2;->a:Ljava/lang/Object;

    check-cast p0, Lm8c;

    if-eqz p0, :cond_4

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzoc;->c:Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    iget-object p0, v1, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzd()Lhnb;

    move-result-object p0

    iget-object p0, p0, Lhnb;->s:Lcom/google/android/gms/measurement/internal/zzhc;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Z)V

    invoke-virtual {v1}, Lmdb;->zzg()V

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzoc;->d:Z

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzoc;->e:Lf9c;

    iget-object v0, p0, Lf9c;->a:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-virtual {v0}, Lmdb;->zzg()V

    iget-object v0, v0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzB()Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->zzbe:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    goto :goto_1

    :cond_6
    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {p0, v1, v2, v3, v4}, Lf9c;->b(JJ)V

    return-void
.end method
