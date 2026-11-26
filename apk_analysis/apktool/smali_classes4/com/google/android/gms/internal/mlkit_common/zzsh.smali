.class public final Lcom/google/android/gms/internal/mlkit_common/zzsh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static i:Lcom/google/android/gms/internal/mlkit_common/zzaf;

.field public static final j:Lcom/google/android/gms/internal/mlkit_common/zzai;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/mlkit_common/zzrz;

.field public final d:Lxt7;

.field public final e:Lcom/google/android/gms/tasks/Task;

.field public final f:Lcom/google/android/gms/tasks/Task;

.field public final g:Ljava/lang/String;

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "optional-module-barcode"

    const-string v1, "com.google.android.gms.vision.barcode"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzai;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzai;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->j:Lcom/google/android/gms/internal/mlkit_common/zzai;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lxt7;Lcom/google/android/gms/internal/mlkit_common/zzrz;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->a:Ljava/lang/String;

    invoke-static {p1}, Lep1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->d:Lxt7;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->c:Lcom/google/android/gms/internal/mlkit_common/zzrz;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzsv;->zza()Lcom/google/android/gms/internal/mlkit_common/zzsv;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->g:Ljava/lang/String;

    invoke-static {}, Lly4;->a()Lly4;

    new-instance p3, Lcom/google/android/gms/internal/mlkit_common/zzse;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/mlkit_common/zzse;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzsh;)V

    invoke-static {p3}, Lly4;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->e:Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lly4;->a()Lly4;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/google/android/gms/internal/mlkit_common/zzsf;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/mlkit_common/zzsf;-><init>(Lxt7;)V

    invoke-static {p3}, Lly4;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->f:Lcom/google/android/gms/tasks/Task;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_common/zzsh;->j:Lcom/google/android/gms/internal/mlkit_common/zzai;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_common/zzai;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_common/zzai;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->h:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzqt;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzqt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzqt;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzqt;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzqt;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzqt;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzqt;

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzsh;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzsh;->i:Lcom/google/android/gms/internal/mlkit_common/zzaf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/zzac;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_common/zzac;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v4}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Lep1;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/mlkit_common/zzac;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzac;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_common/zzac;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzaf;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/mlkit_common/zzsh;->i:Lcom/google/android/gms/internal/mlkit_common/zzaf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzqt;->zzh(Lcom/google/android/gms/internal/mlkit_common/zzaf;)Lcom/google/android/gms/internal/mlkit_common/zzqt;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzqt;->zzg(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/zzqt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzqt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzqt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_common/zzqt;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzqt;

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->f:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->f:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->d:Lxt7;

    invoke-virtual {p1}, Lxt7;->a()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzqt;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzqt;

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzqt;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_common/zzqt;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzqt;->zzk(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_common/zzqt;

    return-object v0

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_common/zzry;Lcom/google/android/gms/internal/mlkit_common/zzmv;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->e:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->g:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lxlb;->zza:Lxlb;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzsd;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzsd;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzsh;Lcom/google/android/gms/internal/mlkit_common/zzry;Lcom/google/android/gms/internal/mlkit_common/zzmv;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lxlb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_common/zzry;Lz17;ZI)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzsj;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzsi;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzf(Z)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzd(Lsc5;)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzna;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzna;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zza(Lcom/google/android/gms/internal/mlkit_common/zzna;)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;->zzo:Lcom/google/android/gms/internal/mlkit_common/zzmu;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzmu;)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzc(I)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzsj;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/zzsh;->zzg(Lcom/google/android/gms/internal/mlkit_common/zzry;Lz17;Lcom/google/android/gms/internal/mlkit_common/zzsj;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_common/zzry;Lz17;Lcom/google/android/gms/internal/mlkit_common/zzmu;ZLsc5;Lcom/google/android/gms/internal/mlkit_common/zzna;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzsj;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzsi;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzf(Z)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzd(Lsc5;)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzmu;)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    invoke-virtual {v0, p6}, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zza(Lcom/google/android/gms/internal/mlkit_common/zzna;)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzsi;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzsj;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/zzsh;->zzg(Lcom/google/android/gms/internal/mlkit_common/zzry;Lz17;Lcom/google/android/gms/internal/mlkit_common/zzsj;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/mlkit_common/zzry;Lz17;Lcom/google/android/gms/internal/mlkit_common/zzsj;)V
    .locals 2

    sget-object v0, Lxlb;->zza:Lxlb;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzsg;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/internal/mlkit_common/zzsg;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzsh;Lcom/google/android/gms/internal/mlkit_common/zzry;Lcom/google/android/gms/internal/mlkit_common/zzsj;Lz17;)V

    invoke-virtual {v0, v1}, Lxlb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
