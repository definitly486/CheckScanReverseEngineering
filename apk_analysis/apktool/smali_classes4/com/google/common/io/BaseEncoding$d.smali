.class public Lcom/google/common/io/BaseEncoding$d;
.super Lcom/google/common/io/BaseEncoding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final d:Lcom/google/common/io/BaseEncoding$a;

.field public final e:Ljava/lang/Character;

.field public volatile f:Lcom/google/common/io/BaseEncoding;

.field public volatile g:Lcom/google/common/io/BaseEncoding;

.field public volatile h:Lcom/google/common/io/BaseEncoding;


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/io/BaseEncoding$a;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    iget-object p1, p1, Lcom/google/common/io/BaseEncoding$a;->g:[B

    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte p1, p1, v0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const-string v0, "Padding character %s was already in alphabet"

    invoke-static {p1, v0, p2}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$d;->e:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/google/common/io/BaseEncoding$a;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/google/common/io/BaseEncoding$a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v1, v0}, Lcom/google/common/io/BaseEncoding$d;-><init>(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public b([BLjava/lang/CharSequence;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding$d;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v0, v0, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/io/BaseEncoding$a;

    iget-object v3, v0, Lcom/google/common/io/BaseEncoding$a;->h:[Z

    iget v4, v0, Lcom/google/common/io/BaseEncoding$a;->d:I

    iget v5, v0, Lcom/google/common/io/BaseEncoding$a;->e:I

    rem-int/2addr v2, v5

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move v3, v2

    move v6, v3

    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    const-wide/16 v7, 0x0

    move v9, v2

    move v10, v9

    :goto_1
    if-ge v9, v5, :cond_1

    shl-long/2addr v7, v4

    add-int v11, v3, v9

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ge v11, v12, :cond_0

    add-int/lit8 v11, v10, 0x1

    add-int/2addr v10, v3

    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v0, v10}, Lcom/google/common/io/BaseEncoding$a;->a(C)I

    move-result v10

    int-to-long v12, v10

    or-long/2addr v7, v12

    move v10, v11

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    iget v9, v0, Lcom/google/common/io/BaseEncoding$a;->f:I

    mul-int/lit8 v11, v9, 0x8

    mul-int/2addr v10, v4

    sub-int/2addr v11, v10

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v9, v9, 0x8

    :goto_2
    if-lt v9, v11, :cond_2

    add-int/lit8 v10, v6, 0x1

    ushr-long v12, v7, v9

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, p1, v6

    add-int/lit8 v9, v9, -0x8

    move v6, v10

    goto :goto_2

    :cond_2
    add-int/2addr v3, v5

    goto :goto_0

    :cond_3
    return v6

    :cond_4
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid input length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ljava/lang/StringBuilder;[BI)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, Lo8;->o(III)V

    :goto_0
    if-ge v1, p3, :cond_0

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/io/BaseEncoding$a;

    iget v2, v0, Lcom/google/common/io/BaseEncoding$a;->f:I

    sub-int v3, p3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/io/BaseEncoding$d;->f(Ljava/lang/StringBuilder;[BII)V

    iget v0, v0, Lcom/google/common/io/BaseEncoding$a;->f:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/common/io/BaseEncoding$d;->e:Ljava/lang/Character;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, p0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, p0, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/common/io/BaseEncoding$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/io/BaseEncoding$d;

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/io/BaseEncoding$a;

    iget-object v2, p1, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/io/BaseEncoding$a;

    invoke-virtual {v0, v2}, Lcom/google/common/io/BaseEncoding$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/io/BaseEncoding$d;->e:Ljava/lang/Character;

    iget-object p1, p1, Lcom/google/common/io/BaseEncoding$d;->e:Ljava/lang/Character;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final f(Ljava/lang/StringBuilder;[BII)V
    .locals 9

    add-int v0, p3, p4

    array-length v1, p2

    invoke-static {p3, v0, v1}, Lo8;->o(III)V

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/io/BaseEncoding$a;

    iget v1, v0, Lcom/google/common/io/BaseEncoding$a;->f:I

    iget v2, v0, Lcom/google/common/io/BaseEncoding$a;->d:I

    const/4 v3, 0x0

    if-gt p4, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lo8;->e(Z)V

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

    long-to-int p3, v7

    iget v1, v0, Lcom/google/common/io/BaseEncoding$a;->c:I

    and-int/2addr p3, v1

    iget-object v1, v0, Lcom/google/common/io/BaseEncoding$a;->b:[C

    aget-char p3, v1, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/2addr v3, v2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/google/common/io/BaseEncoding$d;->e:Ljava/lang/Character;

    if-eqz p0, :cond_3

    :goto_3
    iget p2, v0, Lcom/google/common/io/BaseEncoding$a;->f:I

    mul-int/2addr p2, v6

    if-ge v3, p2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/2addr v3, v2

    goto :goto_3

    :cond_3
    return-void
.end method

.method public g(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;
    .locals 0

    new-instance p0, Lcom/google/common/io/BaseEncoding$d;

    invoke-direct {p0, p1, p2}, Lcom/google/common/io/BaseEncoding$d;-><init>(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)V

    return-object p0
.end method

.method public final h()Lcom/google/common/io/BaseEncoding;
    .locals 8

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->f:Lcom/google/common/io/BaseEncoding;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/io/BaseEncoding$a;

    iget-object v1, v0, Lcom/google/common/io/BaseEncoding$a;->b:[C

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-char v5, v1, v4

    invoke-static {v5}, Lgo2;->d(C)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v2, v0, Lcom/google/common/io/BaseEncoding$a;->b:[C

    array-length v4, v2

    move v5, v3

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v4, :cond_1

    aget-char v7, v2, v5

    invoke-static {v7}, Lgo2;->e(C)Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_2
    xor-int/2addr v2, v6

    const-string v4, "Cannot call upperCase() on a mixed-case alphabet"

    invoke-static {v2, v4}, Lo8;->s(ZLjava/lang/Object;)V

    array-length v2, v1

    new-array v2, v2, [C

    :goto_3
    array-length v4, v1

    if-ge v3, v4, :cond_3

    aget-char v4, v1, v3

    invoke-static {v4}, Lgo2;->d(C)Z

    move-result v5

    if-eqz v5, :cond_2

    xor-int/lit8 v4, v4, 0x20

    int-to-char v4, v4

    :cond_2
    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    new-instance v1, Lcom/google/common/io/BaseEncoding$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/google/common/io/BaseEncoding$a;->a:Ljava/lang/String;

    const-string v5, ".upperCase()"

    invoke-static {v3, v4, v5}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/google/common/io/BaseEncoding$a;-><init>(Ljava/lang/String;[C)V

    iget-boolean v0, v0, Lcom/google/common/io/BaseEncoding$a;->i:Z

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/google/common/io/BaseEncoding$a;->b()Lcom/google/common/io/BaseEncoding$a;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/io/BaseEncoding$a;

    if-ne v0, v1, :cond_7

    move-object v0, p0

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$d;->e:Ljava/lang/Character;

    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/BaseEncoding$d;->g(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->f:Lcom/google/common/io/BaseEncoding;

    :cond_8
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/io/BaseEncoding$a;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding$a;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/google/common/io/BaseEncoding$d;->e:Ljava/lang/Character;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/io/BaseEncoding$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    iget v1, v1, Lcom/google/common/io/BaseEncoding$a;->d:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/google/common/io/BaseEncoding$d;->e:Ljava/lang/Character;

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
