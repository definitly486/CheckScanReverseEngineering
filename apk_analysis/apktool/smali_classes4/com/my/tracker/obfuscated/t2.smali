.class public final Lcom/my/tracker/obfuscated/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/s2;


# instance fields
.field final a:I

.field b:Lcom/my/tracker/obfuscated/f2;

.field c:Lcom/my/tracker/obfuscated/n2;

.field d:I


# direct methods
.method private constructor <init>(ILcom/my/tracker/obfuscated/f2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/my/tracker/obfuscated/t2;->a:I

    iput-object p2, p0, Lcom/my/tracker/obfuscated/t2;->b:Lcom/my/tracker/obfuscated/f2;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/my/tracker/obfuscated/t2;->c:Lcom/my/tracker/obfuscated/n2;

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/my/tracker/obfuscated/t2;->d:I

    const-string p0, "TimeSpentRepository: repository created but not initialized. Will initialized when first timespent tick will arrive"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;)Lcom/my/tracker/obfuscated/n2;
    .locals 0

    .line 152
    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/t2;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/my/tracker/obfuscated/n2;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Ljava/lang/String;Landroid/content/Context;)Lcom/my/tracker/obfuscated/n2;
    .locals 0

    .line 138
    :try_start_0
    invoke-static {p0, p1}, Lcom/my/tracker/obfuscated/n2;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/my/tracker/obfuscated/n2;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 139
    const-string p1, "TimeSpentRepository: can\'t initialize sql database"

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(ILcom/my/tracker/obfuscated/c3;Landroid/content/Context;)Lcom/my/tracker/obfuscated/t2;
    .locals 1

    .line 135
    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/c3;->g()Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance v0, Lu8a;

    invoke-direct {v0, p2, p1}, Lu8a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    new-instance p1, Lcom/my/tracker/obfuscated/t2;

    invoke-direct {p1, p0, v0}, Lcom/my/tracker/obfuscated/t2;-><init>(ILcom/my/tracker/obfuscated/f2;)V

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 157
    const-string v0, "TimeSpentRepository: successfully deleted "

    iget v1, p0, Lcom/my/tracker/obfuscated/t2;->d:I

    iget v2, p0, Lcom/my/tracker/obfuscated/t2;->a:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/my/tracker/obfuscated/t2;->c:Lcom/my/tracker/obfuscated/n2;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/my/tracker/obfuscated/n2;->a(I)I

    move-result v2

    .line 159
    iget v3, p0, Lcom/my/tracker/obfuscated/t2;->d:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/my/tracker/obfuscated/t2;->d:I

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(requested = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") oldest tick packets from db, currentDbSize = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/my/tracker/obfuscated/t2;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (reason: need free up space for new packet)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 161
    const-string v2, "TimeSpentRepository: something went wrong while trying to delete oldest"

    const-string v3, " tick packets from db (reason: need free up space for new packet, maxSize = "

    .line 162
    invoke-static {v1, v2, v3}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    iget v2, p0, Lcom/my/tracker/obfuscated/t2;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/my/tracker/obfuscated/t2;->d:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), can\'t store new tick packet"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/obfuscated/t2;->c:Lcom/my/tracker/obfuscated/n2;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/my/tracker/obfuscated/t2;->d:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic d()Lcom/my/tracker/obfuscated/n2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic e()Lcom/my/tracker/obfuscated/n2;
    .locals 1

    invoke-static {}, Lcom/my/tracker/obfuscated/t2;->d()Lcom/my/tracker/obfuscated/n2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(J[B)V
    .locals 3

    const-string v0, "TimeSpentRepository: successfully stored new tick packet to db, tickPacketId = "

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-direct {p0}, Lcom/my/tracker/obfuscated/t2;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/t2;->b()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 143
    :cond_0
    :goto_0
    iget v1, p0, Lcom/my/tracker/obfuscated/t2;->d:I

    iget v2, p0, Lcom/my/tracker/obfuscated/t2;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_1

    .line 144
    :try_start_1
    invoke-direct {p0}, Lcom/my/tracker/obfuscated/t2;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 145
    :try_start_2
    const-string p2, "TimeSpentRepository: free up database failed, can\'t put new TimeSpentTick (reason: db still full)"

    invoke-static {p2}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    .line 146
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :cond_1
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/my/tracker/obfuscated/t2;->c:Lcom/my/tracker/obfuscated/n2;

    invoke-virtual {v1, p1, p2, p3}, Lcom/my/tracker/obfuscated/n2;->a(J[B)J

    move-result-wide p1

    .line 148
    iget p3, p0, Lcom/my/tracker/obfuscated/t2;->d:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/my/tracker/obfuscated/t2;->d:I

    .line 149
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " (current db size = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/my/tracker/obfuscated/t2;->d:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    .line 150
    :try_start_4
    const-string p2, "TimeSpentRepository: something went wrong while saving new tick packet in database, this tick wouldn\'t be stored"

    invoke-static {p2}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    .line 151
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized a([J)V
    .locals 2

    const-string v0, "TimeSpentRepository: something went wrong while deleting "

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/my/tracker/obfuscated/t2;->c:Lcom/my/tracker/obfuscated/n2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/my/tracker/obfuscated/n2;->a([J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 154
    :catch_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packets from db"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(I)[Lcom/my/tracker/obfuscated/w2;
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/my/tracker/obfuscated/t2;->c:Lcom/my/tracker/obfuscated/n2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/my/tracker/obfuscated/n2;->b(I)Lcom/my/tracker/obfuscated/n2$b;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/n2$a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/n2$b;->n()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/n2$b;->m()[B

    move-result-object v5

    new-instance v6, Lcom/my/tracker/obfuscated/w2;

    invoke-direct {v6, v3, v4, v5}, Lcom/my/tracker/obfuscated/w2;-><init>(J[B)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimeSpentRepository: read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " freshest packets from db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/my/tracker/obfuscated/w2;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/my/tracker/obfuscated/w2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/n2$a;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v2

    :catchall_1
    move-exception v1

    goto :goto_4

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/n2$a;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeSpentRepository: error while reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " freshest tick packets"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit p0

    return-object v0

    :catchall_3
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/my/tracker/obfuscated/t2;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TimeSpentRepository: initializing repository..."

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/t2;->b:Lcom/my/tracker/obfuscated/f2;

    invoke-interface {v0}, Lcom/my/tracker/obfuscated/f2;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/tracker/obfuscated/n2;

    iput-object v0, p0, Lcom/my/tracker/obfuscated/t2;->c:Lcom/my/tracker/obfuscated/n2;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/n2;->a()I

    move-result v0

    iput v0, p0, Lcom/my/tracker/obfuscated/t2;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lyg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/t2;->b:Lcom/my/tracker/obfuscated/f2;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeSpentRepository: successfully initialized, current size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/my/tracker/obfuscated/t2;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/my/tracker/obfuscated/t2;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "TimeSpentRepository: error occured while initialization repository, repository not initialized"

    invoke-static {v1, v0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/my/tracker/obfuscated/t2;->c:Lcom/my/tracker/obfuscated/n2;

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/my/tracker/obfuscated/t2;->d:I

    throw v0
.end method
