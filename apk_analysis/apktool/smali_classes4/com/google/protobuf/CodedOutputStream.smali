.class public abstract Lcom/google/protobuf/CodedOutputStream;
.super Ly14;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/CodedOutputStream$c;,
        Lcom/google/protobuf/CodedOutputStream$a;,
        Lcom/google/protobuf/CodedOutputStream$b;,
        Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static final p:Ljava/util/logging/Logger;

.field public static final q:Z


# instance fields
.field public o:Lcom/google/protobuf/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    sget-boolean v0, Lh79;->e:Z

    sput-boolean v0, Lcom/google/protobuf/CodedOutputStream;->q:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static V(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static W(Lcom/google/protobuf/s;)I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s;->b:Lfx0;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/s;->b:Lfx0;

    invoke-virtual {p0}, Lfx0;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/a0;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/a0;

    invoke-interface {p0}, Lcom/google/protobuf/a0;->getSerializedSize()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static X(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/m0;->b(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/protobuf/m0$d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/protobuf/q;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static Y(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p0

    return p0
.end method

.method public static Z(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static a0(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v4, 0xe

    ushr-long/2addr p0, v4

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method


# virtual methods
.method public final U()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream;->c0()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Did not write as much data as expected."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final b0(Ljava/lang/String;Lcom/google/protobuf/m0$d;)V
    .locals 3

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    sget-object v2, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/protobuf/q;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->w0(I)V

    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ly14;->O([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p1, p0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1
.end method

.method public abstract c0()I
.end method

.method public abstract d0(B)V
.end method

.method public abstract e0(IZ)V
.end method

.method public abstract f0(I[B)V
.end method

.method public abstract g0(ILfx0;)V
.end method

.method public abstract h0(Lfx0;)V
.end method

.method public abstract i0(II)V
.end method

.method public abstract j0(I)V
.end method

.method public abstract k0(IJ)V
.end method

.method public abstract l0(J)V
.end method

.method public abstract m0(II)V
.end method

.method public abstract n0(I)V
.end method

.method public abstract o0(ILcom/google/protobuf/a0;Lcom/google/protobuf/f0;)V
.end method

.method public abstract p0(Lcom/google/protobuf/a0;)V
.end method

.method public abstract q0(ILcom/google/protobuf/a0;)V
.end method

.method public abstract r0(ILfx0;)V
.end method

.method public abstract s0(ILjava/lang/String;)V
.end method

.method public abstract t0(Ljava/lang/String;)V
.end method

.method public abstract u0(II)V
.end method

.method public abstract v0(II)V
.end method

.method public abstract w0(I)V
.end method

.method public abstract x0(IJ)V
.end method

.method public abstract y0(J)V
.end method
