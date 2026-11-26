.class public final Lh8c;
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

    iput-wide p2, p0, Lh8c;->b:J

    iput-object p1, p0, Lh8c;->c:Lcom/google/android/gms/measurement/internal/zzoc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lh8c;->c:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-virtual {v0}, Lmdb;->zzg()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzoc;->b()V

    iget-object v1, v0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Activity paused, time"

    iget-wide v8, p0, Lh8c;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzoc;->g:Lbm2;

    new-instance v4, Lm8c;

    iget-object p0, v5, Lbm2;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzoc;

    iget-object v2, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v4 .. v9}, Lm8c;-><init>(Lbm2;JJ)V

    iput-object v4, v5, Lbm2;->a:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzoc;->c:Lcom/google/android/gms/internal/measurement/zzcl;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->zzv()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzoc;->f:Lc9c;

    iget-object p0, p0, Lc9c;->c:Lq8c;

    invoke-virtual {p0}, Ltva;->c()V

    :cond_0
    return-void
.end method
