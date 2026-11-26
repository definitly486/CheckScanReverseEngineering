.class public final synthetic Ltv8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;


# static fields
.field public static final synthetic b:Ltv8;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ltv8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltv8;->b:Ltv8;

    return-void
.end method

.method public static final a(Lh64;Lsv8;)Ljt4;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lh64;->b:Ljava/time/Instant;

    iget-object p1, p1, Lsv8;->a:Ljava/time/ZoneId;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    new-instance p1, Ljt4;

    invoke-direct {p1, p0}, Ljt4;-><init>(Ljava/time/LocalDateTime;)V
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lkotlinx/datetime/DateTimeArithmeticException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b(Lcom/google/android/gms/internal/measurement/zzws;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zza()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Ltv8;->d(Lcom/google/android/gms/internal/measurement/zzws;)V

    return-void

    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    invoke-static {v0}, Ltv8;->b(Lcom/google/android/gms/internal/measurement/zzws;)V

    invoke-static {p0}, Ltv8;->d(Lcom/google/android/gms/internal/measurement/zzws;)V

    return-void
.end method

.method public static c(Lcom/google/android/gms/internal/measurement/zzws;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zza()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object p0

    invoke-static {p0}, Ltv8;->c(Lcom/google/android/gms/internal/measurement/zzws;)V

    return-void
.end method

.method public static d(Lcom/google/android/gms/internal/measurement/zzws;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zze()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvy;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzP()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
