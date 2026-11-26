.class public final synthetic Lk7c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zznl;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzr;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/zzaf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zznl;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzaf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7c;->b:Lcom/google/android/gms/measurement/internal/zznl;

    iput-object p2, p0, Lk7c;->c:Lcom/google/android/gms/measurement/internal/zzr;

    iput-object p3, p0, Lk7c;->d:Lcom/google/android/gms/measurement/internal/zzaf;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    iget-object v0, p0, Lk7c;->c:Lcom/google/android/gms/measurement/internal/zzr;

    iget-object v1, p0, Lk7c;->d:Lcom/google/android/gms/measurement/internal/zzaf;

    iget-object p0, p0, Lk7c;->b:Lcom/google/android/gms/measurement/internal/zznl;

    iget-object v2, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznl;->d:Lcom/google/android/gms/measurement/internal/zzgb;

    if-nez v3, :cond_0

    const-string p0, "[sgtm] Discarding data. Failed to update batch upload status."

    invoke-static {v2, p0}, Lu4;->e(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzC(Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzaf;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznl;->g()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-wide v1, v1, Lcom/google/android/gms/measurement/internal/zzaf;->zza:J

    const-string v3, "[sgtm] Failed to update batch upload status, rowId, exception"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1, p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
