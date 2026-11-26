.class public final Lqi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:[I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    iput p1, p0, Lqi0;->b:I

    iput p2, p0, Lqi0;->c:I

    add-int/lit8 p1, p1, 0x1f

    div-int/lit8 p1, p1, 0x20

    iput p1, p0, Lqi0;->d:I

    mul-int/2addr p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lqi0;->e:[I

    return-void

    :cond_0
    const-string p0, "Both dimensions must be greater than 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(III[I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lqi0;->b:I

    .line 33
    iput p2, p0, Lqi0;->c:I

    .line 34
    iput p3, p0, Lqi0;->d:I

    .line 35
    iput-object p4, p0, Lqi0;->e:[I

    return-void
.end method


# virtual methods
.method public final b(II)V
    .locals 2

    iget v0, p0, Lqi0;->d:I

    mul-int/2addr p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr v0, p2

    iget-object p0, p0, Lqi0;->e:[I

    aget p2, p0, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    xor-int/2addr p1, p2

    aput p1, p0, v0

    return-void
.end method

.method public final c(II)Z
    .locals 1

    iget v0, p0, Lqi0;->d:I

    mul-int/2addr p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr v0, p2

    iget-object p0, p0, Lqi0;->e:[I

    aget p0, p0, v0

    and-int/lit8 p1, p1, 0x1f

    ushr-int/2addr p0, p1

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lqi0;

    iget-object v1, p0, Lqi0;->e:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget v2, p0, Lqi0;->b:I

    iget v3, p0, Lqi0;->c:I

    iget p0, p0, Lqi0;->d:I

    invoke-direct {v0, v2, v3, p0, v1}, Lqi0;-><init>(III[I)V

    return-object v0
.end method

.method public final d(II)V
    .locals 2

    iget v0, p0, Lqi0;->d:I

    mul-int/2addr p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr v0, p2

    iget-object p0, p0, Lqi0;->e:[I

    aget p2, p0, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, p2

    aput p1, p0, v0

    return-void
.end method

.method public final e(IIII)V
    .locals 7

    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    if-lt p4, v0, :cond_3

    if-lt p3, v0, :cond_3

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    iget v1, p0, Lqi0;->c:I

    if-gt p4, v1, :cond_2

    iget v1, p0, Lqi0;->b:I

    if-gt p3, v1, :cond_2

    :goto_0
    if-ge p2, p4, :cond_1

    iget v1, p0, Lqi0;->d:I

    mul-int/2addr v1, p2

    move v2, p1

    :goto_1
    if-ge v2, p3, :cond_0

    div-int/lit8 v3, v2, 0x20

    add-int/2addr v3, v1

    iget-object v4, p0, Lqi0;->e:[I

    aget v5, v4, v3

    and-int/lit8 v6, v2, 0x1f

    shl-int v6, v0, v6

    or-int/2addr v5, v6

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const-string p0, "The region must fit inside the matrix"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "Height and width must be at least 1"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "Left and top must be nonnegative"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lqi0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lqi0;

    iget v0, p0, Lqi0;->b:I

    iget v1, p1, Lqi0;->b:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lqi0;->c:I

    iget v1, p1, Lqi0;->c:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lqi0;->d:I

    iget v1, p1, Lqi0;->d:I

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lqi0;->e:[I

    iget-object p1, p1, Lqi0;->e:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lqi0;->b:I

    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lqi0;->c:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lqi0;->d:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lqi0;->e:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lqi0;->b:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lqi0;->c:I

    mul-int/2addr v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_1

    invoke-virtual {p0, v5, v4}, Lqi0;->c(II)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "X "

    goto :goto_2

    :cond_0
    const-string v6, "  "

    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
