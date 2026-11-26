.class public final Lj4c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/zzr;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/google/android/gms/internal/measurement/zzcs;

.field public final synthetic g:Lcom/google/android/gms/measurement/internal/zznl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznl;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;ZLcom/google/android/gms/internal/measurement/zzcs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lj4c;->b:Ljava/lang/String;

    iput-object p3, p0, Lj4c;->c:Ljava/lang/String;

    iput-object p4, p0, Lj4c;->d:Lcom/google/android/gms/measurement/internal/zzr;

    iput-boolean p5, p0, Lj4c;->e:Z

    iput-object p6, p0, Lj4c;->f:Lcom/google/android/gms/internal/measurement/zzcs;

    iput-object p1, p0, Lj4c;->g:Lcom/google/android/gms/measurement/internal/zznl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lj4c;->b:Ljava/lang/String;

    iget-object v1, p0, Lj4c;->f:Lcom/google/android/gms/internal/measurement/zzcs;

    iget-object v2, p0, Lj4c;->g:Lcom/google/android/gms/measurement/internal/zznl;

    iget-object v3, v2, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zznl;->d:Lcom/google/android/gms/measurement/internal/zzgb;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Lj4c;->c:Ljava/lang/String;

    if-nez v5, :cond_0

    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p0

    const-string v2, "Failed to get user properties; not connected to service"

    invoke-virtual {p0, v2, v0, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gms/measurement/internal/zzpp;->zzat(Lcom/google/android/gms/internal/measurement/zzcs;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_2
    iget-object v7, p0, Lj4c;->d:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p0, Lj4c;->e:Z

    invoke-interface {v5, v0, v6, p0, v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzr;)Ljava/util/List;

    move-result-object p0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzpl;

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzpl;->zze:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzpl;->zzd:Ljava/lang/Long;

    if-eqz v7, :cond_4

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzpl;->zzg:Ljava/lang/Double;

    if-eqz v7, :cond_2

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznl;->g()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object p0

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzpp;->zzat(Lcom/google/android/gms/internal/measurement/zzcs;Landroid/os/Bundle;)V

    return-void

    :catchall_1
    move-exception p0

    move-object v4, v5

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v4, v5

    :goto_2
    :try_start_4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v5, "Failed to get user properties; remote exception"

    invoke-virtual {v2, v5, v0, p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gms/measurement/internal/zzpp;->zzat(Lcom/google/android/gms/internal/measurement/zzcs;Landroid/os/Bundle;)V

    return-void

    :goto_3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/zzpp;->zzat(Lcom/google/android/gms/internal/measurement/zzcs;Landroid/os/Bundle;)V

    throw p0
.end method
