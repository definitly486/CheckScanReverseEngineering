.class public Lz3b;
.super Lu3b;
.source "SourceFile"


# instance fields
.field public final c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lz3b;->c:[B

    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 0

    iget-object p0, p0, Lz3b;->c:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public d(III[B)V
    .locals 0

    iget-object p0, p0, Lz3b;->c:[B

    invoke-static {p0, p1, p4, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lz3b;->zzd()I

    move-result v0

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v2

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lz3b;->zzd()I

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    instance-of v0, p1, Lz3b;

    if-eqz v0, :cond_5

    check-cast p1, Lz3b;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->b:I

    iget v2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->b:I

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    if-eq v0, v2, :cond_4

    :goto_1
    return v1

    :cond_4
    invoke-virtual {p0}, Lz3b;->zzd()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lz3b;->p(Lu3b;II)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final i(III)I
    .locals 2

    invoke-virtual {p0}, Lz3b;->q()I

    move-result v0

    add-int/2addr v0, p2

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    move p2, v0

    :goto_0
    add-int v1, v0, p3

    if-ge p2, v1, :cond_0

    mul-int/lit8 p1, p1, 0x1f

    iget-object v1, p0, Lz3b;->c:[B

    aget-byte v1, v1, p2

    add-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final j(III)I
    .locals 1

    invoke-virtual {p0}, Lz3b;->q()I

    move-result v0

    add-int/2addr v0, p2

    add-int/2addr p3, v0

    iget-object p0, p0, Lz3b;->c:[B

    sget-object p2, Lwmb;->a:Lpmb;

    invoke-virtual {p2, p1, v0, p3, p0}, Lpmb;->a(III[B)I

    move-result p0

    return p0
.end method

.method public final k(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lz3b;->q()I

    move-result v1

    invoke-virtual {p0}, Lz3b;->zzd()I

    move-result v2

    iget-object p0, p0, Lz3b;->c:[B

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final m(Le5b;)V
    .locals 2

    invoke-virtual {p0}, Lz3b;->q()I

    move-result v0

    invoke-virtual {p0}, Lz3b;->zzd()I

    move-result v1

    iget-object p0, p0, Lz3b;->c:[B

    invoke-virtual {p1, p0, v0, v1}, Le5b;->b([BII)V

    return-void
.end method

.method public final p(Lu3b;II)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v0

    const/4 v1, 0x0

    if-gt p3, v0, :cond_4

    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v2

    if-gt v0, v2, :cond_3

    instance-of v2, p1, Lz3b;

    if-eqz v2, :cond_2

    check-cast p1, Lz3b;

    iget-object v0, p1, Lz3b;->c:[B

    invoke-virtual {p0}, Lz3b;->q()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lz3b;->q()I

    move-result p3

    invoke-virtual {p1}, Lz3b;->q()I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    if-ge p3, v2, :cond_1

    iget-object p2, p0, Lz3b;->c:[B

    aget-byte p2, p2, p3

    aget-byte v3, v0, p1

    if-eq p2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzk(II)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    move-result-object p1

    invoke-virtual {p0, v1, p3}, Lz3b;->zzk(II)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result p0

    const-string p1, "Ran off end of other: "

    const-string v0, ", "

    invoke-static {p2, p3, p1, v0, v0}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1}, Lln;->f(ILjava/lang/StringBuilder;)V

    return v1

    :cond_4
    invoke-virtual {p0}, Lz3b;->zzd()I

    move-result p0

    invoke-static {p3, p0}, Lhm;->e(II)V

    return v1
.end method

.method public q()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public zza(I)B
    .locals 0

    iget-object p0, p0, Lz3b;->c:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public zzd()I
    .locals 0

    iget-object p0, p0, Lz3b;->c:[B

    array-length p0, p0

    return p0
.end method

.method public final zzk(II)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;
    .locals 2

    invoke-virtual {p0}, Lz3b;->zzd()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->n(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    return-object p0

    :cond_0
    new-instance v0, Lh3b;

    invoke-virtual {p0}, Lz3b;->q()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p0, p0, Lz3b;->c:[B

    invoke-direct {v0, p0, v1, p2}, Lh3b;-><init>([BII)V

    return-object v0
.end method

.method public final zzn()Z
    .locals 4

    invoke-virtual {p0}, Lz3b;->q()I

    move-result v0

    invoke-virtual {p0}, Lz3b;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    sget-object v2, Lwmb;->a:Lpmb;

    const/4 v3, 0x0

    iget-object p0, p0, Lz3b;->c:[B

    invoke-virtual {v2, v3, v0, v1, p0}, Lpmb;->a(III[B)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v3
.end method
