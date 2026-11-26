.class public final Lcom/my/tracker/obfuscated/o2;
.super Lcom/my/tracker/obfuscated/u1;
.source "SourceFile"


# instance fields
.field private final c:Lcom/my/tracker/obfuscated/q;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/my/tracker/obfuscated/u1;-><init>()V

    new-instance v0, Lcom/my/tracker/obfuscated/q;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Lcom/my/tracker/obfuscated/q;-><init>(I)V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/o2;->c:Lcom/my/tracker/obfuscated/q;

    return-void
.end method

.method private static a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/i2;[Lcom/my/tracker/obfuscated/i2;Lcom/my/tracker/obfuscated/q;)V
    .locals 8

    const/16 v0, 0x27

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p3}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 123
    invoke-interface {p1}, Lcom/my/tracker/obfuscated/i2;->a()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 124
    invoke-interface {p1}, Lcom/my/tracker/obfuscated/i2;->b()J

    move-result-wide v4

    invoke-virtual {p3, v2, v4, v5}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 125
    invoke-interface {p1}, Lcom/my/tracker/obfuscated/i2;->c()J

    move-result-wide v4

    invoke-virtual {p3, v1, v4, v5}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 126
    invoke-virtual {p0, v0, p3}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 127
    array-length p1, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    aget-object v5, p2, v4

    .line 128
    invoke-virtual {p3}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 129
    invoke-interface {v5}, Lcom/my/tracker/obfuscated/i2;->a()I

    move-result v6

    invoke-virtual {p3, v3, v6}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 130
    invoke-interface {v5}, Lcom/my/tracker/obfuscated/i2;->b()J

    move-result-wide v6

    invoke-virtual {p3, v2, v6, v7}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 131
    invoke-interface {v5}, Lcom/my/tracker/obfuscated/i2;->c()J

    move-result-wide v5

    invoke-virtual {p3, v1, v5, v6}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 132
    invoke-virtual {p0, v0, p3}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/my/tracker/obfuscated/v1;ZLcom/my/tracker/obfuscated/c3$a;Lcom/my/tracker/obfuscated/f3;Lcom/my/tracker/obfuscated/j0;Lcom/my/tracker/obfuscated/u2;)V
    .locals 8

    iget-object v0, p3, Lcom/my/tracker/obfuscated/c3$a;->k:Lcom/my/tracker/MyTrackerParams$a;

    iget-object v0, v0, Lcom/my/tracker/MyTrackerParams$a;->e:Ljava/util/Map;

    if-nez p2, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "mac"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object v3, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v3, v1

    move-object v4, v3

    :goto_0
    const/4 v0, 0x1

    const-string v1, "3.6.0"

    invoke-virtual {p1, v0, v1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    iget-object p3, p3, Lcom/my/tracker/obfuscated/c3$a;->a:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p3}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    invoke-virtual {p6}, Lcom/my/tracker/obfuscated/u2;->c()J

    move-result-wide v0

    const/4 p3, 0x3

    invoke-virtual {p1, p3, v0, v1}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    iget-object p3, p5, Lcom/my/tracker/obfuscated/j0;->a:Lcom/my/tracker/obfuscated/g;

    iget-object v0, p5, Lcom/my/tracker/obfuscated/j0;->c:Lcom/my/tracker/obfuscated/c0;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v2, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    invoke-static {p1, p3, v0, v1, v2}, Lcom/my/tracker/obfuscated/u1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g;Lcom/my/tracker/obfuscated/c0;Lcom/my/tracker/obfuscated/q;Lcom/my/tracker/obfuscated/q;)V

    iget-object p3, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-static {p1, p2, p4, p3}, Lcom/my/tracker/obfuscated/u1;->a(Lcom/my/tracker/obfuscated/v1;ZLcom/my/tracker/obfuscated/f3;Lcom/my/tracker/obfuscated/q;)V

    iget-object v6, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v7, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    move-object v2, p1

    move-object v5, p5

    invoke-static/range {v2 .. v7}, Lcom/my/tracker/obfuscated/u1;->a(Lcom/my/tracker/obfuscated/v1;Ljava/lang/String;Ljava/lang/String;Lcom/my/tracker/obfuscated/j0;Lcom/my/tracker/obfuscated/q;Lcom/my/tracker/obfuscated/q;)V

    if-nez p2, :cond_1

    iget-object p1, v5, Lcom/my/tracker/obfuscated/j0;->f:Lcom/my/tracker/obfuscated/l1;

    iget-object p2, v5, Lcom/my/tracker/obfuscated/j0;->b:Lcom/my/tracker/obfuscated/b1;

    iget-object p3, v5, Lcom/my/tracker/obfuscated/j0;->c:Lcom/my/tracker/obfuscated/c0;

    iget-object p4, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/my/tracker/obfuscated/u1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/l1;Lcom/my/tracker/obfuscated/b1;Lcom/my/tracker/obfuscated/c0;Lcom/my/tracker/obfuscated/q;)V

    iget-object p1, v5, Lcom/my/tracker/obfuscated/j0;->g:Lcom/my/tracker/obfuscated/d1;

    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-static {v2, p1, p2}, Lcom/my/tracker/obfuscated/u1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/d1;Lcom/my/tracker/obfuscated/q;)V

    :cond_1
    invoke-virtual {p6}, Lcom/my/tracker/obfuscated/u2;->b()[Lcom/my/tracker/obfuscated/y;

    move-result-object p1

    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-static {v2, p1, p2}, Lcom/my/tracker/obfuscated/o2;->a(Lcom/my/tracker/obfuscated/v1;[Lcom/my/tracker/obfuscated/y;Lcom/my/tracker/obfuscated/q;)V

    invoke-virtual {p6}, Lcom/my/tracker/obfuscated/u2;->a()Lcom/my/tracker/obfuscated/i2;

    move-result-object p1

    invoke-virtual {p6}, Lcom/my/tracker/obfuscated/u2;->d()[Lcom/my/tracker/obfuscated/i2;

    move-result-object p2

    iget-object p0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-static {v2, p1, p2, p0}, Lcom/my/tracker/obfuscated/o2;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/i2;[Lcom/my/tracker/obfuscated/i2;Lcom/my/tracker/obfuscated/q;)V

    return-void
.end method

.method private static a(Lcom/my/tracker/obfuscated/v1;[Lcom/my/tracker/obfuscated/y;Lcom/my/tracker/obfuscated/q;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 133
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 134
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 135
    invoke-interface {v2}, Lcom/my/tracker/obfuscated/y;->a()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p2, v4, v3}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 136
    invoke-interface {v2}, Lcom/my/tracker/obfuscated/y;->d()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3, v2}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    const/16 v2, 0x26

    .line 137
    invoke-virtual {p0, v2, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(ZLcom/my/tracker/obfuscated/c3$a;Lcom/my/tracker/obfuscated/f3;Lcom/my/tracker/obfuscated/u2;Ljava/lang/String;Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;Landroid/content/Context;)[B
    .locals 8

    monitor-enter p0

    if-eqz p7, :cond_0

    .line 138
    :try_start_0
    invoke-static {}, Lcom/my/tracker/obfuscated/k0;->a()Lcom/my/tracker/obfuscated/k0;

    move-result-object v0

    .line 139
    iget-object v1, p2, Lcom/my/tracker/obfuscated/c3$a;->m:Lcom/my/tracker/MyTrackerConfig$InstalledPackagesProvider;

    iget-boolean v2, p2, Lcom/my/tracker/obfuscated/c3$a;->g:Z

    iget v3, p2, Lcom/my/tracker/obfuscated/c3$a;->e:I

    move v4, p1

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/my/tracker/obfuscated/k0;->a(Lcom/my/tracker/MyTrackerConfig$InstalledPackagesProvider;ZIZLjava/lang/String;Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;Landroid/content/Context;)Lcom/my/tracker/obfuscated/j0;

    move-result-object p5

    .line 140
    iget-object p1, p0, Lcom/my/tracker/obfuscated/o2;->c:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 141
    iget-object p1, p0, Lcom/my/tracker/obfuscated/o2;->c:Lcom/my/tracker/obfuscated/q;

    move-object p6, p4

    move-object p4, p3

    move-object p3, p2

    move p2, v4

    invoke-direct/range {p0 .. p6}, Lcom/my/tracker/obfuscated/o2;->a(Lcom/my/tracker/obfuscated/v1;ZLcom/my/tracker/obfuscated/c3$a;Lcom/my/tracker/obfuscated/f3;Lcom/my/tracker/obfuscated/j0;Lcom/my/tracker/obfuscated/u2;)V

    .line 142
    iget-object p1, p0, Lcom/my/tracker/obfuscated/o2;->c:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1

    .line 143
    iget-object p2, p0, Lcom/my/tracker/obfuscated/o2;->c:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->d()V

    .line 144
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/u1;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 145
    :try_start_1
    const-string p2, "TimeSpentMessageBuilder: something went wrong while generating tick packet"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 147
    :cond_0
    const-string p1, "TimeSpentMessageBuilder: context is empty"

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    .line 148
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "TimeSpentMessageBuilder: context is empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
