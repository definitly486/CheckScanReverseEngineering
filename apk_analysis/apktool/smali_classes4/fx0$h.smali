.class public Lfx0$h;
.super Lfx0$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfx0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final e:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lfx0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lfx0$h;->e:[B

    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 0

    iget-object p0, p0, Lfx0$h;->e:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lfx0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lfx0$h;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lfx0;

    invoke-virtual {v3}, Lfx0;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lfx0$h;->size()I

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    return v0

    :cond_3
    instance-of v1, p1, Lfx0$h;

    if-eqz v1, :cond_a

    check-cast p1, Lfx0$h;

    iget v1, p0, Lfx0;->b:I

    iget v3, p1, Lfx0;->b:I

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eq v1, v3, :cond_4

    :goto_1
    return v2

    :cond_4
    invoke-virtual {p0}, Lfx0$h;->size()I

    move-result v1

    invoke-virtual {p1}, Lfx0;->size()I

    move-result v3

    if-gt v1, v3, :cond_8

    add-int v3, v2, v1

    invoke-virtual {p1}, Lfx0;->size()I

    move-result v4

    if-gt v3, v4, :cond_7

    instance-of v4, p1, Lfx0$h;

    if-eqz v4, :cond_6

    iget-object v3, p1, Lfx0$h;->e:[B

    invoke-virtual {p0}, Lfx0$h;->r()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lfx0$h;->r()I

    move-result v1

    invoke-virtual {p1}, Lfx0$h;->r()I

    move-result p1

    add-int/2addr p1, v2

    :goto_2
    if-ge v1, v4, :cond_9

    iget-object v5, p0, Lfx0$h;->e:[B

    aget-byte v5, v5, v1

    aget-byte v6, v3, p1

    if-eq v5, v6, :cond_5

    :goto_3
    move v0, v2

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v2, v3}, Lfx0;->n(II)Lfx0;

    move-result-object p1

    invoke-virtual {p0, v2, v1}, Lfx0$h;->n(II)Lfx0;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfx0;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_7
    const-string p0, "Ran off end of other: "

    const-string v0, ", "

    invoke-static {v2, v1, p0, v0, v0}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lfx0;->size()I

    move-result p1

    invoke-static {p1, p0}, Lln;->f(ILjava/lang/StringBuilder;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lfx0$h;->size()I

    move-result p0

    invoke-static {v1, p0}, Lhm;->e(II)V

    goto :goto_3

    :cond_9
    :goto_4
    return v0

    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public g([BIII)V
    .locals 0

    iget-object p0, p0, Lfx0$h;->e:[B

    invoke-static {p0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public i(I)B
    .locals 0

    iget-object p0, p0, Lfx0$h;->e:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public final j()Z
    .locals 3

    invoke-virtual {p0}, Lfx0$h;->r()I

    move-result v0

    invoke-virtual {p0}, Lfx0$h;->size()I

    move-result v1

    add-int/2addr v1, v0

    sget-object v2, Lcom/google/protobuf/m0;->a:Lcom/google/protobuf/m0$b;

    iget-object p0, p0, Lfx0$h;->e:[B

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/protobuf/m0$b;->e([BII)Z

    move-result p0

    return p0
.end method

.method public final k()Lcom/google/protobuf/f;
    .locals 3

    invoke-virtual {p0}, Lfx0$h;->r()I

    move-result v0

    invoke-virtual {p0}, Lfx0$h;->size()I

    move-result v1

    const/4 v2, 0x1

    iget-object p0, p0, Lfx0$h;->e:[B

    invoke-static {p0, v0, v1, v2}, Lcom/google/protobuf/f;->f([BIIZ)Lcom/google/protobuf/f$a;

    move-result-object p0

    return-object p0
.end method

.method public final m(III)I
    .locals 2

    invoke-virtual {p0}, Lfx0$h;->r()I

    move-result v0

    add-int/2addr v0, p2

    sget-object p2, Lcom/google/protobuf/q;->a:Ljava/nio/charset/Charset;

    move p2, v0

    :goto_0
    add-int v1, v0, p3

    if-ge p2, v1, :cond_0

    mul-int/lit8 p1, p1, 0x1f

    iget-object v1, p0, Lfx0$h;->e:[B

    aget-byte v1, v1, p2

    add-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final n(II)Lfx0;
    .locals 2

    invoke-virtual {p0}, Lfx0$h;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lfx0;->b(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lfx0;->c:Lfx0$h;

    return-object p0

    :cond_0
    new-instance v0, Lfx0$d;

    invoke-virtual {p0}, Lfx0$h;->r()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p0, p0, Lfx0$h;->e:[B

    invoke-direct {v0, p0, v1, p2}, Lfx0$d;-><init>([BII)V

    return-object v0
.end method

.method public final o(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lfx0$h;->r()I

    move-result v1

    invoke-virtual {p0}, Lfx0$h;->size()I

    move-result v2

    iget-object p0, p0, Lfx0$h;->e:[B

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final q(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2

    invoke-virtual {p0}, Lfx0$h;->r()I

    move-result v0

    invoke-virtual {p0}, Lfx0$h;->size()I

    move-result v1

    iget-object p0, p0, Lfx0$h;->e:[B

    invoke-virtual {p1, p0, v0, v1}, Ly14;->O([BII)V

    return-void
.end method

.method public r()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lfx0$h;->e:[B

    array-length p0, p0

    return p0
.end method
