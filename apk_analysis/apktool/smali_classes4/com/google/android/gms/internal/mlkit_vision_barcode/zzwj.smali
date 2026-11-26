.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

.field public final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwj;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwj;->zzd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;->zzd()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;-><init>()V

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;

    const-class v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->k:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;
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

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-direct {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>()V

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v5}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {v5, v7}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Lep1;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->k:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    :goto_1
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;->zzh(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;->zzg(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->f:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->f:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->d:Lxt7;

    invoke-virtual {p0}, Lxt7;->a()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;

    const/16 p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;

    iget p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;->zzk(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvb;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwf;

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwf;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;)V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
