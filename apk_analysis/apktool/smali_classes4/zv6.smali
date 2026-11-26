.class public final Lzv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzv6$b;,
        Lzv6$c;,
        Lzv6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Iterable<",
        "[B>;"
    }
.end annotation


# static fields
.field public static final m:[B


# instance fields
.field public final b:Ljava/io/RandomAccessFile;

.field public final c:Ljava/io/File;

.field public final d:Z

.field public final e:I

.field public f:J

.field public g:I

.field public h:Lzv6$b;

.field public i:Lzv6$b;

.field public final j:[B

.field public k:I

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lzv6;->m:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/RandomAccessFile;Z)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lzv6;->j:[B

    const/4 v2, 0x0

    iput v2, p0, Lzv6;->k:I

    iput-object p1, p0, Lzv6;->c:Ljava/io/File;

    iput-object p2, p0, Lzv6;->b:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 p1, 0x1

    if-nez p3, :cond_0

    aget-byte p3, v1, v2

    and-int/lit16 p3, p3, 0x80

    if-eqz p3, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    iput-boolean p3, p0, Lzv6;->d:Z

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0xc

    const/16 v6, 0x8

    const/4 v7, 0x4

    if-eqz p3, :cond_2

    iput v0, p0, Lzv6;->e:I

    invoke-static {v1, v2, v7}, Lzv6;->a([BII)J

    move-result-wide v8

    long-to-int p3, v8

    const v2, 0x7fffffff

    and-int/2addr p3, v2

    if-ne p3, p1, :cond_1

    invoke-static {v1, v7, v6}, Lzv6;->a([BII)J

    move-result-wide v8

    iput-wide v8, p0, Lzv6;->f:J

    invoke-static {v1, v5, v7}, Lzv6;->a([BII)J

    move-result-wide v7

    long-to-int p1, v7

    iput p1, p0, Lzv6;->g:I

    invoke-static {v1, v4, v6}, Lzv6;->a([BII)J

    move-result-wide v4

    const/16 p1, 0x18

    invoke-static {v1, p1, v6}, Lzv6;->a([BII)J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-string p0, "Unable to read version "

    const-string p1, " format. Supported versions are 1 and legacy."

    invoke-static {p3, p0, p1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    throw v3

    :cond_2
    iput v4, p0, Lzv6;->e:I

    invoke-static {v1, v2, v7}, Lzv6;->a([BII)J

    move-result-wide v8

    long-to-int p1, v8

    int-to-long v8, p1

    iput-wide v8, p0, Lzv6;->f:J

    invoke-static {v1, v7, v7}, Lzv6;->a([BII)J

    move-result-wide v8

    long-to-int p1, v8

    iput p1, p0, Lzv6;->g:I

    invoke-static {v1, v6, v7}, Lzv6;->a([BII)J

    move-result-wide v8

    long-to-int p1, v8

    int-to-long v8, p1

    invoke-static {v1, v5, v7}, Lzv6;->a([BII)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v1, p1

    move v0, v4

    move-wide v4, v8

    :goto_1
    iget-wide v6, p0, Lzv6;->f:J

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    cmp-long p1, v6, v8

    iget-wide v6, p0, Lzv6;->f:J

    if-gtz p1, :cond_4

    int-to-long p1, v0

    cmp-long p1, v6, p1

    if-lez p1, :cond_3

    invoke-virtual {p0, v4, v5}, Lzv6;->b(J)Lzv6$b;

    move-result-object p1

    iput-object p1, p0, Lzv6;->h:Lzv6$b;

    invoke-virtual {p0, v1, v2}, Lzv6;->b(J)Lzv6$b;

    move-result-object p1

    iput-object p1, p0, Lzv6;->i:Lzv6$b;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "File is corrupt; length stored in header ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p2, p0, Lzv6;->f:J

    const-string p0, ") is invalid."

    invoke-static {p2, p3, p0, p1}, Lk2;->b(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    throw v3

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "File is truncated. Expected length: "

    const-string p3, ", Actual length: "

    invoke-static {v6, v7, p1, p3}, Lxp;->f(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([BII)J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static v([BII)V
    .locals 6

    int-to-long v0, p2

    const/4 p2, 0x3

    move v2, p2

    :goto_0
    if-ltz v2, :cond_0

    add-int/lit8 v3, p1, 0x3

    sub-int/2addr v3, v2

    mul-int/lit8 v4, v2, 0x8

    shr-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(J)Lzv6$b;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget-object p0, Lzv6$b;->c:Lzv6$b;

    return-object p0

    :cond_0
    const/4 v4, 0x4

    const/4 v5, 0x0

    iget-object v3, p0, Lzv6;->j:[B

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lzv6;->n(J[BIZ)V

    const/4 p0, 0x0

    const/4 p1, 0x4

    invoke-static {v3, p0, p1}, Lzv6;->a([BII)J

    move-result-wide p0

    long-to-int p0, p0

    new-instance p1, Lzv6$b;

    invoke-direct {p1, v1, v2, p0}, Lzv6$b;-><init>(JI)V

    return-object p1
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzv6;->l:Z

    iget-object p0, p0, Lzv6;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lzv6$c;

    invoke-direct {v0, p0}, Lzv6$c;-><init>(Lzv6;)V

    return-object v0
.end method

.method public final m()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lzv6;->g:I

    const/4 v8, 0x1

    sget-object v9, Lzv6;->m:[B

    const-wide/16 v10, 0x1000

    const/4 v12, 0x0

    if-ne v8, v1, :cond_2

    iget-boolean v1, v0, Lzv6;->l:Z

    if-nez v1, :cond_1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1000

    invoke-virtual/range {v0 .. v7}, Lzv6;->p(IJJJ)V

    iget v1, v0, Lzv6;->e:I

    int-to-long v2, v1

    iget-object v4, v0, Lzv6;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    rsub-int v1, v1, 0x1000

    invoke-virtual {v4, v9, v12, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iput v12, v0, Lzv6;->g:I

    sget-object v1, Lzv6$b;->c:Lzv6$b;

    iput-object v1, v0, Lzv6;->h:Lzv6$b;

    iput-object v1, v0, Lzv6;->i:Lzv6$b;

    iget-wide v1, v0, Lzv6;->f:J

    cmp-long v1, v1, v10

    if-lez v1, :cond_0

    invoke-virtual {v4, v10, v11}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/nio/channels/FileChannel;->force(Z)V

    :cond_0
    iput-wide v10, v0, Lzv6;->f:J

    iget v1, v0, Lzv6;->k:I

    add-int/2addr v1, v8

    iput v1, v0, Lzv6;->k:I

    return-void

    :cond_1
    const-string v0, "closed"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v1, :cond_5

    if-gt v8, v1, :cond_4

    iget-object v1, v0, Lzv6;->h:Lzv6$b;

    iget-wide v13, v1, Lzv6$b;->a:J

    iget v1, v1, Lzv6$b;->b:I

    add-int/lit8 v2, v1, 0x4

    int-to-long v6, v2

    const-wide/16 v2, 0x4

    add-long/2addr v2, v13

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lzv6;->o(J)J

    move-result-wide v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    iget-object v3, v0, Lzv6;->j:[B

    invoke-virtual/range {v0 .. v5}, Lzv6;->n(J[BIZ)V

    invoke-static {v3, v12, v4}, Lzv6;->a([BII)J

    move-result-wide v3

    long-to-int v12, v3

    move-wide v4, v1

    iget-wide v2, v0, Lzv6;->f:J

    iget v1, v0, Lzv6;->g:I

    sub-int/2addr v1, v8

    iget-object v15, v0, Lzv6;->i:Lzv6$b;

    move/from16 v17, v8

    move-object/from16 v16, v9

    iget-wide v8, v15, Lzv6$b;->a:J

    move-wide/from16 v18, v8

    move-wide v8, v6

    move-wide/from16 v6, v18

    invoke-virtual/range {v0 .. v7}, Lzv6;->p(IJJJ)V

    move-wide v1, v4

    iget v3, v0, Lzv6;->g:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lzv6;->g:I

    iget v3, v0, Lzv6;->k:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lzv6;->k:I

    new-instance v3, Lzv6$b;

    invoke-direct {v3, v1, v2, v12}, Lzv6$b;-><init>(JI)V

    iput-object v3, v0, Lzv6;->h:Lzv6$b;

    move-wide v6, v8

    move-wide v1, v13

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v6, v3

    if-lez v3, :cond_3

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    const/4 v5, 0x1

    move-object/from16 v3, v16

    invoke-virtual/range {v0 .. v5}, Lzv6;->n(J[BIZ)V

    int-to-long v3, v4

    sub-long/2addr v6, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot remove more elements (1) than present in queue ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lzv6;->g:I

    const-string v2, ")."

    invoke-static {v1, v2, v0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {}, Lqz0;->e()V

    return-void
.end method

.method public final n(J[BIZ)V
    .locals 5

    invoke-virtual {p0, p1, p2}, Lzv6;->o(J)J

    move-result-wide p1

    int-to-long v0, p4

    add-long/2addr v0, p1

    iget-wide v2, p0, Lzv6;->f:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    iget-object v4, p0, Lzv6;->b:Ljava/io/RandomAccessFile;

    if-gtz v0, :cond_1

    invoke-virtual {v4, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz p5, :cond_0

    invoke-virtual {v4, p3, v1, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void

    :cond_0
    invoke-virtual {v4, p3, v1, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-void

    :cond_1
    sub-long/2addr v2, p1

    long-to-int v0, v2

    invoke-virtual {v4, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz p5, :cond_2

    invoke-virtual {v4, p3, v1, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4, p3, v1, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    :goto_0
    iget p0, p0, Lzv6;->e:I

    int-to-long p0, p0

    sub-int/2addr p4, v0

    invoke-virtual {v4, p0, p1}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz p5, :cond_3

    invoke-virtual {v4, p3, v0, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void

    :cond_3
    invoke-virtual {v4, p3, v0, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-void
.end method

.method public final o(J)J
    .locals 4

    iget-wide v0, p0, Lzv6;->f:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide p1

    :cond_0
    iget p0, p0, Lzv6;->e:I

    int-to-long v2, p0

    add-long/2addr v2, p1

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public final p(IJJJ)V
    .locals 8

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lzv6;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0xc

    const/4 v1, 0x0

    iget-boolean v3, p0, Lzv6;->d:Z

    iget-object p0, p0, Lzv6;->j:[B

    if-eqz v3, :cond_3

    const v3, -0x7fffffff

    invoke-static {p0, v1, v3}, Lzv6;->v([BII)V

    const/4 v3, 0x7

    move v4, v3

    :goto_0
    if-ltz v4, :cond_0

    rsub-int/lit8 v5, v4, 0xb

    mul-int/lit8 v6, v4, 0x8

    shr-long v6, p2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p0, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0, p1}, Lzv6;->v([BII)V

    move p1, v3

    :goto_1
    if-ltz p1, :cond_1

    rsub-int/lit8 p2, p1, 0x17

    mul-int/lit8 p3, p1, 0x8

    shr-long v4, p4, p3

    long-to-int p3, v4

    int-to-byte p3, p3

    aput-byte p3, p0, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ltz v3, :cond_2

    rsub-int/lit8 p1, v3, 0x1f

    mul-int/lit8 p2, v3, 0x8

    shr-long p2, p6, p2

    long-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    const/16 p1, 0x20

    invoke-virtual {v2, p0, v1, p1}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void

    :cond_3
    long-to-int p2, p2

    invoke-static {p0, v1, p2}, Lzv6;->v([BII)V

    const/4 p2, 0x4

    invoke-static {p0, p2, p1}, Lzv6;->v([BII)V

    long-to-int p1, p4

    const/16 p2, 0x8

    invoke-static {p0, p2, p1}, Lzv6;->v([BII)V

    long-to-int p1, p6

    invoke-static {p0, v0, p1}, Lzv6;->v([BII)V

    const/16 p1, 0x10

    invoke-virtual {v2, p0, v1, p1}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QueueFile{file="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzv6;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", zero=true, versioned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lzv6;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzv6;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzv6;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzv6;->h:Lzv6$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lzv6;->i:Lzv6$b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
