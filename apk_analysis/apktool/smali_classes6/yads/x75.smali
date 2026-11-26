.class public abstract Lyads/x75;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/z94;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lyads/z94;->b:Lyads/z94;

    if-nez v0, :cond_1

    sget-object v0, Lyads/z94;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/z94;->b:Lyads/z94;

    if-nez v1, :cond_0

    new-instance v1, Lyads/z94;

    invoke-direct {v1}, Lyads/z94;-><init>()V

    sput-object v1, Lyads/z94;->b:Lyads/z94;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sput-object v0, Lyads/x75;->a:Lyads/z94;

    return-void
.end method

.method public static final a(JLyads/r75;Lyads/en4;)V
    .locals 12

    invoke-virtual {p2}, Lyads/r75;->b()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lra8;->t([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :catch_0
    const-string v0, "UNKNOWN_CONTENT"

    goto :goto_0

    :cond_0
    move-object v8, v1

    :goto_1
    iget-object v0, p3, Lyads/en4;->b:[B

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    instance-of v1, p2, Lyads/id3;

    if-eqz v1, :cond_1

    const-string v1, "IMAGE_CONTENT"

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-static {v0, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-static {v1}, Lra8;->t([B)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string v1, "UNKNOWN_CONTENT"

    goto :goto_2

    :catch_2
    invoke-static {v0}, Lra8;->t([B)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_2
    sget-object v0, Lyads/x75;->a:Lyads/z94;

    iget v2, p2, Lyads/r75;->c:I

    if-nez v2, :cond_3

    const-string v2, "GET"

    :goto_3
    move-object v5, v2

    goto :goto_4

    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const-string v2, "POST"

    goto :goto_3

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const-string v2, "PUT"

    goto :goto_3

    :cond_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    const-string v2, "DELETE"

    goto :goto_3

    :cond_6
    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    const-string v2, "HEAD"

    goto :goto_3

    :cond_7
    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    const-string v2, "OPTIONS"

    goto :goto_3

    :cond_8
    const/4 v3, 0x6

    if-ne v2, v3, :cond_9

    const-string v2, "TRACE"

    goto :goto_3

    :cond_9
    const/4 v3, 0x7

    if-ne v2, v3, :cond_a

    const-string v2, "PATCH"

    goto :goto_3

    :cond_a
    const-string v2, "UNKNOWN"

    goto :goto_3

    :goto_4
    invoke-virtual {p2}, Lyads/r75;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lyads/r75;->d()Ljava/util/Map;

    move-result-object v7

    iget p2, p3, Lyads/en4;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p3, Lyads/en4;->c:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lyads/u94;->a:Lyads/u94;

    invoke-virtual {v2}, Lyads/u94;->a()Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_6

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v2, Lyads/ca4;

    move-wide v3, p0

    invoke-direct/range {v2 .. v8}, Lyads/ca4;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    move-object p0, v2

    new-instance v2, Lyads/fa4;

    move-object v5, p2

    move-object v6, p3

    move-object v7, v1

    move-wide v3, v10

    invoke-direct/range {v2 .. v7}, Lyads/fa4;-><init>(JLjava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V

    new-instance p1, Lyads/x94;

    invoke-direct {p1, p0, v2}, Lyads/x94;-><init>(Lyads/ca4;Lyads/fa4;)V

    sget-object p0, Lyads/z94;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_2
    iget-object p2, v0, Lyads/z94;->a:Lfr;

    invoke-virtual {p2}, Ld1;->size()I

    move-result p2

    const/16 p3, 0x64

    if-le p2, p3, :cond_c

    iget-object p2, v0, Lyads/z94;->a:Lfr;

    invoke-virtual {p2, v9}, Ld1;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_7

    :cond_c
    :goto_5
    iget-object p2, v0, Lyads/z94;->a:Lfr;

    invoke-virtual {p2, p1}, Lfr;->addLast(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_6
    return-void

    :goto_7
    monitor-exit p0

    throw p1
.end method
