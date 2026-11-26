.class public final Lrqa;
.super Lcom/google/android/gms/internal/measurement/zzada;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public final d:I

.field public e:I

.field public final f:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzacj;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-object p1, p0, Lrqa;->f:Ljava/io/OutputStream;

    if-ltz p2, :cond_0

    const/16 p1, 0x14

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lrqa;->c:[B

    array-length p1, p1

    iput p1, p0, Lrqa;->d:I

    return-void

    :cond_0
    const-string p0, "bufferSize must be >= 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "out"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(I[B)V
    .locals 1

    invoke-virtual {p0, p1}, Lrqa;->zzr(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lrqa;->e([BII)V

    return-void
.end method

.method public final b(J)V
    .locals 10

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzada;->b:Z

    const/4 v1, 0x7

    iget-object v2, p0, Lrqa;->c:[B

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x80

    if-eqz v0, :cond_1

    :goto_0
    and-long v7, p1, v5

    cmp-long v0, v7, v3

    long-to-int v7, p1

    iget v8, p0, Lrqa;->e:I

    if-nez v0, :cond_0

    add-int/lit8 p1, v8, 0x1

    iput p1, p0, Lrqa;->e:I

    int-to-long p0, v8

    int-to-byte p2, v7

    invoke-static {v2, p0, p1, p2}, Leta;->j([BJB)V

    return-void

    :cond_0
    add-int/lit8 v0, v8, 0x1

    iput v0, p0, Lrqa;->e:I

    int-to-long v8, v8

    or-int/lit16 v0, v7, 0x80

    int-to-byte v0, v0

    invoke-static {v2, v8, v9, v0}, Leta;->j([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v7, p1, v5

    cmp-long v0, v7, v3

    long-to-int v7, p1

    iget v8, p0, Lrqa;->e:I

    if-nez v0, :cond_2

    add-int/lit8 p1, v8, 0x1

    iput p1, p0, Lrqa;->e:I

    int-to-byte p0, v7

    aput-byte p0, v2, v8

    return-void

    :cond_2
    add-int/lit8 v0, v8, 0x1

    iput v0, p0, Lrqa;->e:I

    or-int/lit16 v0, v7, 0x80

    int-to-byte v0, v0

    aput-byte v0, v2, v8

    ushr-long/2addr p1, v1

    goto :goto_1
.end method

.method public final c(I)V
    .locals 4

    iget v0, p0, Lrqa;->e:I

    add-int/lit8 v1, v0, 0x1

    int-to-byte v2, p1

    iget-object v3, p0, Lrqa;->c:[B

    aput-byte v2, v3, v0

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    shr-int/lit8 v1, p1, 0x10

    add-int/lit8 v2, v0, 0x2

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    shr-int/lit8 p1, p1, 0x18

    add-int/lit8 v1, v0, 0x3

    int-to-byte p1, p1

    aput-byte p1, v3, v1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lrqa;->e:I

    return-void
.end method

.method public final d(J)V
    .locals 6

    iget v0, p0, Lrqa;->e:I

    add-int/lit8 v1, v0, 0x1

    long-to-int v2, p1

    int-to-byte v2, v2

    iget-object v3, p0, Lrqa;->c:[B

    aput-byte v2, v3, v0

    const/16 v2, 0x8

    shr-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    const/16 v1, 0x10

    shr-long v4, p1, v1

    long-to-int v1, v4

    add-int/lit8 v4, v0, 0x2

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    const/16 v1, 0x18

    shr-long v4, p1, v1

    long-to-int v1, v4

    add-int/lit8 v4, v0, 0x3

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    const/16 v1, 0x20

    shr-long v4, p1, v1

    long-to-int v1, v4

    add-int/lit8 v4, v0, 0x4

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    const/16 v1, 0x28

    shr-long v4, p1, v1

    long-to-int v1, v4

    add-int/lit8 v4, v0, 0x5

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    const/16 v1, 0x30

    shr-long v4, p1, v1

    long-to-int v1, v4

    add-int/lit8 v4, v0, 0x6

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    add-int/lit8 p2, v0, 0x7

    int-to-byte p1, p1

    aput-byte p1, v3, p2

    add-int/2addr v0, v2

    iput v0, p0, Lrqa;->e:I

    return-void
.end method

.method public final e([BII)V
    .locals 4

    iget v0, p0, Lrqa;->e:I

    iget v1, p0, Lrqa;->d:I

    sub-int v2, v1, v0

    iget-object v3, p0, Lrqa;->c:[B

    if-lt v2, p3, :cond_0

    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lrqa;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lrqa;->e:I

    return-void

    :cond_0
    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    iput v1, p0, Lrqa;->e:I

    invoke-virtual {p0}, Lrqa;->g()V

    sub-int/2addr p3, v2

    if-gt p3, v1, :cond_1

    const/4 v0, 0x0

    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lrqa;->e:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lrqa;->f:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public final f(I)V
    .locals 2

    iget v0, p0, Lrqa;->d:I

    iget v1, p0, Lrqa;->e:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lrqa;->g()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 4

    iget v0, p0, Lrqa;->e:I

    iget-object v1, p0, Lrqa;->f:Ljava/io/OutputStream;

    iget-object v2, p0, Lrqa;->c:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lrqa;->e:I

    return-void
.end method

.method public final h(I)V
    .locals 4

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzada;->b:Z

    iget-object v1, p0, Lrqa;->c:[B

    if-eqz v0, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    iget v2, p0, Lrqa;->e:I

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lrqa;->e:I

    int-to-long v2, v2

    int-to-byte p0, p1

    invoke-static {v1, v2, v3, p0}, Leta;->j([BJB)V

    return-void

    :cond_0
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lrqa;->e:I

    int-to-long v2, v2

    or-int/lit16 v0, p1, 0x80

    int-to-byte v0, v0

    invoke-static {v1, v2, v3, v0}, Leta;->j([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    iget v2, p0, Lrqa;->e:I

    if-nez v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lrqa;->e:I

    int-to-byte p0, p1

    aput-byte p0, v1, v2

    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lrqa;->e:I

    or-int/lit16 v0, p1, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method public final zza([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lrqa;->e([BII)V

    return-void
.end method

.method public final zzb(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lrqa;->zzr(I)V

    return-void
.end method

.method public final zzc(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lrqa;->f(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lrqa;->h(I)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lrqa;->h(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lrqa;->b(J)V

    return-void
.end method

.method public final zzd(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lrqa;->f(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lrqa;->h(I)V

    invoke-virtual {p0, p2}, Lrqa;->h(I)V

    return-void
.end method

.method public final zze(II)V
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lrqa;->f(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lrqa;->h(I)V

    invoke-virtual {p0, p2}, Lrqa;->c(I)V

    return-void
.end method

.method public final zzf(IJ)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lrqa;->f(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lrqa;->h(I)V

    invoke-virtual {p0, p2, p3}, Lrqa;->b(J)V

    return-void
.end method

.method public final zzg(IJ)V
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lrqa;->f(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lrqa;->h(I)V

    invoke-virtual {p0, p2, p3}, Lrqa;->d(J)V

    return-void
.end method

.method public final zzh(IZ)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lrqa;->f(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lrqa;->h(I)V

    iget p1, p0, Lrqa;->e:I

    iget-object v0, p0, Lrqa;->c:[B

    aput-byte p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lrqa;->e:I

    return-void
.end method

.method public final zzi(ILjava/lang/String;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lrqa;->zzr(I)V

    invoke-virtual {p0, p2}, Lrqa;->zzw(Ljava/lang/String;)V

    return-void
.end method

.method public final zzj(ILcom/google/android/gms/internal/measurement/zzacr;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lrqa;->zzr(I)V

    invoke-virtual {p0, p2}, Lrqa;->zzk(Lcom/google/android/gms/internal/measurement/zzacr;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/measurement/zzacr;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v0

    invoke-virtual {p0, v0}, Lrqa;->zzr(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzacr;->d(Lcom/google/android/gms/internal/measurement/zzada;)V

    return-void
.end method

.method public final zzm(ILcom/google/android/gms/internal/measurement/zzafc;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lrqa;->zzr(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lrqa;->zzd(II)V

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lrqa;->zzr(I)V

    invoke-virtual {p0, p2}, Lrqa;->zzo(Lcom/google/android/gms/internal/measurement/zzafc;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lrqa;->zzr(I)V

    return-void
.end method

.method public final zzn(ILcom/google/android/gms/internal/measurement/zzacr;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lrqa;->zzr(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lrqa;->zzd(II)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p2}, Lrqa;->zzj(ILcom/google/android/gms/internal/measurement/zzacr;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lrqa;->zzr(I)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/measurement/zzafc;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcq()I

    move-result v0

    invoke-virtual {p0, v0}, Lrqa;->zzr(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcH(Lcom/google/android/gms/internal/measurement/zzada;)V

    return-void
.end method

.method public final zzp(B)V
    .locals 2

    iget v0, p0, Lrqa;->e:I

    iget v1, p0, Lrqa;->d:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lrqa;->g()V

    :cond_0
    iget v0, p0, Lrqa;->e:I

    iget-object v1, p0, Lrqa;->c:[B

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrqa;->e:I

    return-void
.end method

.method public final zzq(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lrqa;->zzr(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lrqa;->zzt(J)V

    return-void
.end method

.method public final zzr(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lrqa;->f(I)V

    invoke-virtual {p0, p1}, Lrqa;->h(I)V

    return-void
.end method

.method public final zzs(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lrqa;->f(I)V

    invoke-virtual {p0, p1}, Lrqa;->c(I)V

    return-void
.end method

.method public final zzt(J)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lrqa;->f(I)V

    invoke-virtual {p0, p1, p2}, Lrqa;->b(J)V

    return-void
.end method

.method public final zzu(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lrqa;->f(I)V

    invoke-virtual {p0, p1, p2}, Lrqa;->d(J)V

    return-void
.end method

.method public final zzw(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lrqa;->d:I

    if-le v2, v3, :cond_0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lgta;->c(Ljava/lang/String;[BII)I

    move-result p1

    invoke-virtual {p0, p1}, Lrqa;->zzr(I)V

    invoke-virtual {p0, v1, v2, p1}, Lrqa;->e([BII)V

    return-void

    :cond_0
    iget v0, p0, Lrqa;->e:I

    sub-int v0, v3, v0

    if-le v2, v0, :cond_1

    invoke-virtual {p0}, Lrqa;->g()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    iget v2, p0, Lrqa;->e:I

    iget-object v4, p0, Lrqa;->c:[B

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_0
    iput v1, p0, Lrqa;->e:I

    sub-int/2addr v3, v1

    invoke-static {p1, v4, v1, v3}, Lgta;->c(Ljava/lang/String;[BII)I

    move-result p1

    iput v2, p0, Lrqa;->e:I

    sub-int v1, p1, v2

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lrqa;->h(I)V

    iput p1, p0, Lrqa;->e:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lgta;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lrqa;->h(I)V

    iget v1, p0, Lrqa;->e:I

    invoke-static {p1, v4, v1, v0}, Lgta;->c(Ljava/lang/String;[BII)I

    move-result p1

    iput p1, p0, Lrqa;->e:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzacy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1
.end method

.method public final zzx()V
    .locals 1

    iget v0, p0, Lrqa;->e:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lrqa;->g()V

    :cond_0
    return-void
.end method

.method public final zzy()I
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
