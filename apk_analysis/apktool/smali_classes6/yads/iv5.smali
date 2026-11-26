.class public final Lyads/iv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wc0;


# instance fields
.field public final a:Lyads/wc0;

.field public final b:Lyads/aw;

.field public c:Z

.field public d:J


# direct methods
.method public constructor <init>(Lyads/wc0;Lyads/aw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lyads/iv5;->a:Lyads/wc0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lyads/iv5;->b:Lyads/aw;

    return-void
.end method


# virtual methods
.method public final a(Lyads/bd0;)J
    .locals 8

    iget-object v0, p0, Lyads/iv5;->a:Lyads/wc0;

    invoke-interface {v0, p1}, Lyads/wc0;->a(Lyads/bd0;)J

    move-result-wide v0

    iput-wide v0, p0, Lyads/iv5;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v4, p1, Lyads/bd0;->g:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2, v3, v0, v1}, Lyads/bd0;->a(JJ)Lyads/bd0;

    move-result-object p1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/iv5;->c:Z

    iget-object v0, p0, Lyads/iv5;->b:Lyads/aw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lyads/bd0;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, p1, Lyads/bd0;->g:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    iget v1, p1, Lyads/bd0;->i:I

    const/4 v4, 0x2

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2

    const/4 p1, 0x0

    iput-object p1, v0, Lyads/aw;->d:Lyads/bd0;

    goto :goto_1

    :cond_2
    iput-object p1, v0, Lyads/aw;->d:Lyads/bd0;

    iget v1, p1, Lyads/bd0;->i:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3

    iget-wide v4, v0, Lyads/aw;->b:J

    goto :goto_0

    :cond_3
    const-wide v4, 0x7fffffffffffffffL

    :goto_0
    iput-wide v4, v0, Lyads/aw;->e:J

    iput-wide v2, v0, Lyads/aw;->i:J

    :try_start_0
    invoke-virtual {v0, p1}, Lyads/aw;->a(Lyads/bd0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-wide p0, p0, Lyads/iv5;->d:J

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lyads/zv;

    invoke-direct {p1, p0}, Lyads/zv;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public final a(Lyads/p16;)V
    .locals 0

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    iget-object p0, p0, Lyads/iv5;->a:Lyads/wc0;

    invoke-interface {p0, p1}, Lyads/wc0;->a(Lyads/p16;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lyads/iv5;->a:Lyads/wc0;

    invoke-interface {p0}, Lyads/wc0;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final c([BII)I
    .locals 9

    iget-wide v0, p0, Lyads/iv5;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lyads/iv5;->a:Lyads/wc0;

    invoke-interface {v0, p1, p2, p3}, Lyads/tc0;->c([BII)I

    move-result p3

    if-lez p3, :cond_4

    iget-object v0, p0, Lyads/iv5;->b:Lyads/aw;

    iget-object v1, v0, Lyads/aw;->d:Lyads/bd0;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_3

    :try_start_0
    iget-wide v3, v0, Lyads/aw;->h:J

    iget-wide v5, v0, Lyads/aw;->e:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lyads/aw;->a()V

    invoke-virtual {v0, v1}, Lyads/aw;->a(Lyads/bd0;)V

    :cond_2
    sub-int v3, p3, v2

    int-to-long v3, v3

    iget-wide v5, v0, Lyads/aw;->e:J

    iget-wide v7, v0, Lyads/aw;->h:J

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, v0, Lyads/aw;->g:Ljava/io/OutputStream;

    sget v5, Lyads/u56;->a:I

    add-int v5, p2, v2

    invoke-virtual {v4, p1, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v2, v3

    iget-wide v4, v0, Lyads/aw;->h:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v0, Lyads/aw;->h:J

    iget-wide v3, v0, Lyads/aw;->i:J

    add-long/2addr v3, v6

    iput-wide v3, v0, Lyads/aw;->i:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lyads/zv;

    invoke-direct {p1, p0}, Lyads/zv;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_3
    :goto_1
    iget-wide p1, p0, Lyads/iv5;->d:J

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lyads/iv5;->d:J

    :cond_4
    return p3
.end method

.method public final close()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lyads/iv5;->a:Lyads/wc0;

    invoke-interface {v1}, Lyads/wc0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lyads/iv5;->c:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lyads/iv5;->c:Z

    iget-object p0, p0, Lyads/iv5;->b:Lyads/aw;

    iget-object v0, p0, Lyads/aw;->d:Lyads/bd0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lyads/aw;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lyads/zv;

    invoke-direct {v0, p0}, Lyads/zv;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lyads/iv5;->c:Z

    if-eqz v2, :cond_3

    iput-boolean v0, p0, Lyads/iv5;->c:Z

    iget-object p0, p0, Lyads/iv5;->b:Lyads/aw;

    iget-object v0, p0, Lyads/aw;->d:Lyads/bd0;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lyads/aw;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v0, Lyads/zv;

    invoke-direct {v0, p0}, Lyads/zv;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_3
    :goto_1
    throw v1
.end method

.method public final d()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lyads/iv5;->a:Lyads/wc0;

    invoke-interface {p0}, Lyads/wc0;->d()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
