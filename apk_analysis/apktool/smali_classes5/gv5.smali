.class public final Lgv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfy0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgv5$b;,
        Lgv5$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfy0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lm37;

.field public final c:Ljava/lang/Object;

.field public final d:[Ljava/lang/Object;

.field public final e:Lokhttp3/a$a;

.field public final f:Li02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li02<",
            "Lb57;",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile g:Z

.field public h:Lokhttp3/a;

.field public i:Ljava/lang/Throwable;

.field public j:Z


# direct methods
.method public constructor <init>(Lm37;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/a$a;Li02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm37;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Lokhttp3/a$a;",
            "Li02<",
            "Lb57;",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgv5;->b:Lm37;

    iput-object p2, p0, Lgv5;->c:Ljava/lang/Object;

    iput-object p3, p0, Lgv5;->d:[Ljava/lang/Object;

    iput-object p4, p0, Lgv5;->e:Lokhttp3/a$a;

    iput-object p5, p0, Lgv5;->f:Li02;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgv5;->g:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgv5;->h:Lokhttp3/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/a;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final clone()Lfy0;
    .locals 6

    new-instance v0, Lgv5;

    iget-object v4, p0, Lgv5;->e:Lokhttp3/a$a;

    iget-object v5, p0, Lgv5;->f:Li02;

    iget-object v1, p0, Lgv5;->b:Lm37;

    iget-object v2, p0, Lgv5;->c:Ljava/lang/Object;

    iget-object v3, p0, Lgv5;->d:[Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lgv5;-><init>(Lm37;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/a$a;Li02;)V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 6

    .line 16
    new-instance v0, Lgv5;

    iget-object v4, p0, Lgv5;->e:Lokhttp3/a$a;

    iget-object v5, p0, Lgv5;->f:Li02;

    iget-object v1, p0, Lgv5;->b:Lm37;

    iget-object v2, p0, Lgv5;->c:Ljava/lang/Object;

    iget-object v3, p0, Lgv5;->d:[Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lgv5;-><init>(Lm37;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/a$a;Li02;)V

    return-object v0
.end method

.method public final e()Lokhttp3/a;
    .locals 15

    iget-object v0, p0, Lgv5;->b:Lm37;

    iget-object v1, v0, Lm37;->k:[Lh36;

    iget-object v2, p0, Lgv5;->d:[Ljava/lang/Object;

    array-length v3, v2

    array-length v4, v1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_b

    new-instance v6, Li37;

    iget-object v7, v0, Lm37;->d:Ljava/lang/String;

    iget-object v8, v0, Lm37;->c:Lfz3;

    iget-object v9, v0, Lm37;->e:Ljava/lang/String;

    iget-object v10, v0, Lm37;->f:Ljv3;

    iget-object v11, v0, Lm37;->g:Lj95;

    iget-boolean v12, v0, Lm37;->h:Z

    iget-boolean v13, v0, Lm37;->i:Z

    iget-boolean v14, v0, Lm37;->j:Z

    invoke-direct/range {v6 .. v14}, Li37;-><init>(Ljava/lang/String;Lfz3;Ljava/lang/String;Ljv3;Lj95;ZZZ)V

    iget-boolean v4, v0, Lm37;->l:Z

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v3, :cond_1

    aget-object v9, v2, v8

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v9, v1, v8

    aget-object v10, v2, v8

    invoke-virtual {v9, v6, v10}, Lh36;->a(Li37;Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v6, Li37;->d:Lfz3$a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lfz3$a;->a()Lfz3;

    move-result-object v1

    goto :goto_3

    :cond_2
    iget-object v1, v6, Li37;->c:Ljava/lang/String;

    iget-object v2, v6, Li37;->b:Lfz3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v3, Lfz3$a;

    invoke-direct {v3}, Lfz3$a;-><init>()V

    invoke-virtual {v3, v2, v1}, Lfz3$a;->c(Lfz3;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lfz3$a;->a()Lfz3;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v5

    :goto_2
    if-eqz v1, :cond_a

    :goto_3
    iget-object v2, v6, Li37;->k:Lg37;

    if-nez v2, :cond_7

    iget-object v3, v6, Li37;->j:Lmi3$a;

    if-eqz v3, :cond_4

    new-instance v2, Lmi3;

    iget-object v5, v3, Lmi3$a;->a:Ljava/util/ArrayList;

    iget-object v3, v3, Lmi3$a;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v5, v3}, Lmi3;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_4
    iget-object v3, v6, Li37;->i:Llg5$a;

    if-eqz v3, :cond_6

    iget-object v2, v3, Llg5$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v5, Llg5;

    iget-object v7, v3, Llg5$a;->a:Lgx0;

    iget-object v3, v3, Llg5$a;->b:Lj95;

    invoke-static {v2}, Lgb9;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v7, v3, v2}, Llg5;-><init>(Lgx0;Lj95;Ljava/util/List;)V

    move-object v2, v5

    goto :goto_4

    :cond_5
    const-string p0, "Multipart body must have at least one part."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_6
    iget-boolean v3, v6, Li37;->h:Z

    if-eqz v3, :cond_7

    new-array v2, v7, [B

    const-wide/16 v8, 0x0

    move-wide v10, v8

    move-wide v12, v8

    invoke-static/range {v8 .. v13}, Lgb9;->c(JJJ)V

    new-instance v3, Lf37;

    invoke-direct {v3, v5, v7, v2}, Lf37;-><init>(Lj95;I[B)V

    move-object v2, v3

    :cond_7
    :goto_4
    iget-object v3, v6, Li37;->g:Lj95;

    iget-object v5, v6, Li37;->f:Ljv3$a;

    if-eqz v3, :cond_9

    if-eqz v2, :cond_8

    new-instance v7, Li37$a;

    invoke-direct {v7, v2, v3}, Li37$a;-><init>(Lg37;Lj95;)V

    move-object v2, v7

    goto :goto_5

    :cond_8
    const-string v7, "Content-Type"

    iget-object v3, v3, Lj95;->a:Ljava/lang/String;

    invoke-virtual {v5, v7, v3}, Ljv3$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    iget-object v3, v6, Li37;->e:Lb37$a;

    iput-object v1, v3, Lb37$a;->a:Lfz3;

    invoke-virtual {v5}, Ljv3$a;->e()Ljv3;

    move-result-object v1

    invoke-virtual {v1}, Ljv3;->d()Ljv3$a;

    move-result-object v1

    iput-object v1, v3, Lb37$a;->c:Ljv3$a;

    iget-object v1, v6, Li37;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lb37$a;->c(Ljava/lang/String;Lg37;)V

    new-instance v1, Lga4;

    iget-object v2, v0, Lm37;->a:Ljava/lang/Class;

    iget-object v0, v0, Lm37;->b:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lgv5;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v5, v0, v4}, Lga4;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/ArrayList;)V

    const-class v0, Lga4;

    invoke-virtual {v3, v0, v1}, Lb37$a;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lb37$a;->a()Lb37;

    move-result-object v0

    iget-object p0, p0, Lgv5;->e:Lokhttp3/a$a;

    invoke-interface {p0, v0}, Lokhttp3/a$a;->b(Lb37;)Ljy6;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Malformed URL. Base: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Relative: "

    iget-object v1, v6, Li37;->c:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcg;->g(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_b
    const-string p0, "Argument count ("

    const-string v0, ") doesn\'t match expected count ("

    invoke-static {v3, p0, v0}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length v0, v1

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v5
.end method

.method public final h()La57;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La57<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgv5;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgv5;->j:Z

    invoke-virtual {p0}, Lgv5;->i()Lokhttp3/a;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lgv5;->g:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lokhttp3/a;->cancel()V

    :cond_0
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/a;)Lz47;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgv5;->j(Lz47;)La57;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final i()Lokhttp3/a;
    .locals 1

    iget-object v0, p0, Lgv5;->h:Lokhttp3/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lgv5;->i:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    instance-of p0, v0, Ljava/io/IOException;

    if-nez p0, :cond_2

    instance-of p0, v0, Ljava/lang/RuntimeException;

    if-eqz p0, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lgv5;->e()Lokhttp3/a;

    move-result-object v0

    iput-object v0, p0, Lgv5;->h:Lokhttp3/a;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-static {v0}, Lkb9;->m(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lgv5;->i:Ljava/lang/Throwable;

    throw v0
.end method

.method public final j(Lz47;)La57;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz47;",
            ")",
            "La57<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p1, Lz47;->h:Lb57;

    invoke-virtual {p1}, Lz47;->p()Lz47$a;

    move-result-object p1

    new-instance v1, Lgv5$c;

    invoke-virtual {v0}, Lb57;->p()Lj95;

    move-result-object v2

    invoke-virtual {v0}, Lb57;->o()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lgv5$c;-><init>(Lj95;J)V

    iput-object v1, p1, Lz47$a;->g:Lb57;

    invoke-virtual {p1}, Lz47$a;->a()Lz47;

    move-result-object p1

    iget v1, p1, Lz47;->e:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_4

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lgv5$b;

    invoke-direct {v1, v0}, Lgv5$b;-><init>(Lb57;)V

    :try_start_0
    iget-object p0, p0, Lgv5;->f:Li02;

    invoke-interface {p0, v1}, Li02;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, La57;->d(Ljava/lang/Object;Lz47;)La57;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    iget-object p1, v1, Lgv5$b;->e:Ljava/io/IOException;

    if-nez p1, :cond_2

    throw p0

    :cond_2
    throw p1

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lb57;->close()V

    const/4 p0, 0x0

    invoke-static {p0, p1}, La57;->d(Ljava/lang/Object;Lz47;)La57;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    :try_start_1
    new-instance p0, Lbu0;

    invoke-direct {p0}, Lbu0;-><init>()V

    invoke-virtual {v0}, Lb57;->L()Lwu0;

    move-result-object v1

    invoke-interface {v1, p0}, Lwu0;->o0(Ls18;)J

    invoke-virtual {v0}, Lb57;->p()Lj95;

    move-result-object v1

    invoke-virtual {v0}, Lb57;->o()J

    move-result-wide v2

    new-instance v4, Lc57;

    invoke-direct {v4, v1, v2, v3, p0}, Lc57;-><init>(Lj95;JLbu0;)V

    invoke-static {v4, p1}, La57;->b(Lc57;Lz47;)La57;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lb57;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lb57;->close()V

    throw p0
.end method

.method public final declared-synchronized m()Lb37;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgv5;->i()Lokhttp3/a;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/a;->m()Lb37;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final n()Z
    .locals 2

    iget-boolean v0, p0, Lgv5;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgv5;->h:Lokhttp3/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lokhttp3/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final o(Lsy0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsy0<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgv5;->j:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgv5;->j:Z

    iget-object v0, p0, Lgv5;->h:Lokhttp3/a;

    iget-object v1, p0, Lgv5;->i:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lgv5;->e()Lokhttp3/a;

    move-result-object v2

    iput-object v2, p0, Lgv5;->h:Lokhttp3/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lkb9;->m(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lgv5;->i:Ljava/lang/Throwable;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {p1, p0, v1}, Lsy0;->a(Lfy0;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lgv5;->g:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lokhttp3/a;->cancel()V

    :cond_2
    new-instance v1, Lgv5$a;

    invoke-direct {v1, p0, p1}, Lgv5$a;-><init>(Lgv5;Lsy0;)V

    invoke-static {v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/a;Lty0;)V

    return-void

    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
