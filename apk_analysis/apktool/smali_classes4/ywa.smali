.class public Lywa;
.super Lcom/google/android/gms/internal/fido/zzbf;
.source "SourceFile"


# instance fields
.field public final b:Llwa;

.field public final c:Ljava/lang/Character;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 35
    new-instance v1, Llwa;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v1, p1, p2}, Llwa;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v1, v0}, Lywa;-><init>(Llwa;Ljava/lang/Character;)V

    return-void
.end method

.method public constructor <init>(Llwa;Ljava/lang/Character;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzbf;-><init>()V

    iput-object p1, p0, Lywa;->b:Llwa;

    if-eqz p2, :cond_1

    iget-object p1, p1, Llwa;->g:[B

    const/16 v0, 0x3d

    aget-byte p1, p1, v0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Padding character %s was already in alphabet"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/fido/zzan;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iput-object p2, p0, Lywa;->c:Ljava/lang/Character;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;[BI)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, Lcom/google/android/gms/internal/fido/zzam;->zze(III)V

    :goto_0
    if-ge v1, p3, :cond_0

    iget-object v0, p0, Lywa;->b:Llwa;

    iget v2, v0, Llwa;->f:I

    sub-int v3, p3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lywa;->c(Ljava/lang/StringBuilder;[BII)V

    iget v0, v0, Llwa;->f:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(I)I
    .locals 2

    iget-object p0, p0, Lywa;->b:Llwa;

    iget v0, p0, Llwa;->e:I

    iget p0, p0, Llwa;->f:I

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, p0, v1}, Lcom/google/android/gms/internal/fido/zzbh;->zza(IILjava/math/RoundingMode;)I

    move-result p0

    mul-int/2addr p0, v0

    return p0
.end method

.method public final c(Ljava/lang/StringBuilder;[BII)V
    .locals 9

    add-int v0, p3, p4

    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/fido/zzam;->zze(III)V

    iget-object v0, p0, Lywa;->b:Llwa;

    iget v1, v0, Llwa;->f:I

    iget v2, v0, Llwa;->d:I

    const/4 v3, 0x0

    if-gt p4, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzam;->zzc(Z)V

    const-wide/16 v4, 0x0

    move v1, v3

    :goto_1
    const/16 v6, 0x8

    if-ge v1, p4, :cond_1

    add-int v7, p3, v1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long/2addr v4, v7

    shl-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p4, 0x1

    mul-int/2addr p2, v6

    sub-int/2addr p2, v2

    :goto_2
    mul-int/lit8 p3, p4, 0x8

    if-ge v3, p3, :cond_2

    sub-int p3, p2, v3

    ushr-long v7, v4, p3

    iget p3, v0, Llwa;->c:I

    long-to-int v1, v7

    and-int/2addr p3, v1

    iget-object v1, v0, Llwa;->b:[C

    aget-char p3, v1, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/2addr v3, v2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lywa;->c:Ljava/lang/Character;

    if-eqz p0, :cond_3

    :goto_3
    iget p0, v0, Llwa;->f:I

    mul-int/2addr p0, v6

    if-ge v3, p0, :cond_3

    const/16 p0, 0x3d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/2addr v3, v2

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lywa;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lywa;

    iget-object v0, p0, Lywa;->b:Llwa;

    iget-object v2, p1, Lywa;->b:Llwa;

    invoke-virtual {v0, v2}, Llwa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lywa;->c:Ljava/lang/Character;

    iget-object p0, p0, Lywa;->c:Ljava/lang/Character;

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lywa;->b:Llwa;

    invoke-virtual {v0}, Llwa;->hashCode()I

    move-result v0

    iget-object p0, p0, Lywa;->c:Ljava/lang/Character;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lywa;->b:Llwa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    iget v1, v1, Llwa;->d:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget-object p0, p0, Lywa;->c:Ljava/lang/Character;

    if-nez p0, :cond_0

    const-string p0, ".omitPadding()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ".withPadChar(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
