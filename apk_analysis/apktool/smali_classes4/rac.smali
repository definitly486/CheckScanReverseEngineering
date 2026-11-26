.class public final Lrac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzpg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzpg;Lcom/google/android/gms/measurement/internal/zzph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrac;->b:Lcom/google/android/gms/measurement/internal/zzpg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object p0, p0, Lrac;->b:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaX()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->zzg()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzhk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzhk;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->k:Lcom/google/android/gms/measurement/internal/zzhk;

    new-instance v0, Lkva;

    invoke-direct {v0, p0}, Lkva;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    invoke-virtual {v0}, Llac;->zzaz()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->c:Lkva;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->a:Lcom/google/android/gms/measurement/internal/zzht;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyta;

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzal;->d:Lyta;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zznn;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    invoke-virtual {v0}, Llac;->zzaz()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->i:Lcom/google/android/gms/measurement/internal/zznn;

    new-instance v0, Lzqa;

    invoke-direct {v0, p0}, Llac;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    invoke-virtual {v0}, Llac;->zzaz()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->f:Lzqa;

    new-instance v0, Lx2c;

    invoke-direct {v0, p0}, Llac;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    invoke-virtual {v0}, Llac;->zzaz()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->h:Lx2c;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzok;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    invoke-virtual {v0}, Llac;->zzaz()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->e:Lcom/google/android/gms/measurement/internal/zzok;

    new-instance v0, Lmmb;

    invoke-direct {v0, p0}, Lmmb;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->d:Lmmb;

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->r:I

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->s:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Not all upload components initialized"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "UploadController is now fully initialized"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaX()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->zzg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lkva;

    move-result-object v0

    invoke-virtual {v0}, Lkva;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lkva;

    move-result-object v0

    invoke-virtual {v0}, Ljvb;->zzg()V

    invoke-virtual {v0}, Llac;->a()V

    invoke-virtual {v0}, Lkva;->I()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzfy;->zzau:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lkva;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iget-object v0, v0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "trigger_uris"

    const-string v6, "abs(timestamp_millis - ?) > cast(? as integer)"

    invoke-virtual {v5, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v4, "Deleted stale trigger uris. rowsDeleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->i:Lcom/google/android/gms/measurement/internal/zznn;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznn;->zzd:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zza()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->i:Lcom/google/android/gms/measurement/internal/zznn;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznn;->zzd:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->H()V

    return-void
.end method
