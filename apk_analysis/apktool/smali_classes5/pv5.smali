.class public final Lpv5;
.super Lm1;
.source "SourceFile"


# instance fields
.field public final b:Lbu0;


# direct methods
.method public constructor <init>(Lbu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpv5;->b:Lbu0;

    return-void
.end method


# virtual methods
.method public final G([BII)V
    .locals 2

    :goto_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lpv5;->b:Lbu0;

    invoke-virtual {v0, p1, p2, p3}, Lbu0;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    const-string p0, "EOF trying to read "

    const-string p1, " bytes"

    invoke-static {p3, p0, p1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyq;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lpv5;->b:Lbu0;

    invoke-virtual {p0}, Lbu0;->p()V

    return-void
.end method

.method public final q()I
    .locals 2

    iget-object p0, p0, Lpv5;->b:Lbu0;

    iget-wide v0, p0, Lbu0;->c:J

    long-to-int p0, v0

    return p0
.end method

.method public final readUnsignedByte()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lpv5;->b:Lbu0;

    invoke-virtual {p0}, Lbu0;->readByte()B

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0xff

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyq;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final s0(Ljava/io/OutputStream;I)V
    .locals 2

    iget-object p0, p0, Lpv5;->b:Lbu0;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lbu0;->G0(Ljava/io/OutputStream;J)V

    return-void
.end method

.method public final skipBytes(I)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lpv5;->b:Lbu0;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lbu0;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyq;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final t(I)Ldy6;
    .locals 3

    new-instance v0, Lbu0;

    invoke-direct {v0}, Lbu0;-><init>()V

    iget-object p0, p0, Lpv5;->b:Lbu0;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lbu0;->H(Lbu0;J)V

    new-instance p0, Lpv5;

    invoke-direct {p0, v0}, Lpv5;-><init>(Lbu0;)V

    return-object p0
.end method
