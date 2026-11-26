.class public final Lt54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv48;


# instance fields
.field public final b:Ljava/io/InputStream;

.field public final c:Lwv8;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lwv8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt54;->b:Ljava/io/InputStream;

    iput-object p2, p0, Lt54;->c:Lwv8;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lt54;->b:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final r()Lwv8;
    .locals 0

    iget-object p0, p0, Lt54;->c:Lwv8;

    return-object p0
.end method

.method public final t0(Lbu0;J)J
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    if-ltz v2, :cond_5

    :try_start_0
    iget-object v0, p0, Lt54;->c:Lwv8;

    invoke-virtual {v0}, Lwv8;->f()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lbu0;->y0(I)Lgl7;

    move-result-object v0

    iget v1, v0, Lgl7;->c:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    iget-object p0, p0, Lt54;->b:Ljava/io/InputStream;

    iget-object p3, v0, Lgl7;->a:[B

    iget v1, v0, Lgl7;->c:I

    invoke-virtual {p0, p3, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_2

    iget p0, v0, Lgl7;->b:I

    iget p2, v0, Lgl7;->c:I

    if-ne p0, p2, :cond_1

    invoke-virtual {v0}, Lgl7;->a()Lgl7;

    move-result-object p0

    iput-object p0, p1, Lbu0;->b:Lgl7;

    invoke-static {v0}, Lil7;->a(Lgl7;)V

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_2
    iget p2, v0, Lgl7;->c:I

    add-int/2addr p2, p0

    iput p2, v0, Lgl7;->c:I

    iget-wide p2, p1, Lbu0;->c:J

    int-to-long v0, p0

    add-long/2addr p2, v0

    iput-wide p2, p1, Lbu0;->c:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    sget-object p1, Lqm9;->a:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const-string p3, "getsockname failed"

    invoke-static {p1, p3, p2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p2

    :cond_3
    if-eqz p2, :cond_4

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    throw p0

    :cond_5
    const-string p0, "byteCount < 0: "

    invoke-static {p2, p3, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lt54;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
