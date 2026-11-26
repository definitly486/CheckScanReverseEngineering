.class public final Lbfb;
.super Lmfb;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>([BII)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzfp;-><init>()V

    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfp;->i(III)I

    iput-object p1, p0, Lbfb;->c:[B

    iput p2, p0, Lbfb;->d:I

    iput p3, p0, Lbfb;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    iget-object v0, p0, Lbfb;->c:[B

    iget p0, p0, Lbfb;->d:I

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method public final b(II)I
    .locals 1

    iget-object v0, p0, Lbfb;->c:[B

    iget p0, p0, Lbfb;->d:I

    invoke-static {p1, p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgv;->a(III[B)I

    move-result p0

    return p0
.end method

.method public final d(I[B)V
    .locals 2

    iget v0, p0, Lbfb;->d:I

    const/4 v1, 0x0

    iget-object p0, p0, Lbfb;->c:[B

    invoke-static {p0, v0, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final f(Lngb;)V
    .locals 2

    iget v0, p0, Lbfb;->d:I

    iget v1, p0, Lbfb;->e:I

    iget-object p0, p0, Lbfb;->c:[B

    invoke-virtual {p1, p0, v0, v1}, Lngb;->b([BII)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/play_billing/zzfp;)Z
    .locals 5

    instance-of v0, p1, Lqfb;

    if-nez v0, :cond_1

    instance-of v1, p1, Lbfb;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->g(Lcom/google/android/gms/internal/play_billing/zzfp;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v1

    iget v2, p0, Lbfb;->e:I

    if-gt v2, v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v1

    const/4 v3, 0x0

    if-gt v2, v1, :cond_4

    iget-object v1, p0, Lbfb;->c:[B

    iget v4, p0, Lbfb;->d:I

    if-eqz v0, :cond_2

    check-cast p1, Lqfb;

    iget-object p0, p1, Lqfb;->c:[B

    invoke-static {v4, v3, v2, v1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->j(III[B[B)Z

    move-result p0

    return p0

    :cond_2
    instance-of v0, p1, Lbfb;

    if-eqz v0, :cond_3

    check-cast p1, Lbfb;

    iget-object p0, p1, Lbfb;->c:[B

    iget p1, p1, Lbfb;->d:I

    invoke-static {v4, p1, v2, v1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->j(III[B[B)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/play_billing/zzfp;->zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object p1

    add-int/2addr v2, v4

    invoke-virtual {p0, v4, v2}, Lbfb;->zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result p0

    const-string p1, "Ran off end of other: 0, "

    const-string v0, ", "

    invoke-static {v2, p0, p1, v0}, Lrz0;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return v3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Length too large: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzd()I
    .locals 0

    iget p0, p0, Lbfb;->e:I

    return p0
.end method

.method public final zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;
    .locals 1

    iget v0, p0, Lbfb;->e:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzfp;->i(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    return-object p0

    :cond_0
    iget v0, p0, Lbfb;->d:I

    add-int/2addr v0, p1

    new-instance p1, Lbfb;

    iget-object p0, p0, Lbfb;->c:[B

    invoke-direct {p1, p0, v0, p2}, Lbfb;-><init>([BII)V

    return-object p1
.end method
