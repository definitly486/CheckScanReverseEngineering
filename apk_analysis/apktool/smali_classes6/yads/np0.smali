.class public final Lyads/np0;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final b:J

.field public c:J


# direct methods
.method public constructor <init>(Ljava/io/BufferedInputStream;J)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide p2, p0, Lyads/np0;->b:J

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 5

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Lyads/np0;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lyads/np0;->c:J

    :cond_0
    return v0
.end method

.method public final read([BII)I
    .locals 2

    .line 15
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 16
    iget-wide p2, p0, Lyads/np0;->c:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lyads/np0;->c:J

    :cond_0
    return p1
.end method
