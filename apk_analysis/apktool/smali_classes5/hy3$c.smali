.class public final Lhy3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Luy3;

.field public final synthetic c:Lhy3;


# direct methods
.method public constructor <init>(Lhy3;Luy3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luy3;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhy3$c;->c:Lhy3;

    iput-object p2, p0, Lhy3$c;->b:Luy3;

    return-void
.end method


# virtual methods
.method public final a(ZILwu0;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v3, p2

    move-object/from16 v1, p3

    move/from16 v5, p4

    iget-object v2, v0, Lhy3$c;->c:Lhy3;

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    and-int/lit8 v7, v3, 0x1

    if-nez v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    const-wide/16 v8, 0x0

    if-eqz v7, :cond_1

    new-instance v4, Lbu0;

    invoke-direct {v4}, Lbu0;-><init>()V

    int-to-long v6, v5

    invoke-interface {v1, v6, v7}, Lwu0;->c0(J)V

    invoke-interface {v1, v4, v6, v7}, Lv48;->t0(Lbu0;J)J

    iget-object v7, v2, Lhy3;->j:Ldo8;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v2, Lhy3;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] onData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lly3;

    move/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lly3;-><init>(Ljava/lang/String;Lhy3;ILbu0;IZ)V

    invoke-virtual {v7, v0, v8, v9}, Ldo8;->c(Ljl8;J)V

    return-void

    :cond_1
    invoke-virtual {v2, v3}, Lhy3;->b(I)Lvy3;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lhy3$c;->c:Lhy3;

    sget-object v4, Lp03;->PROTOCOL_ERROR:Lp03;

    invoke-virtual {v2, v3, v4}, Lhy3;->n(ILp03;)V

    iget-object v0, v0, Lhy3$c;->c:Lhy3;

    int-to-long v2, v5

    invoke-virtual {v0, v2, v3}, Lhy3;->g(J)V

    invoke-interface {v1, v2, v3}, Lwu0;->skip(J)V

    return-void

    :cond_2
    sget-object v0, Lgb9;->a:[B

    iget-object v0, v2, Lvy3;->i:Lvy3$b;

    int-to-long v10, v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v12, v10

    :goto_1
    cmp-long v3, v12, v8

    iget-object v5, v0, Lvy3$b;->g:Lvy3;

    if-lez v3, :cond_a

    monitor-enter v5

    :try_start_0
    iget-boolean v3, v0, Lvy3$b;->c:Z

    iget-object v7, v0, Lvy3$b;->e:Lbu0;

    iget-wide v14, v7, Lbu0;->c:J

    add-long/2addr v14, v12

    move-wide/from16 v16, v8

    iget-wide v8, v0, Lvy3$b;->b:J

    cmp-long v7, v14, v8

    if-lez v7, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_2
    sget-object v8, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v5

    if-eqz v7, :cond_4

    invoke-interface {v1, v12, v13}, Lwu0;->skip(J)V

    iget-object v0, v0, Lvy3$b;->g:Lvy3;

    sget-object v1, Lp03;->FLOW_CONTROL_ERROR:Lp03;

    invoke-virtual {v0, v1}, Lvy3;->e(Lp03;)V

    goto :goto_6

    :cond_4
    if-eqz v3, :cond_5

    invoke-interface {v1, v12, v13}, Lwu0;->skip(J)V

    goto :goto_6

    :cond_5
    iget-object v3, v0, Lvy3$b;->d:Lbu0;

    invoke-interface {v1, v3, v12, v13}, Lv48;->t0(Lbu0;J)J

    move-result-wide v7

    const-wide/16 v14, -0x1

    cmp-long v3, v7, v14

    if-eqz v3, :cond_9

    sub-long/2addr v12, v7

    iget-object v3, v0, Lvy3$b;->g:Lvy3;

    monitor-enter v3

    :try_start_1
    iget-boolean v5, v0, Lvy3$b;->f:Z

    if-eqz v5, :cond_6

    iget-object v5, v0, Lvy3$b;->d:Lbu0;

    invoke-virtual {v5}, Lbu0;->p()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_6
    iget-object v5, v0, Lvy3$b;->e:Lbu0;

    iget-wide v7, v5, Lbu0;->c:J

    cmp-long v7, v7, v16

    if-nez v7, :cond_7

    move v7, v6

    goto :goto_3

    :cond_7
    move v7, v4

    :goto_3
    iget-object v8, v0, Lvy3$b;->d:Lbu0;

    invoke-virtual {v5, v8}, Lbu0;->j0(Lv48;)J

    if-eqz v7, :cond_8

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_4
    monitor-exit v3

    move-wide/from16 v8, v16

    goto :goto_1

    :goto_5
    monitor-exit v3

    throw v0

    :cond_9
    invoke-static {}, Ln7;->e()V

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_a
    sget-object v0, Lgb9;->a:[B

    iget-object v0, v5, Lvy3;->b:Lhy3;

    invoke-virtual {v0, v10, v11}, Lhy3;->g(J)V

    :goto_6
    if-eqz p1, :cond_b

    sget-object v0, Lgb9;->b:Ljv3;

    invoke-virtual {v2, v0, v6}, Lvy3;->i(Ljv3;Z)V

    :cond_b
    return-void
.end method

.method public final b(ILjava/util/List;Z)V
    .locals 9

    iget-object v2, p0, Lhy3$c;->c:Lhy3;

    if-eqz p1, :cond_0

    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    const/16 v8, 0x5b

    if-eqz p0, :cond_1

    iget-object p0, v2, Lhy3;->j:Ldo8;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v2, Lhy3;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] onHeaders"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lmy3;

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lmy3;-><init>(Ljava/lang/String;Lhy3;ILjava/util/List;Z)V

    invoke-virtual {p0, v0, v6, v7}, Ldo8;->c(Ljl8;J)V

    return-void

    :cond_1
    move v1, p1

    move-object v4, p2

    move v5, p3

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2, v1}, Lhy3;->b(I)Lvy3;

    move-result-object p0

    if-nez p0, :cond_5

    iget-boolean p0, v2, Lhy3;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    monitor-exit v2

    return-void

    :cond_2
    :try_start_1
    iget p0, v2, Lhy3;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, p0, :cond_3

    monitor-exit v2

    return-void

    :cond_3
    :try_start_2
    rem-int/lit8 p1, v1, 0x2

    iget p0, v2, Lhy3;->f:I

    rem-int/lit8 p0, p0, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, p0, :cond_4

    monitor-exit v2

    return-void

    :cond_4
    move-object p1, v4

    move v4, v5

    :try_start_3
    invoke-static {p1}, Lgb9;->u(Ljava/util/List;)Ljv3;

    move-result-object v5

    new-instance v0, Lvy3;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lvy3;-><init>(ILhy3;ZZLjv3;)V

    iput v1, v2, Lhy3;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, v2, Lhy3;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v2, Lhy3;->h:Lho8;

    invoke-virtual {p0}, Lho8;->d()Ldo8;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v2, Lhy3;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] onStream"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljy3;

    invoke-direct {p2, p1, v2, v0}, Ljy3;-><init>(Ljava/lang/String;Lhy3;Lvy3;)V

    invoke-virtual {p0, p2, v6, v7}, Ldo8;->c(Ljl8;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_5
    move-object p1, v4

    move v4, v5

    :try_start_4
    sget-object p2, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v2

    invoke-static {p1}, Lgb9;->u(Ljava/util/List;)Ljv3;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lvy3;->i(Ljv3;Z)V

    return-void

    :goto_1
    monitor-exit v2

    throw p0
.end method

.method public final c(IIZ)V
    .locals 3

    iget-object v0, p0, Lhy3$c;->c:Lhy3;

    if-eqz p3, :cond_3

    monitor-enter v0

    const/4 p0, 0x1

    const-wide/16 p2, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    :goto_0
    :try_start_0
    sget-object p0, Lj59;->a:Lj59;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_1
    iget-wide p0, v0, Lhy3;->o:J

    add-long/2addr p0, p2

    iput-wide p0, v0, Lhy3;->o:J

    goto :goto_1

    :cond_2
    iget-wide p0, v0, Lhy3;->m:J

    add-long/2addr p0, p2

    iput-wide p0, v0, Lhy3;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0

    :cond_3
    iget-object p3, v0, Lhy3;->i:Ldo8;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhy3$c;->c:Lhy3;

    iget-object v1, v1, Lhy3;->d:Ljava/lang/String;

    const-string v2, " ping"

    invoke-static {v0, v1, v2}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lhy3$c;->c:Lhy3;

    new-instance v1, Lhy3$c$a;

    invoke-direct {v1, v0, p0, p1, p2}, Lhy3$c$a;-><init>(Ljava/lang/String;Lhy3;II)V

    const-wide/16 p0, 0x0

    invoke-virtual {p3, v1, p0, p1}, Ldo8;->c(Ljl8;J)V

    return-void
.end method

.method public final d(ILjava/util/List;)V
    .locals 3

    iget-object p0, p0, Lhy3$c;->c:Lhy3;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhy3;->z:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lp03;->PROTOCOL_ERROR:Lp03;

    invoke-virtual {p0, p1, p2}, Lhy3;->n(ILp03;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lhy3;->z:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lhy3;->j:Ldo8;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lhy3;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lny3;

    invoke-direct {v2, v1, p0, p1, p2}, Lny3;-><init>(Ljava/lang/String;Lhy3;ILjava/util/List;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v2, p0, p1}, Ldo8;->c(Ljl8;J)V

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final e(ILp03;)V
    .locals 3

    iget-object p0, p0, Lhy3$c;->c:Lhy3;

    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lhy3;->j:Ldo8;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lhy3;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Loy3;

    invoke-direct {v2, v1, p0, p1, p2}, Loy3;-><init>(Ljava/lang/String;Lhy3;ILp03;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v2, p0, p1}, Ldo8;->c(Ljl8;J)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lhy3;->e(I)Lvy3;

    move-result-object p0

    if-eqz p0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lvy3;->m:Lp03;

    if-nez p1, :cond_1

    iput-object p2, p0, Lvy3;->m:Lp03;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lhy3$c;->c:Lhy3;

    iget-object v1, p0, Lhy3$c;->b:Luy3;

    sget-object v2, Lp03;->INTERNAL_ERROR:Lp03;

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v3, p0}, Luy3;->a(ZLhy3$c;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3, p0}, Luy3;->a(ZLhy3$c;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object p0, Lp03;->NO_ERROR:Lp03;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v2, Lp03;->CANCEL:Lp03;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0, p0, v2, v4}, Lhy3;->a(Lp03;Lp03;Ljava/io/IOException;)V

    :goto_0
    invoke-static {v1}, Lgb9;->d(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v3

    goto :goto_5

    :catch_0
    move-exception v3

    move-object v4, v3

    goto :goto_3

    :catchall_1
    move-exception v3

    :goto_1
    move-object p0, v2

    goto :goto_5

    :catch_1
    move-exception p0

    move-object v4, p0

    move-object p0, v2

    goto :goto_3

    :cond_1
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    const-string v3, "Required SETTINGS preface not received"

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    move-object v3, p0

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_2

    :goto_3
    :try_start_4
    sget-object p0, Lp03;->PROTOCOL_ERROR:Lp03;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0, p0, p0, v4}, Lhy3;->a(Lp03;Lp03;Ljava/io/IOException;)V

    goto :goto_0

    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_5
    invoke-virtual {v0, p0, v2, v4}, Lhy3;->a(Lp03;Lp03;Ljava/io/IOException;)V

    invoke-static {v1}, Lgb9;->d(Ljava/io/Closeable;)V

    throw v3
.end method
