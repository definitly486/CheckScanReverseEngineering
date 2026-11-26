.class public final Lqqa;
.super Lcom/google/android/gms/internal/measurement/zzada;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public final d:I

.field public e:I


# direct methods
.method public constructor <init>([BI)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzacj;-><init>()V

    array-length v0, p1

    sub-int v1, v0, p2

    or-int/2addr v1, p2

    if-ltz v1, :cond_0

    iput-object p1, p0, Lqqa;->c:[B

    const/4 p1, 0x0

    iput p1, p0, Lqqa;->e:I

    iput p2, p0, Lqqa;->d:I

    return-void

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p0, "Array range is invalid. Buffer.length="

    const-string p1, ", offset=0, length="

    invoke-static {v0, p2, p0, p1}, Lrz0;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(I[B)V
    .locals 1

    invoke-virtual {p0, p1}, Lqqa;->zzr(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lqqa;->b([BII)V

    return-void
.end method

.method public final b([BII)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lqqa;->c:[B

    iget v1, p0, Lqqa;->e:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p0, Lqqa;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lqqa;->e:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v6, p1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzacy;

    iget p1, p0, Lqqa;->e:I

    int-to-long v1, p1

    iget p0, p0, Lqqa;->d:I

    int-to-long v3, p0

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final zza([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lqqa;->b([BII)V

    return-void
.end method

.method public final zzb(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lqqa;->zzr(I)V

    return-void
.end method

.method public final zzc(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lqqa;->zzr(I)V

    invoke-virtual {p0, p2}, Lqqa;->zzq(I)V

    return-void
.end method

.method public final zzd(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lqqa;->zzr(I)V

    invoke-virtual {p0, p2}, Lqqa;->zzr(I)V

    return-void
.end method

.method public final zze(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lqqa;->zzr(I)V

    invoke-virtual {p0, p2}, Lqqa;->zzs(I)V

    return-void
.end method

.method public final zzf(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lqqa;->zzr(I)V

    invoke-virtual {p0, p2, p3}, Lqqa;->zzt(J)V

    return-void
.end method

.method public final zzg(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lqqa;->zzr(I)V

    invoke-virtual {p0, p2, p3}, Lqqa;->zzu(J)V

    return-void
.end method

.method public final zzh(IZ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lqqa;->zzr(I)V

    invoke-virtual {p0, p2}, Lqqa;->zzp(B)V

    return-void
.end method

.method public final zzi(ILjava/lang/String;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lqqa;->zzr(I)V

    invoke-virtual {p0, p2}, Lqqa;->zzw(Ljava/lang/String;)V

    return-void
.end method

.method public final zzj(ILcom/google/android/gms/internal/measurement/zzacr;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lqqa;->zzr(I)V

    invoke-virtual {p0, p2}, Lqqa;->zzk(Lcom/google/android/gms/internal/measurement/zzacr;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/measurement/zzacr;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v0

    invoke-virtual {p0, v0}, Lqqa;->zzr(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzacr;->d(Lcom/google/android/gms/internal/measurement/zzada;)V

    return-void
.end method

.method public final zzm(ILcom/google/android/gms/internal/measurement/zzafc;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lqqa;->zzr(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lqqa;->zzd(II)V

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lqqa;->zzr(I)V

    invoke-virtual {p0, p2}, Lqqa;->zzo(Lcom/google/android/gms/internal/measurement/zzafc;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lqqa;->zzr(I)V

    return-void
.end method

.method public final zzn(ILcom/google/android/gms/internal/measurement/zzacr;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lqqa;->zzr(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lqqa;->zzd(II)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p2}, Lqqa;->zzj(ILcom/google/android/gms/internal/measurement/zzacr;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lqqa;->zzr(I)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/measurement/zzafc;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcq()I

    move-result v0

    invoke-virtual {p0, v0}, Lqqa;->zzr(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcH(Lcom/google/android/gms/internal/measurement/zzada;)V

    return-void
.end method

.method public final zzp(B)V
    .locals 9

    iget v1, p0, Lqqa;->e:I

    :try_start_0
    iget-object v0, p0, Lqqa;->c:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v1, 0x1

    :try_start_1
    aput-byte p1, v0, v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    iput v2, p0, Lqqa;->e:I

    return-void

    :catch_0
    move-exception v0

    move v1, v2

    :goto_0
    move-object p1, v0

    move-object v8, p1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzacy;

    int-to-long v3, v1

    iget p0, p0, Lqqa;->d:I

    int-to-long v5, p0

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v2
.end method

.method public final zzq(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lqqa;->zzr(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lqqa;->zzt(J)V

    return-void
.end method

.method public final zzr(I)V
    .locals 9

    iget v0, p0, Lqqa;->e:I

    :goto_0
    and-int/lit8 v1, p1, -0x80

    iget-object v2, p0, Lqqa;->c:[B

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    int-to-byte p1, p1

    :try_start_0
    aput-byte p1, v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iput v1, p0, Lqqa;->e:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    :try_start_1
    aput-byte v3, v2, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    move v0, v1

    goto :goto_0

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzacy;

    int-to-long v3, v1

    iget p0, p0, Lqqa;->d:I

    int-to-long v5, p0

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v2
.end method

.method public final zzs(I)V
    .locals 9

    iget v1, p0, Lqqa;->e:I

    :try_start_0
    iget-object v0, p0, Lqqa;->c:[B

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lqqa;->e:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    int-to-long v3, v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzacy;

    iget p0, p0, Lqqa;->d:I

    int-to-long v5, p0

    const/4 v7, 0x4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v2
.end method

.method public final zzt(J)V
    .locals 10

    iget v0, p0, Lqqa;->e:I

    const/4 v1, 0x7

    iget-object v2, p0, Lqqa;->c:[B

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x80

    iget v7, p0, Lqqa;->d:I

    sget-boolean v8, Lcom/google/android/gms/internal/measurement/zzada;->b:Z

    if-eqz v8, :cond_1

    sub-int v8, v7, v0

    const/16 v9, 0xa

    if-lt v8, v9, :cond_1

    :goto_0
    and-long v7, p1, v5

    cmp-long v7, v7, v3

    if-nez v7, :cond_0

    add-int/lit8 v1, v0, 0x1

    int-to-long v3, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v2, v3, v4, p1}, Leta;->j([BJB)V

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v0, 0x1

    int-to-long v8, v0

    long-to-int v0, p1

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v2, v8, v9, v0}, Leta;->j([BJB)V

    ushr-long/2addr p1, v1

    move v0, v7

    goto :goto_0

    :cond_1
    :goto_1
    and-long v8, p1, v5

    cmp-long v8, v8, v3

    if-nez v8, :cond_2

    add-int/lit8 v1, v0, 0x1

    long-to-int p1, p1

    int-to-byte p1, p1

    :try_start_0
    aput-byte p1, v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput v1, p0, Lqqa;->e:I

    return-void

    :catch_0
    move-exception v0

    :goto_3
    move-object p0, v0

    move-object v6, p0

    goto :goto_4

    :cond_2
    add-int/lit8 v8, v0, 0x1

    long-to-int v9, p1

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    :try_start_1
    aput-byte v9, v2, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    ushr-long/2addr p1, v1

    move v0, v8

    goto :goto_1

    :catch_1
    move-exception v0

    move v1, v8

    goto :goto_3

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzacy;

    int-to-long v1, v1

    int-to-long v3, v7

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final zzu(J)V
    .locals 9

    iget v1, p0, Lqqa;->e:I

    :try_start_0
    iget-object v0, p0, Lqqa;->c:[B

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x8

    shr-long v4, p1, v3

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x2

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x4

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x5

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x6

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x7

    const/16 v4, 0x38

    shr-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v3

    iput v1, p0, Lqqa;->e:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    int-to-long v3, v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzacy;

    iget p0, p0, Lqqa;->d:I

    int-to-long v5, p0

    const/16 v7, 0x8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v2
.end method

.method public final zzw(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lqqa;->e:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lqqa;->c:[B

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    :try_start_1
    iput v1, p0, Lqqa;->e:I

    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Lgta;->c(Ljava/lang/String;[BII)I

    move-result p1

    iput v0, p0, Lqqa;->e:I

    sub-int v0, p1, v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lqqa;->zzr(I)V

    iput p1, p0, Lqqa;->e:I

    return-void

    :cond_0
    invoke-static {p1}, Lgta;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lqqa;->zzr(I)V

    iget v0, p0, Lqqa;->e:I

    array-length v1, v3

    sub-int/2addr v1, v0

    invoke-static {p1, v3, v0, v1}, Lgta;->c(Ljava/lang/String;[BII)I

    move-result p1

    iput p1, p0, Lqqa;->e:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzacy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1
.end method

.method public final zzx()V
    .locals 0

    return-void
.end method

.method public final zzy()I
    .locals 1

    iget v0, p0, Lqqa;->d:I

    iget p0, p0, Lqqa;->e:I

    sub-int/2addr v0, p0

    return v0
.end method
