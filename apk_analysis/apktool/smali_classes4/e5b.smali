.class public final Le5b;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>([BI)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcx;-><init>()V

    array-length v0, p1

    sub-int v1, v0, p2

    or-int/2addr v1, p2

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iput-object p1, p0, Le5b;->d:[B

    iput v2, p0, Le5b;->f:I

    iput p2, p0, Le5b;->e:I

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, p0}, Lnz0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Ljib;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;->a(Ljib;)I

    move-result p1

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->a:Ld6b;

    invoke-interface {p3, p2, p0}, Ljib;->g(Ljava/lang/Object;Lgnb;)V

    return-void
.end method

.method public final b([BII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Le5b;->d:[B

    iget v1, p0, Le5b;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Le5b;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Le5b;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;

    iget v0, p0, Le5b;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Le5b;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v0, p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Le5b;->e:I

    iget p0, p0, Le5b;->f:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final zzb(B)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Le5b;->d:[B

    iget v1, p0, Le5b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le5b;->f:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;

    iget v1, p0, Le5b;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Le5b;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final zzd(IZ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    invoke-virtual {p0, p2}, Le5b;->zzb(B)V

    return-void
.end method

.method public final zze(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result p1

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->m(Le5b;)V

    return-void
.end method

.method public final zzf(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    invoke-virtual {p0, p2}, Le5b;->zzg(I)V

    return-void
.end method

.method public final zzg(I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Le5b;->d:[B

    iget v1, p0, Le5b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le5b;->f:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Le5b;->f:I

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Le5b;->f:I

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Le5b;->f:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;

    iget v1, p0, Le5b;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Le5b;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final zzh(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    invoke-virtual {p0, p2, p3}, Le5b;->zzi(J)V

    return-void
.end method

.method public final zzi(J)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Le5b;->d:[B

    iget v1, p0, Le5b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le5b;->f:I

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Le5b;->f:I

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Le5b;->f:I

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x4

    iput v3, p0, Le5b;->f:I

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x5

    iput v2, p0, Le5b;->f:I

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x6

    iput v3, p0, Le5b;->f:I

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x7

    iput v2, p0, Le5b;->f:I

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/2addr v1, v4

    iput v1, p0, Le5b;->f:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;

    iget v0, p0, Le5b;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Le5b;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final zzj(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    invoke-virtual {p0, p2}, Le5b;->zzk(I)V

    return-void
.end method

.method public final zzk(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Le5b;->zzv(J)V

    return-void
.end method

.method public final zzl([BII)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Le5b;->b([BII)V

    return-void
.end method

.method public final zzn(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Le5b;->zzt(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Le5b;->zzs(II)V

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;->zzF()I

    move-result p1

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;->zzab(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    return-void
.end method

.method public final zzo(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Le5b;->zzt(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Le5b;->zzs(II)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p2}, Le5b;->zze(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    return-void
.end method

.method public final zzp(ILjava/lang/String;)V
    .locals 7

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    iget p1, p0, Le5b;->f:I

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v1
    :try_end_0
    .catch Ltmb; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    iget v2, p0, Le5b;->e:I

    iget-object v3, p0, Le5b;->d:[B

    if-ne v1, v0, :cond_0

    add-int v0, p1, v1

    :try_start_1
    iput v0, p0, Le5b;->f:I

    sub-int/2addr v2, v0

    invoke-static {p2, v3, v0, v2}, Lwmb;->b(Ljava/lang/String;[BII)I

    move-result v0

    iput p1, p0, Le5b;->f:I

    sub-int v2, v0, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Le5b;->zzt(I)V

    iput v0, p0, Le5b;->f:I

    return-void

    :catch_0
    move-exception v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lwmb;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Le5b;->zzt(I)V

    iget v0, p0, Le5b;->f:I

    sub-int/2addr v2, v0

    invoke-static {p2, v3, v0, v2}, Lwmb;->b(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, p0, Le5b;->f:I
    :try_end_1
    .catch Ltmb; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1

    :goto_0
    iput p1, p0, Le5b;->f:I

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "inefficientWriteStringNoTag"

    const-string v5, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->b:Ljava/util/logging/Logger;

    const-string v3, "com.google.protobuf.CodedOutputStream"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_2
    array-length p2, p1

    invoke-virtual {p0, p2}, Le5b;->zzt(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Le5b;->b([BII)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1
.end method

.method public final zzr(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    return-void
.end method

.method public final zzs(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    invoke-virtual {p0, p2}, Le5b;->zzt(I)V

    return-void
.end method

.method public final zzt(I)V
    .locals 3

    :goto_0
    and-int/lit8 v0, p1, -0x80

    iget v1, p0, Le5b;->f:I

    iget-object v2, p0, Le5b;->d:[B

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    :try_start_0
    iput v0, p0, Le5b;->f:I

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Le5b;->f:I

    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;

    iget v1, p0, Le5b;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Le5b;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final zzu(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Le5b;->zzt(I)V

    invoke-virtual {p0, p2, p3}, Le5b;->zzv(J)V

    return-void
.end method

.method public final zzv(J)V
    .locals 12

    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->c:Z

    const/4 v1, 0x7

    iget-object v2, p0, Le5b;->d:[B

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x80

    iget v7, p0, Le5b;->e:I

    if-eqz v0, :cond_1

    iget v0, p0, Le5b;->f:I

    sub-int v0, v7, v0

    const/16 v8, 0xa

    if-lt v0, v8, :cond_1

    :goto_0
    and-long v7, p1, v5

    cmp-long v0, v7, v3

    long-to-int v7, p1

    iget v8, p0, Le5b;->f:I

    if-nez v0, :cond_0

    add-int/lit8 p1, v8, 0x1

    iput p1, p0, Le5b;->f:I

    int-to-long p0, v8

    int-to-byte p2, v7

    sget-object v0, Lqlb;->c:Ldta;

    sget-wide v3, Lqlb;->f:J

    add-long/2addr v3, p0

    invoke-virtual {v0, v2, v3, v4, p2}, Ldta;->g(Ljava/lang/Object;JB)V

    return-void

    :cond_0
    add-int/lit8 v0, v8, 0x1

    iput v0, p0, Le5b;->f:I

    int-to-long v8, v8

    or-int/lit16 v0, v7, 0x80

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    sget-object v7, Lqlb;->c:Ldta;

    sget-wide v10, Lqlb;->f:J

    add-long/2addr v10, v8

    invoke-virtual {v7, v2, v10, v11, v0}, Ldta;->g(Ljava/lang/Object;JB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v8, p1, v5

    cmp-long v0, v8, v3

    iget v8, p0, Le5b;->f:I

    if-nez v0, :cond_2

    add-int/lit8 v0, v8, 0x1

    :try_start_0
    iput v0, p0, Le5b;->f:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v2, v8

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v8, 0x1

    iput v0, p0, Le5b;->f:I

    long-to-int v0, p1

    or-int/lit16 v0, v0, 0x80

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v8
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;

    iget p0, p0, Le5b;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method
