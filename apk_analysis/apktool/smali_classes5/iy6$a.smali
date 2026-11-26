.class public final Liy6$a;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liy6;->w0()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Liy6;


# direct methods
.method public constructor <init>(Liy6;)V
    .locals 0

    iput-object p1, p0, Liy6$a;->b:Liy6;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    iget-object p0, p0, Liy6$a;->b:Liy6;

    iget-boolean v0, p0, Liy6;->d:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Liy6;->c:Lbu0;

    iget-wide v0, p0, Lbu0;->c:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Liy6$a;->b:Liy6;

    invoke-virtual {p0}, Liy6;->close()V

    return-void
.end method

.method public final read()I
    .locals 5

    .line 54
    iget-object p0, p0, Liy6$a;->b:Liy6;

    iget-object v0, p0, Liy6;->c:Lbu0;

    iget-boolean v1, p0, Liy6;->d:Z

    if-nez v1, :cond_1

    .line 55
    iget-wide v1, v0, Lbu0;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 56
    iget-object p0, p0, Liy6;->b:Lv48;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Lv48;->t0(Lbu0;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 57
    :cond_0
    invoke-virtual {v0}, Lbu0;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 58
    :cond_1
    const-string p0, "closed"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final read([BII)I
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Liy6$a;->b:Liy6;

    iget-object v0, p0, Liy6;->c:Lbu0;

    iget-boolean v1, p0, Liy6;->d:Z

    if-nez v1, :cond_1

    array-length v1, p1

    int-to-long v2, v1

    int-to-long v4, p2

    int-to-long v6, p3

    invoke-static/range {v2 .. v7}, Lh;->b(JJJ)V

    iget-wide v1, v0, Lbu0;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object p0, p0, Liy6;->b:Lv48;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Lv48;->t0(Lbu0;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lbu0;->read([BII)I

    move-result p0

    return p0

    :cond_1
    const-string p0, "closed"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Liy6$a;->b:Liy6;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".inputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final transferTo(Ljava/io/OutputStream;)J
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Liy6$a;->b:Liy6;

    iget-object v0, p0, Liy6;->c:Lbu0;

    iget-boolean v1, p0, Liy6;->d:Z

    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    move-wide v4, v2

    :goto_0
    iget-wide v6, v0, Lbu0;->c:J

    cmp-long v1, v6, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Liy6;->b:Lv48;

    const-wide/16 v6, 0x2000

    invoke-interface {v1, v0, v6, v7}, Lv48;->t0(Lbu0;J)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    return-wide v4

    :cond_1
    :goto_1
    iget-wide v6, v0, Lbu0;->c:J

    add-long/2addr v4, v6

    invoke-virtual {v0, p1, v6, v7}, Lbu0;->G0(Ljava/io/OutputStream;J)V

    goto :goto_0

    :cond_2
    const-string p0, "closed"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-wide v2
.end method
