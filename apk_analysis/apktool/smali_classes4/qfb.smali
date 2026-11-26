.class public final Lqfb;
.super Lmfb;
.source "SourceFile"


# instance fields
.field public final c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzfp;-><init>()V

    iput-object p1, p0, Lqfb;->c:[B

    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 0

    iget-object p0, p0, Lqfb;->c:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public final b(II)I
    .locals 1

    iget-object p0, p0, Lqfb;->c:[B

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p0}, Lcom/google/android/gms/internal/play_billing/zzgv;->a(III[B)I

    move-result p0

    return p0
.end method

.method public final d(I[B)V
    .locals 1

    iget-object p0, p0, Lqfb;->c:[B

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final f(Lngb;)V
    .locals 2

    iget-object p0, p0, Lqfb;->c:[B

    array-length v0, p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lngb;->b([BII)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/play_billing/zzfp;)Z
    .locals 7

    instance-of v0, p1, Lqfb;

    iget-object v1, p0, Lqfb;->c:[B

    if-eqz v0, :cond_0

    check-cast p1, Lqfb;

    iget-object p0, p1, Lqfb;->c:[B

    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_0
    instance-of v2, p1, Lbfb;

    if-eqz v2, :cond_5

    move-object v3, p1

    check-cast v3, Lbfb;

    iget v4, v3, Lbfb;->e:I

    array-length v5, v1

    if-gt v5, v4, :cond_4

    const/4 v6, 0x0

    if-gt v5, v4, :cond_3

    if-eqz v0, :cond_1

    check-cast p1, Lqfb;

    iget-object p0, p1, Lqfb;->c:[B

    invoke-static {v6, v6, v5, v1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->j(III[B[B)Z

    move-result p0

    return p0

    :cond_1
    if-eqz v2, :cond_2

    iget-object p0, v3, Lbfb;->c:[B

    iget p1, v3, Lbfb;->d:I

    invoke-static {v6, p1, v5, v1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->j(III[B[B)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1, v6, v5}, Lcom/google/android/gms/internal/play_billing/zzfp;->zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object p1

    invoke-virtual {p0, v6, v5}, Lqfb;->zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    const-string p0, "Ran off end of other: 0, "

    const-string p1, ", "

    invoke-static {v5, v4, p0, p1}, Lrz0;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return v6

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Length too large: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->g(Lcom/google/android/gms/internal/play_billing/zzfp;)Z

    move-result p0

    return p0
.end method

.method public final zzd()I
    .locals 0

    iget-object p0, p0, Lqfb;->c:[B

    array-length p0, p0

    return p0
.end method

.method public final zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;
    .locals 1

    iget-object p0, p0, Lqfb;->c:[B

    array-length p1, p0

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->i(III)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    return-object p0

    :cond_0
    new-instance p2, Lbfb;

    invoke-direct {p2, p0, v0, p1}, Lbfb;-><init>([BII)V

    return-object p2
.end method
