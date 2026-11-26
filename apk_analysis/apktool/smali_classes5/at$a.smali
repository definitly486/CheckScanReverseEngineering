.class public final Lat$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a()Lat;
    .locals 9

    sget-object v0, Lat;->h:Llg6;

    iget-object v1, v0, Llg6;->b:[Lat;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sget-object v1, Lat;->k:Ljava/util/concurrent/locks/Condition;

    sget-wide v6, Lat;->l:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, v0, Llg6;->b:[Lat;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    sget-wide v4, Lat;->m:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    sget-object v0, Lat;->i:Lat;

    return-object v0

    :cond_0
    return-object v3

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, v1, Lat;->g:J

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v6, v4

    if-lez v2, :cond_2

    sget-object v0, Lat;->k:Ljava/util/concurrent/locks/Condition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    return-object v3

    :cond_2
    invoke-virtual {v0, v1}, Llg6;->b(Lat;)V

    const/4 v0, 0x2

    iput v0, v1, Lat;->e:I

    return-object v1
.end method

.method public static b(Lat;)V
    .locals 9

    sget-object v0, Lat;->i:Lat;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lat;

    invoke-direct {v0}, Lat;-><init>()V

    sput-object v0, Lat;->i:Lat;

    new-instance v0, Lat$b;

    const-string v2, "Okio Watchdog"

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lwv8;->c:J

    iget-boolean v0, p0, Lwv8;->a:Z

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lwv8;->c()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lat;->g:J

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lat;->g:J

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lwv8;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lat;->g:J

    :goto_0
    sget-object v0, Lat;->h:Llg6;

    iget v2, v0, Llg6;->a:I

    add-int/2addr v2, v1

    iput v2, v0, Llg6;->a:I

    iget-object v3, v0, Llg6;->b:[Lat;

    array-length v4, v3

    if-ne v2, v4, :cond_3

    mul-int/lit8 v4, v2, 0x2

    new-array v4, v4, [Lat;

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Laq5;->q([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    iput-object v4, v0, Llg6;->b:[Lat;

    :cond_3
    invoke-virtual {v0, v2, p0}, Llg6;->a(ILat;)V

    iget p0, p0, Lat;->f:I

    if-ne p0, v1, :cond_4

    sget-object p0, Lat;->k:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lxp;->g()V

    return-void
.end method
