.class public final Lcom/google/android/gms/internal/measurement/zzabo;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public static a(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-gez p1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    :cond_0
    const-string v0, ": "

    invoke-static {p2, v0}, Lfh;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "..."

    const/16 v1, 0x8

    if-le p0, v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p0, -0x5

    invoke-virtual {p2, p3, v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v2, 0x5b

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, p1

    if-le p0, v1, :cond_2

    add-int/lit8 p0, p1, 0x5

    invoke-virtual {p2, p3, p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2, p3, p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/measurement/zzabo;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzabo;

    invoke-static {p2, p3, p0, p1}, Lcom/google/android/gms/internal/measurement/zzabo;->a(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzabo;
    .locals 2

    add-int/lit8 v0, p2, 0x1

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzabo;

    invoke-static {p2, v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzabo;->a(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static zzc(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzabo;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzabo;

    const/4 v1, -0x1

    invoke-static {p2, v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzabo;->a(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzabo;
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzabo;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-object p0
.end method
