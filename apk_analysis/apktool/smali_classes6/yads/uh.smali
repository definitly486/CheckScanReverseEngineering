.class public final Lyads/uh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcl4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/uh;->a:Landroid/content/Context;

    new-instance p1, Lz12;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lz12;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lyads/uh;->b:Lcl4;

    return-void
.end method

.method public static final a(Lyads/uh;)Landroid/app/ActivityManager;
    .locals 1

    .line 98
    :try_start_0
    iget-object p0, p0, Lyads/uh;->a:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/ActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final a(Lyads/uh;Landroid/app/ApplicationExitInfo;)Lyads/ff;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2}, Lz98;->b(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    new-instance v3, Lyads/ff;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ANR"

    :cond_0
    move-object v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v16

    invoke-direct/range {v3 .. v16}, Lyads/ff;-><init>(JLjava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-object v3

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-static {v2, v3}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-static {v1, v2}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final a(JLandroid/app/ApplicationExitInfo;)Z
    .locals 2

    .line 100
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final a(Landroid/app/ApplicationExitInfo;)Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(JLandroid/app/ApplicationExitInfo;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(IIJ)Ljava/util/List;
    .locals 6

    .line 101
    iget-object v0, p0, Lyads/uh;->b:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sget-object v1, Lkx2;->b:Lkx2;

    if-nez v0, :cond_0

    return-object v1

    .line 102
    :cond_0
    :try_start_0
    iget-object v2, p0, Lyads/uh;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :catchall_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p2

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    sub-long/2addr v2, p1

    .line 104
    invoke-static {v1}, Lqn1;->K(Ljava/lang/Iterable;)Lpn1;

    move-result-object p1

    new-instance p2, Ldea;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {p1, p2}, Ljp7;->k(Lzo7;Lnl3;)Lpa3;

    move-result-object p1

    .line 106
    new-instance p2, Leea;

    invoke-direct {p2, v2, v3}, Leea;-><init>(J)V

    invoke-static {p1, p2}, Ljp7;->k(Lzo7;Lnl3;)Lpa3;

    move-result-object p1

    .line 107
    new-instance p2, Lfea;

    invoke-direct {p2, p3, p4}, Lfea;-><init>(J)V

    invoke-static {p1, p2}, Ljp7;->k(Lzo7;Lnl3;)Lpa3;

    move-result-object p1

    .line 108
    new-instance p2, Lgea;

    invoke-direct {p2, p0}, Lgea;-><init>(Lyads/uh;)V

    invoke-static {p1, p2}, Ljp7;->o(Lzo7;Lnl3;)Lpa3;

    move-result-object p0

    .line 109
    invoke-static {p0}, Ljp7;->q(Lzo7;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
