.class public final Ln93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh24;


# instance fields
.field public final b:Lj46;

.field public final c:Lw93;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/AutoCloseable;

.field public final f:Ljava/lang/Object;

.field public g:Z

.field public h:Liy6;


# direct methods
.method public constructor <init>(Lj46;Lw93;Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln93;->b:Lj46;

    iput-object p2, p0, Ln93;->c:Lw93;

    iput-object p3, p0, Ln93;->d:Ljava/lang/String;

    iput-object p4, p0, Ln93;->e:Ljava/lang/AutoCloseable;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln93;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final J()Lj46;
    .locals 2

    iget-object v0, p0, Ln93;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ln93;->g:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Ln93;->b:Lj46;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p0, "closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public final L()Lwu0;
    .locals 3

    iget-object v0, p0, Ln93;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ln93;->g:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Ln93;->h:Liy6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Ln93;->c:Lw93;

    iget-object v2, p0, Ln93;->b:Lj46;

    invoke-virtual {v1, v2}, Lw93;->Q(Lj46;)Lv48;

    move-result-object v1

    invoke-static {v1}, Lc84;->f(Lv48;)Liy6;

    move-result-object v1

    iput-object v1, p0, Ln93;->h:Liy6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_2
    const-string p0, "closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Ln93;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ln93;->g:Z

    iget-object v1, p0, Ln93;->h:Liy6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Liy6;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    throw p0

    :catch_1
    :cond_0
    :goto_0
    iget-object p0, p0, Ln93;->e:Ljava/lang/AutoCloseable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    :try_start_3
    invoke-static {p0}, Lrk3;->d(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_2
    move-exception p0

    :try_start_4
    throw p0

    :catch_3
    :cond_1
    :goto_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getFileSystem()Lw93;
    .locals 0

    iget-object p0, p0, Ln93;->c:Lw93;

    return-object p0
.end method

.method public final getMetadata()Lh24$a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
