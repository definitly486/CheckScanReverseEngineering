.class public final Ley6$b;
.super Lm1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public b:I

.field public final c:I

.field public final d:[B

.field public e:I


# direct methods
.method public constructor <init>([BII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ley6$b;->e:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "offset must be >= 0"

    invoke-static {v2, v3}, Lo8;->f(ZLjava/lang/Object;)V

    if-ltz p3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v3, "length must be >= 0"

    invoke-static {v2, v3}, Lo8;->f(ZLjava/lang/Object;)V

    add-int/2addr p3, p2

    array-length v2, p1

    if-gt p3, v2, :cond_2

    move v0, v1

    :cond_2
    const-string v1, "offset + length exceeds array boundary"

    invoke-static {v0, v1}, Lo8;->f(ZLjava/lang/Object;)V

    iput-object p1, p0, Ley6$b;->d:[B

    iput p2, p0, Ley6$b;->b:I

    iput p3, p0, Ley6$b;->c:I

    return-void
.end method


# virtual methods
.method public final G([BII)V
    .locals 2

    iget-object v0, p0, Ley6$b;->d:[B

    iget v1, p0, Ley6$b;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ley6$b;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Ley6$b;->b:I

    return-void
.end method

.method public final I()V
    .locals 1

    iget v0, p0, Ley6$b;->b:I

    iput v0, p0, Ley6$b;->e:I

    return-void
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Ley6$b;->c:I

    iget p0, p0, Ley6$b;->b:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final readUnsignedByte()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm1;->a(I)V

    iget v0, p0, Ley6$b;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ley6$b;->b:I

    iget-object p0, p0, Ley6$b;->d:[B

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final reset()V
    .locals 2

    iget v0, p0, Ley6$b;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v0, p0, Ley6$b;->b:I

    return-void

    :cond_0
    new-instance p0, Ljava/nio/InvalidMarkException;

    invoke-direct {p0}, Ljava/nio/InvalidMarkException;-><init>()V

    throw p0
.end method

.method public final s0(Ljava/io/OutputStream;I)V
    .locals 2

    invoke-virtual {p0, p2}, Lm1;->a(I)V

    iget-object v0, p0, Ley6$b;->d:[B

    iget v1, p0, Ley6$b;->b:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    iget p1, p0, Ley6$b;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Ley6$b;->b:I

    return-void
.end method

.method public final skipBytes(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lm1;->a(I)V

    iget v0, p0, Ley6$b;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Ley6$b;->b:I

    return-void
.end method

.method public final t(I)Ldy6;
    .locals 2

    invoke-virtual {p0, p1}, Lm1;->a(I)V

    iget v0, p0, Ley6$b;->b:I

    add-int v1, v0, p1

    iput v1, p0, Ley6$b;->b:I

    new-instance v1, Ley6$b;

    iget-object p0, p0, Ley6$b;->d:[B

    invoke-direct {v1, p0, v0, p1}, Ley6$b;-><init>([BII)V

    return-object v1
.end method
