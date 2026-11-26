.class public final Lz48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt82;
.implements Lt82$a;


# instance fields
.field public final b:Lmd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmd2<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lod2;

.field public volatile d:I

.field public volatile e:Lo82;

.field public volatile f:Ljava/lang/Object;

.field public volatile g:Lnc5$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc5$a<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile h:Lp82;


# direct methods
.method public constructor <init>(Lmd2;Lod2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz48;->b:Lmd2;

    iput-object p2, p0, Lz48;->c:Lod2;

    return-void
.end method


# virtual methods
.method public final a(Lkf4;Ljava/lang/Exception;Ls82;Ly82;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkf4;",
            "Ljava/lang/Exception;",
            "Ls82<",
            "*>;",
            "Ly82;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lz48;->c:Lod2;

    iget-object p0, p0, Lz48;->g:Lnc5$a;

    iget-object p0, p0, Lnc5$a;->c:Ls82;

    invoke-interface {p0}, Ls82;->c()Ly82;

    move-result-object p0

    invoke-virtual {p4, p1, p2, p3, p0}, Lod2;->a(Lkf4;Ljava/lang/Exception;Ls82;Ly82;)V

    return-void
.end method

.method public final b()Z
    .locals 5

    iget-object v0, p0, Lz48;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz48;->f:Ljava/lang/Object;

    iput-object v1, p0, Lz48;->f:Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, v0}, Lz48;->d(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x3

    const-string v4, "SourceGenerator"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Failed to properly rewind or write data to cache"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lz48;->e:Lo82;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz48;->e:Lo82;

    invoke-virtual {v0}, Lo82;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v2

    :cond_1
    iput-object v1, p0, Lz48;->e:Lo82;

    iput-object v1, p0, Lz48;->g:Lnc5$a;

    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    iget v1, p0, Lz48;->d:I

    iget-object v3, p0, Lz48;->b:Lmd2;

    invoke-virtual {v3}, Lmd2;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v1, p0, Lz48;->b:Lmd2;

    invoke-virtual {v1}, Lmd2;->b()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lz48;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lz48;->d:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnc5$a;

    iput-object v1, p0, Lz48;->g:Lnc5$a;

    iget-object v1, p0, Lz48;->g:Lnc5$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lz48;->b:Lmd2;

    iget-object v1, v1, Lmd2;->p:Lsn2;

    iget-object v3, p0, Lz48;->g:Lnc5$a;

    iget-object v3, v3, Lnc5$a;->c:Ls82;

    invoke-interface {v3}, Ls82;->c()Ly82;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsn2;->c(Ly82;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lz48;->b:Lmd2;

    iget-object v3, p0, Lz48;->g:Lnc5$a;

    iget-object v3, v3, Lnc5$a;->c:Ls82;

    invoke-interface {v3}, Ls82;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmd2;->c(Ljava/lang/Class;)Lgs4;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_3
    iget-object v0, p0, Lz48;->g:Lnc5$a;

    iget-object v1, p0, Lz48;->g:Lnc5$a;

    iget-object v1, v1, Lnc5$a;->c:Ls82;

    iget-object v3, p0, Lz48;->b:Lmd2;

    iget-object v3, v3, Lmd2;->o:Ljg6;

    new-instance v4, Ly48;

    invoke-direct {v4, p0, v0}, Ly48;-><init>(Lz48;Lnc5$a;)V

    invoke-interface {v1, v3, v4}, Ls82;->f(Ljg6;Ls82$a;)V

    move v0, v2

    goto :goto_1

    :cond_4
    return v0
.end method

.method public final c(Lkf4;Ljava/lang/Object;Ls82;Ly82;Lkf4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkf4;",
            "Ljava/lang/Object;",
            "Ls82<",
            "*>;",
            "Ly82;",
            "Lkf4;",
            ")V"
        }
    .end annotation

    move-object p4, p0

    iget-object p0, p4, Lz48;->c:Lod2;

    iget-object p4, p4, Lz48;->g:Lnc5$a;

    iget-object p4, p4, Lnc5$a;->c:Ls82;

    invoke-interface {p4}, Ls82;->c()Ly82;

    move-result-object p4

    move-object p5, p1

    invoke-virtual/range {p0 .. p5}, Lod2;->c(Lkf4;Ljava/lang/Object;Ls82;Ly82;Lkf4;)V

    return-void
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lz48;->g:Lnc5$a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lnc5$a;->c:Ls82;

    invoke-interface {p0}, Ls82;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 13

    const-string v0, "SourceGenerator"

    const-string v1, "Attempt to write: "

    const-string v2, "Finished encoding source to cache, key: "

    sget v3, Lcv4;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lz48;->b:Lmd2;

    iget-object v6, v6, Lmd2;->c:Lwq3;

    invoke-virtual {v6}, Lwq3;->a()Lcom/bumptech/glide/Registry;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/bumptech/glide/Registry;->g(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/a;

    move-result-object v6

    invoke-interface {v6}, Lcom/bumptech/glide/load/data/a;->a()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lz48;->b:Lmd2;

    invoke-virtual {v8, v7}, Lmd2;->d(Ljava/lang/Object;)Lvx2;

    move-result-object v8

    new-instance v9, Lq82;

    iget-object v10, p0, Lz48;->b:Lmd2;

    iget-object v10, v10, Lmd2;->i:Lxz5;

    invoke-direct {v9, v8, v7, v10}, Lq82;-><init>(Lvx2;Ljava/lang/Object;Lxz5;)V

    new-instance v7, Lp82;

    iget-object v10, p0, Lz48;->g:Lnc5$a;

    iget-object v10, v10, Lnc5$a;->a:Lkf4;

    iget-object v11, p0, Lz48;->b:Lmd2;

    iget-object v12, v11, Lmd2;->n:Lkf4;

    invoke-direct {v7, v10, v12}, Lp82;-><init>(Lkf4;Lkf4;)V

    iget-object v10, v11, Lmd2;->h:Lod2$d;

    check-cast v10, Lkz2$c;

    invoke-virtual {v10}, Lkz2$c;->a()Lrn2;

    move-result-object v10

    invoke-interface {v10, v7, v9}, Lrn2;->a(Lkf4;Lq82;)V

    const/4 v9, 0x2

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, ", data: "

    if-eqz v9, :cond_0

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", encoder: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", duration: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcv4;->a(J)D

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v10, v7}, Lrn2;->b(Lkf4;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iput-object v7, p0, Lz48;->h:Lp82;

    new-instance p1, Lo82;

    iget-object v0, p0, Lz48;->g:Lnc5$a;

    iget-object v0, v0, Lnc5$a;->a:Lkf4;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lz48;->b:Lmd2;

    invoke-direct {p1, v0, v1, p0}, Lo82;-><init>(Ljava/util/List;Lmd2;Lt82$a;)V

    iput-object p1, p0, Lz48;->e:Lo82;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lz48;->g:Lnc5$a;

    iget-object p0, p0, Lnc5$a;->c:Ls82;

    invoke-interface {p0}, Ls82;->b()V

    return v3

    :cond_1
    const/4 v2, 0x3

    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lz48;->h:Lp82;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly..."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object p1, v6

    :try_start_3
    iget-object v6, p0, Lz48;->c:Lod2;

    iget-object v0, p0, Lz48;->g:Lnc5$a;

    iget-object v7, v0, Lnc5$a;->a:Lkf4;

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/a;->a()Ljava/lang/Object;

    move-result-object v8

    iget-object p1, p0, Lz48;->g:Lnc5$a;

    iget-object v9, p1, Lnc5$a;->c:Ls82;

    iget-object p1, p0, Lz48;->g:Lnc5$a;

    iget-object p1, p1, Lnc5$a;->c:Ls82;

    invoke-interface {p1}, Ls82;->c()Ly82;

    move-result-object v10

    iget-object p1, p0, Lz48;->g:Lnc5$a;

    iget-object v11, p1, Lnc5$a;->a:Lkf4;

    invoke-virtual/range {v6 .. v11}, Lod2;->c(Lkf4;Ljava/lang/Object;Ls82;Ly82;Lkf4;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v5

    :catchall_1
    move-exception v0

    move-object p1, v0

    move v5, v3

    :goto_1
    if-nez v5, :cond_3

    iget-object p0, p0, Lz48;->g:Lnc5$a;

    iget-object p0, p0, Lnc5$a;->c:Ls82;

    invoke-interface {p0}, Ls82;->b()V

    :cond_3
    throw p1
.end method
