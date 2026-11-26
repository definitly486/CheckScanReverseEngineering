.class public final Lla5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lla5$g;,
        Lla5$f;,
        Lla5$b;,
        Lla5$e;,
        Lla5$d;,
        Lla5$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/logging/Logger;

.field public static final d:Lla5$a;

.field public static final e:Lcom/google/common/io/BaseEncoding;


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lla5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lla5;->c:Ljava/util/logging/Logger;

    new-instance v0, Lla5$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lla5;->d:Lla5$a;

    sget-object v0, Lcom/google/common/io/BaseEncoding;->a:Lcom/google/common/io/BaseEncoding$c;

    iget-object v1, v0, Lcom/google/common/io/BaseEncoding$d;->e:Ljava/lang/Character;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/io/BaseEncoding$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/BaseEncoding$d;->g(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    :goto_0
    sput-object v0, Lla5;->e:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lla5$d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lla5$d<",
            "TT;>;)V"
        }
    .end annotation

    iget v0, p0, Lla5;->b:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lla5;->b:I

    if-ge v0, v2, :cond_3

    iget-object v2, p1, Lla5$d;->b:[B

    iget-object v3, p0, Lla5;->a:[Ljava/lang/Object;

    mul-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lla5;->a:[Ljava/lang/Object;

    aget-object v3, v2, v4

    check-cast v3, [B

    mul-int/lit8 v5, v1, 0x2

    aput-object v3, v2, v5

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v2, v4

    instance-of v4, v2, [[B

    if-eqz v4, :cond_2

    array-length v2, v2

    invoke-virtual {p0, v2}, Lla5;->b(I)V

    :cond_2
    iget-object v2, p0, Lla5;->a:[Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    aput-object v3, v2, v5

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lla5;->a:[Ljava/lang/Object;

    mul-int/lit8 v0, v1, 0x2

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v1, p0, Lla5;->b:I

    return-void
.end method

.method public final b(I)V
    .locals 3

    new-array p1, p1, [Ljava/lang/Object;

    iget v0, p0, Lla5;->b:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lla5;->a:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iput-object p1, p0, Lla5;->a:[Ljava/lang/Object;

    return-void
.end method

.method public final c(Lla5$d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lla5$d<",
            "TT;>;)TT;"
        }
    .end annotation

    iget v0, p0, Lla5;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget-object v2, p1, Lla5$d;->b:[B

    iget-object v3, p0, Lla5;->a:[Ljava/lang/Object;

    mul-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lla5;->a:[Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    aget-object p0, p0, v4

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    invoke-virtual {p1, p0}, Lla5$d;->a([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lla5$e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lla5$d;->a([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final d(Lla5;)V
    .locals 5

    iget v0, p1, Lla5;->b:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lla5;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v1, v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget v3, p0, Lla5;->b:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v1, v4

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v4, v0, 0x2

    if-ge v1, v4, :cond_3

    :goto_1
    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lla5;->b(I)V

    :cond_3
    iget-object v0, p1, Lla5;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lla5;->a:[Ljava/lang/Object;

    iget v3, p0, Lla5;->b:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p1, Lla5;->b:I

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lla5;->b:I

    iget p1, p1, Lla5;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lla5;->b:I

    return-void
.end method

.method public final e(Lla5$d;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lla5$d<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p0, Lla5;->b:I

    mul-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget-object v2, p0, Lla5;->a:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    array-length v2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v1, v2, :cond_2

    :cond_1
    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lla5;->b(I)V

    :cond_2
    iget v0, p0, Lla5;->b:I

    iget-object v1, p1, Lla5$d;->b:[B

    iget-object v2, p0, Lla5;->a:[Ljava/lang/Object;

    mul-int/lit8 v3, v0, 0x2

    aput-object v1, v2, v3

    invoke-virtual {p1, p2}, Lla5$d;->b(Ljava/lang/Object;)[B

    move-result-object p1

    iget-object p2, p0, Lla5;->a:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    aput-object p1, p2, v0

    iget p1, p0, Lla5;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lla5;->b:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metadata("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lla5;->b:I

    if-ge v1, v2, :cond_4

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lla5;->a:[Ljava/lang/Object;

    mul-int/lit8 v4, v1, 0x2

    aget-object v3, v3, v4

    check-cast v3, [B

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "-bin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lla5;->a:[Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    add-int/lit8 v4, v4, 0x1

    aget-object v2, v3, v4

    instance-of v3, v2, [B

    if-eqz v3, :cond_1

    move-object v6, v2

    check-cast v6, [B

    goto :goto_1

    :cond_1
    check-cast v2, Lla5$e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    sget-object v2, Lla5;->e:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v2, v6}, Lcom/google/common/io/BaseEncoding;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    instance-of v4, v3, [B

    if-eqz v4, :cond_3

    move-object v6, v3

    check-cast v6, [B

    goto :goto_2

    :cond_3
    check-cast v3, Lla5$e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    invoke-direct {v2, v6, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
