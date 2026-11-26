.class public final La58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh24;


# instance fields
.field public final b:Lw93;

.field public final c:Lh24$a;

.field public final d:Ljava/lang/Object;

.field public e:Z

.field public final f:Lwu0;


# direct methods
.method public constructor <init>(Lwu0;Lw93;Lh24$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La58;->b:Lw93;

    iput-object p3, p0, La58;->c:Lh24$a;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La58;->d:Ljava/lang/Object;

    iput-object p1, p0, La58;->f:Lwu0;

    return-void
.end method


# virtual methods
.method public final J()Lj46;
    .locals 2

    iget-object v0, p0, La58;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, La58;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    const-string p0, "closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final L()Lwu0;
    .locals 2

    iget-object v0, p0, La58;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, La58;->e:Z

    if-nez v1, :cond_1

    iget-object p0, p0, La58;->f:Lwu0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    :try_start_1
    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
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

.method public final close()V
    .locals 2

    iget-object v0, p0, La58;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, La58;->e:Z

    iget-object p0, p0, La58;->f:Lwu0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
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
    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getFileSystem()Lw93;
    .locals 0

    iget-object p0, p0, La58;->b:Lw93;

    return-object p0
.end method

.method public final getMetadata()Lh24$a;
    .locals 0

    iget-object p0, p0, La58;->c:Lh24$a;

    return-object p0
.end method
