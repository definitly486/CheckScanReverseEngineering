.class public final Lz5c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/zzr;

.field public final synthetic e:Lcom/google/android/gms/internal/measurement/zzcs;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zznl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznl;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/internal/measurement/zzcs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz5c;->b:Ljava/lang/String;

    iput-object p3, p0, Lz5c;->c:Ljava/lang/String;

    iput-object p4, p0, Lz5c;->d:Lcom/google/android/gms/measurement/internal/zzr;

    iput-object p5, p0, Lz5c;->e:Lcom/google/android/gms/internal/measurement/zzcs;

    iput-object p1, p0, Lz5c;->f:Lcom/google/android/gms/measurement/internal/zznl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lz5c;->e:Lcom/google/android/gms/internal/measurement/zzcs;

    iget-object v1, p0, Lz5c;->c:Ljava/lang/String;

    iget-object v2, p0, Lz5c;->b:Ljava/lang/String;

    iget-object v3, p0, Lz5c;->f:Lcom/google/android/gms/measurement/internal/zznl;

    iget-object v4, v3, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zznl;->d:Lcom/google/android/gms/measurement/internal/zzgb;

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p0

    const-string v3, "Failed to get conditional properties; not connected to service"

    invoke-virtual {p0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object p0

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/measurement/internal/zzpp;->zzau(Lcom/google/android/gms/internal/measurement/zzcs;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    :try_start_1
    iget-object p0, p0, Lz5c;->d:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6, v2, v1, p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzr(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzpp;->zzav(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznl;->g()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    const-string v6, "Failed to get conditional properties; remote exception"

    invoke-virtual {v3, v6, v2, v1, p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/measurement/internal/zzpp;->zzau(Lcom/google/android/gms/internal/measurement/zzcs;Ljava/util/ArrayList;)V

    throw p0
.end method
