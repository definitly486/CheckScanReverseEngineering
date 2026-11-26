.class public final Lcom/google/android/gms/internal/measurement/zzadq;
.super Lcom/google/android/gms/internal/measurement/zzacd;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzadu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzadu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzacd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzadq;->a:Lcom/google/android/gms/internal/measurement/zzadu;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/measurement/zzacv;Lcom/google/android/gms/internal/measurement/zzadf;)Ljava/lang/Object;
    .locals 2

    sget v0, Lcom/google/android/gms/internal/measurement/zzadu;->zzd:I

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadq;->a:Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadu;->e()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p0

    :try_start_0
    sget-object v0, Lksa;->c:Lksa;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzacv;->c:Lpqa;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lpqa;

    invoke-direct {v1, p1}, Lpqa;-><init>(Lcom/google/android/gms/internal/measurement/zzacv;)V

    :goto_0
    invoke-interface {v0, p0, v1, p2}, Lnsa;->b(Ljava/lang/Object;Lpqa;Lcom/google/android/gms/internal/measurement/zzadf;)V

    invoke-interface {v0, p0}, Lnsa;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzaeh; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/measurement/zzafy; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaeh;

    throw p0

    :cond_1
    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaeh;

    throw p0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzafy;->zza()Lcom/google/android/gms/internal/measurement/zzaeh;

    move-result-object p0

    throw p0

    :catch_3
    move-exception p0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzaeh;->b:Z

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_3
    throw p0
.end method
