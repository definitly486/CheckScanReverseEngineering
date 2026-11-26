.class public Lm9b;
.super Li9b;
.source "SourceFile"


# instance fields
.field public final c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzef;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lm9b;->c:[B

    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 0

    iget-object p0, p0, Lm9b;->c:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public final b(II)I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    mul-int/lit8 p1, p1, 0x1f

    iget-object v1, p0, Lm9b;->c:[B

    aget-byte v1, v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final d(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lm9b;->zzd()I

    move-result v2

    iget-object p0, p0, Lm9b;->c:[B

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p1, p0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/auth/zzef;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lm9b;->zzd()I

    move-result v0

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/auth/zzef;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/zzef;->zzd()I

    move-result v2

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lm9b;->zzd()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    instance-of v0, p1, Lm9b;

    if-eqz v0, :cond_a

    check-cast p1, Lm9b;

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzef;->b:I

    iget v2, p1, Lcom/google/android/gms/internal/auth/zzef;->b:I

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    if-ne v0, v2, :cond_5

    :cond_4
    invoke-virtual {p0}, Lm9b;->zzd()I

    move-result v0

    invoke-virtual {p1}, Lm9b;->zzd()I

    move-result v2

    if-gt v0, v2, :cond_9

    invoke-virtual {p1}, Lm9b;->zzd()I

    move-result v2

    if-gt v0, v2, :cond_8

    iget-object p1, p1, Lm9b;->c:[B

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_7

    iget-object v4, p0, Lm9b;->c:[B

    aget-byte v4, v4, v2

    aget-byte v5, p1, v3

    if-eq v4, v5, :cond_6

    :cond_5
    :goto_1
    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_8
    invoke-virtual {p1}, Lm9b;->zzd()I

    move-result p0

    const-string p1, "Ran off end of other: 0, "

    const-string v2, ", "

    invoke-static {v0, p0, p1, v2}, Lrz0;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return v1

    :cond_9
    invoke-virtual {p0}, Lm9b;->zzd()I

    move-result p0

    invoke-static {v0, p0}, Lhm;->e(II)V

    return v1

    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public zza(I)B
    .locals 0

    iget-object p0, p0, Lm9b;->c:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public zzd()I
    .locals 0

    iget-object p0, p0, Lm9b;->c:[B

    array-length p0, p0

    return p0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/auth/zzef;
    .locals 1

    const/4 p1, 0x0

    invoke-virtual {p0}, Lm9b;->zzd()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzef;->f(III)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/auth/zzef;->zzb:Lcom/google/android/gms/internal/auth/zzef;

    return-object p0

    :cond_0
    new-instance p2, Lm8b;

    iget-object p0, p0, Lm9b;->c:[B

    invoke-direct {p2, p0, p1}, Lm8b;-><init>([BI)V

    return-object p2
.end method

.method public final zzh()Z
    .locals 2

    invoke-virtual {p0}, Lm9b;->zzd()I

    move-result v0

    sget-object v1, Ldob;->a:Lznb;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lm9b;->c:[B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lunb;->a([BII)Z

    move-result p0

    return p0
.end method
