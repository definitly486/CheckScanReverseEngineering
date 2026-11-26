.class public final Lcom/google/android/gms/internal/measurement/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaga;->zza()Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaga;->a()Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    :cond_0
    return-object v0
.end method

.method public static b(ILjava/lang/Object;Lpqa;)Z
    .locals 8

    iget-object v0, p2, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    iget v1, p2, Lpqa;->b:I

    ushr-int/lit8 v2, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v1, :cond_a

    if-eq v1, v4, :cond_9

    const/4 v6, 0x2

    if-eq v1, v6, :cond_8

    const-string v6, "Protocol message end-group tag did not match expected tag."

    if-eq v1, v5, :cond_3

    const/4 v7, 0x4

    if-eq v1, v7, :cond_1

    const/4 p0, 0x5

    if-ne v1, p0, :cond_0

    invoke-virtual {p2, p0}, Lpqa;->q(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzj()I

    move-result p2

    shl-int/lit8 v0, v2, 0x3

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaga;

    or-int/2addr p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzaga;->b(ILjava/lang/Object;)V

    return v4

    :cond_0
    invoke-static {}, Ljh;->c()V

    return v3

    :cond_1
    if-eqz p0, :cond_2

    return v3

    :cond_2
    invoke-static {v6}, Lxg;->e(Ljava/lang/String;)V

    return v3

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaga;->a()Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0

    shl-int/lit8 v1, v2, 0x3

    add-int/2addr p0, v4

    const/16 v2, 0x64

    if-ge p0, v2, :cond_7

    :cond_4
    invoke-virtual {p2}, Lpqa;->x()I

    move-result v2

    const v7, 0x7fffffff

    if-eq v2, v7, :cond_5

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/g;->b(ILjava/lang/Object;Lpqa;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_5
    or-int/lit8 p0, v1, 0x4

    iget p2, p2, Lpqa;->b:I

    if-ne p0, p2, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaga;->zzd()V

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaga;

    or-int/lit8 p0, v1, 0x3

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzaga;->b(ILjava/lang/Object;)V

    return v4

    :cond_6
    invoke-static {v6}, Lxg;->e(Ljava/lang/String;)V

    return v3

    :cond_7
    const-string p0, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-static {p0}, Lxg;->e(Ljava/lang/String;)V

    return v3

    :cond_8
    invoke-virtual {p2}, Lpqa;->y()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object p0

    shl-int/lit8 p2, v2, 0x3

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaga;

    or-int/2addr p2, v6

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/measurement/zzaga;->b(ILjava/lang/Object;)V

    return v4

    :cond_9
    invoke-virtual {p2, v4}, Lpqa;->q(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzi()J

    move-result-wide v0

    shl-int/lit8 p0, v2, 0x3

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaga;

    or-int/2addr p0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzaga;->b(ILjava/lang/Object;)V

    return v4

    :cond_a
    invoke-virtual {p2, v3}, Lpqa;->q(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzg()J

    move-result-wide v0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaga;

    shl-int/lit8 p0, v2, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzaga;->b(ILjava/lang/Object;)V

    return v4
.end method
