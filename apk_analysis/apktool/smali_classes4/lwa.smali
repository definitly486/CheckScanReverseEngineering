.class public final Llwa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[C

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 9

    const/16 v0, 0x80

    new-array v1, v0, [B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p2

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    aget-char v5, p2, v4

    if-ge v5, v0, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    const-string v8, "Non-ASCII character: %s"

    invoke-static {v7, v8, v5}, Lcom/google/android/gms/internal/fido/zzam;->zzd(ZLjava/lang/String;C)V

    aget-byte v7, v1, v5

    if-ne v7, v2, :cond_1

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    const-string v7, "Duplicate character: %s"

    invoke-static {v6, v7, v5}, Lcom/google/android/gms/internal/fido/zzam;->zzd(ZLjava/lang/String;C)V

    int-to-byte v6, v4

    aput-byte v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llwa;->a:Ljava/lang/String;

    iput-object p2, p0, Llwa;->b:[C

    :try_start_0
    array-length p1, p2

    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/fido/zzbh;->zzb(ILjava/math/RoundingMode;)I

    move-result v0

    iput v0, p0, Llwa;->d:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p2

    rsub-int/lit8 v4, p2, 0x3

    shl-int v4, v6, v4

    iput v4, p0, Llwa;->e:I

    shr-int p2, v0, p2

    iput p2, p0, Llwa;->f:I

    add-int/2addr p1, v2

    iput p1, p0, Llwa;->c:I

    iput-object v1, p0, Llwa;->g:[B

    new-array p1, v4, [Z

    :goto_3
    iget p2, p0, Llwa;->f:I

    if-ge v3, p2, :cond_3

    mul-int/lit8 p2, v3, 0x8

    iget v0, p0, Llwa;->d:I

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/fido/zzbh;->zza(IILjava/math/RoundingMode;)I

    move-result p2

    aput-boolean v6, p1, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-void

    :catch_0
    move-exception p0

    array-length p1, p2

    const-string p2, "Illegal alphabet length "

    invoke-static {p1, p2}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Llwa;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Llwa;

    iget-object p0, p0, Llwa;->b:[C

    iget-object p1, p1, Llwa;->b:[C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Llwa;->b:[C

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result p0

    add-int/lit16 p0, p0, 0x4d5

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llwa;->a:Ljava/lang/String;

    return-object p0
.end method
