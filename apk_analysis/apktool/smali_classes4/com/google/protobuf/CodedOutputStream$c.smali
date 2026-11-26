.class public final Lcom/google/protobuf/CodedOutputStream$c;
.super Lcom/google/protobuf/CodedOutputStream$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final u:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/protobuf/CodedOutputStream$a;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream$c;->u:Ljava/io/OutputStream;

    return-void

    :cond_0
    const-string p0, "out"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final E0()V
    .locals 4

    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$c;->u:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$a;->r:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    return-void
.end method

.method public final F0(I)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$a;->s:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream$c;->E0()V

    :cond_0
    return-void
.end method

.method public final G0([BII)V
    .locals 4

    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$a;->s:I

    sub-int v2, v1, v0

    iget-object v3, p0, Lcom/google/protobuf/CodedOutputStream$a;->r:[B

    if-lt v2, p3, :cond_0

    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    return-void

    :cond_0
    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream$c;->E0()V

    if-gt p3, v1, :cond_1

    const/4 v0, 0x0

    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/CodedOutputStream$c;->u:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public final O([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$c;->G0([BII)V

    return-void
.end method

.method public final d0(B)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$a;->s:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream$c;->E0()V

    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    iget-object p0, p0, Lcom/google/protobuf/CodedOutputStream$a;->r:[B

    aput-byte p1, p0, v0

    return-void
.end method

.method public final e0(IZ)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$c;->F0(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$a;->B0(II)V

    int-to-byte p1, p2

    iget p2, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    iget-object p0, p0, Lcom/google/protobuf/CodedOutputStream$a;->r:[B

    aput-byte p1, p0, p2

    return-void
.end method

.method public final f0(I[B)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$c;->w0(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/google/protobuf/CodedOutputStream$c;->G0([BII)V

    return-void
.end method

.method public final g0(ILfx0;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$c;->u0(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$c;->h0(Lfx0;)V

    return-void
.end method

.method public final h0(Lfx0;)V
    .locals 1

    invoke-virtual {p1}, Lfx0;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$c;->w0(I)V

    invoke-virtual {p1, p0}, Lfx0;->q(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final i0(II)V
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$c;->F0(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$a;->B0(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$a;->z0(I)V

    return-void
.end method

.method public final j0(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$c;->F0(I)V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$a;->z0(I)V

    return-void
.end method

.method public final k0(IJ)V
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$c;->F0(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$a;->B0(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$a;->A0(J)V

    return-void
.end method

.method public final l0(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$c;->F0(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$a;->A0(J)V

    return-void
.end method

.method public final m0(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$c;->F0(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$a;->B0(II)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$a;->C0(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$a;->D0(J)V

    return-void
.end method

.method public final n0(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$c;->w0(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$c;->y0(J)V

    return-void
.end method

.method public final o0(ILcom/google/protobuf/a0;Lcom/google/protobuf/f0;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$c;->u0(II)V

    move-object p1, p2

    check-cast p1, Lcom/google/protobuf/a;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/a;->getSerializedSize(Lcom/google/protobuf/f0;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$c;->w0(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedOutputStream;->o:Lcom/google/protobuf/h;

    invoke-interface {p3, p2, p0}, Lcom/google/protobuf/f0;->a(Ljava/lang/Object;Lcom/google/protobuf/n0;)V

    return-void
.end method

.method public final p0(Lcom/google/protobuf/a0;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/protobuf/a0;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$c;->w0(I)V

    invoke-interface {p1, p0}, Lcom/google/protobuf/a0;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final q0(ILcom/google/protobuf/a0;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$c;->u0(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/CodedOutputStream$c;->v0(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream$c;->u0(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$c;->p0(Lcom/google/protobuf/a0;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedOutputStream$c;->u0(II)V

    return-void
.end method

.method public final r0(ILfx0;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$c;->u0(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/CodedOutputStream$c;->v0(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/CodedOutputStream$c;->g0(ILfx0;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedOutputStream$c;->u0(II)V

    return-void
.end method

.method public final s0(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$c;->u0(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$c;->t0(Ljava/lang/String;)V

    return-void
.end method

.method public final t0(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v1
    :try_end_0
    .catch Lcom/google/protobuf/m0$d; {:try_start_0 .. :try_end_0} :catch_0

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$a;->s:I

    if-le v2, v3, :cond_0

    :try_start_1
    new-array v1, v0, [B

    sget-object v2, Lcom/google/protobuf/m0;->a:Lcom/google/protobuf/m0$b;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3, v0}, Lcom/google/protobuf/m0$b;->d(Ljava/lang/String;[BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$c;->w0(I)V

    invoke-virtual {p0, v1, v3, v0}, Lcom/google/protobuf/CodedOutputStream$c;->G0([BII)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    sub-int v0, v3, v0

    if-le v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream$c;->E0()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v0

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I
    :try_end_1
    .catch Lcom/google/protobuf/m0$d; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, p0, Lcom/google/protobuf/CodedOutputStream$a;->r:[B

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_2
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    sub-int/2addr v3, v1

    sget-object v5, Lcom/google/protobuf/m0;->a:Lcom/google/protobuf/m0$b;

    invoke-virtual {v5, p1, v4, v1, v3}, Lcom/google/protobuf/m0$b;->d(Ljava/lang/String;[BII)I

    move-result v1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedOutputStream$a;->C0(I)V

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/m0;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$a;->C0(I)V

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    sget-object v3, Lcom/google/protobuf/m0;->a:Lcom/google/protobuf/m0$b;

    invoke-virtual {v3, p1, v4, v1, v0}, Lcom/google/protobuf/m0$b;->d(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I
    :try_end_2
    .catch Lcom/google/protobuf/m0$d; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-void

    :goto_1
    :try_start_3
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v1

    :goto_2
    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$a;->t:I

    throw v0
    :try_end_3
    .catch Lcom/google/protobuf/m0$d; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->b0(Ljava/lang/String;Lcom/google/protobuf/m0$d;)V

    return-void
.end method

.method public final u0(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$c;->w0(I)V

    return-void
.end method

.method public final v0(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$c;->F0(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$a;->B0(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$a;->C0(I)V

    return-void
.end method

.method public final w0(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$c;->F0(I)V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$a;->C0(I)V

    return-void
.end method

.method public final x0(IJ)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$c;->F0(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$a;->B0(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$a;->D0(J)V

    return-void
.end method

.method public final y0(J)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$c;->F0(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$a;->D0(J)V

    return-void
.end method
