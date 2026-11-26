.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static j:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

.field public static final k:Lcom/google/android/gms/internal/mlkit_vision_common/zzr;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/mlkit_vision_common/zzmc;

.field public final d:Lxt7;

.field public final e:Lcom/google/android/gms/tasks/Task;

.field public final f:Lcom/google/android/gms/tasks/Task;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "optional-module-barcode"

    const-string v1, "com.google.android.gms.vision.barcode"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_common/zzr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->k:Lcom/google/android/gms/internal/mlkit_vision_common/zzr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lxt7;Lcom/google/android/gms/internal/mlkit_vision_common/zzmc;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->a:Ljava/lang/String;

    invoke-static {p1}, Lep1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->d:Lxt7;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzmc;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->g:Ljava/lang/String;

    invoke-static {}, Lly4;->a()Lly4;

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_common/zzmg;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;)V

    invoke-static {p3}, Lly4;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->e:Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lly4;->a()Lly4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_common/zzmh;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmh;-><init>(Lxt7;)V

    invoke-static {p3}, Lly4;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->f:Lcom/google/android/gms/tasks/Task;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->k:Lcom/google/android/gms/internal/mlkit_vision_common/zzr;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->h:I

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_common/zzmt;Lcom/google/android/gms/internal/mlkit_vision_common/zziv;)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->i:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmt;->zza:I

    iget v1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmt;->zzb:I

    iget v2, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmt;->zzc:I

    iget v3, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmt;->zzd:I

    iget v4, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmt;->zze:I

    iget-wide v5, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmt;->zzf:J

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmt;->zzg:I

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    invoke-direct {v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;-><init>()V

    const/4 v8, -0x1

    if-eq v0, v8, :cond_6

    const/16 v8, 0x23

    if-eq v0, v8, :cond_5

    const v8, 0x32315659

    if-eq v0, v8, :cond_4

    const/16 v8, 0x10

    if-eq v0, v8, :cond_3

    const/16 v8, 0x11

    if-eq v0, v8, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zze:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zzg:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    :goto_1
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzd(Lcom/google/android/gms/internal/mlkit_vision_common/zzii;)Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    const/4 v0, 0x1

    if-eq v1, v0, :cond_a

    const/4 v0, 0x2

    if-eq v1, v0, :cond_9

    const/4 v0, 0x3

    if-eq v1, v0, :cond_8

    const/4 v0, 0x4

    if-eq v1, v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzio;->zzf:Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzio;->zze:Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzio;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

    goto :goto_2

    :cond_9
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzio;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

    goto :goto_2

    :cond_a
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzio;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

    :goto_2
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzf(Lcom/google/android/gms/internal/mlkit_vision_common/zzio;)Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zze(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzg(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzb(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzh(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzj()Lcom/google/android/gms/internal/mlkit_vision_common/zziq;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zziw;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zziw;->zzd(Lcom/google/android/gms/internal/mlkit_vision_common/zziq;)Lcom/google/android/gms/internal/mlkit_vision_common/zziw;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;->zze(Lcom/google/android/gms/internal/mlkit_vision_common/zziw;)Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->e:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    sget-object v1, Lxlb;->zza:Lxlb;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;Lcom/google/android/gms/internal/mlkit_vision_common/zzmb;Lcom/google/android/gms/internal/mlkit_vision_common/zziv;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lxlb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
