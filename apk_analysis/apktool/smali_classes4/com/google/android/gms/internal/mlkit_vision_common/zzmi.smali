.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

.field public final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;Lcom/google/android/gms/internal/mlkit_vision_common/zziv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->zzd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;->zza(Lcom/google/android/gms/internal/mlkit_vision_common/zziv;)Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;->zzc()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;-><init>()V

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    const-class v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->j:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    monitor-exit v4

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;

    invoke-direct {v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;-><init>()V

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v5}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {v5, v7}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Lep1;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_common/zzm;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zzc()Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->j:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    :goto_1
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzh(Lcom/google/android/gms/internal/mlkit_vision_common/zzp;)Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzg(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->f:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->f:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->d:Lxt7;

    invoke-virtual {p0}, Lxt7;->a()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    const/16 p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    iget p0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzk(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzky;)Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzmc;

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmc;->zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;)V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
