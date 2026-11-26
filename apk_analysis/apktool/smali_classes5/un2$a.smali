.class public final Lun2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lun2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lun2$b;

.field public final b:[Z

.field public c:Z

.field public final synthetic d:Lun2;


# direct methods
.method public constructor <init>(Lun2;Lun2$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lun2$b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lun2$a;->d:Lun2;

    iput-object p2, p0, Lun2$a;->a:Lun2$b;

    iget-boolean p2, p2, Lun2$b;->e:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x2

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lun2$a;->b:[Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lun2$a;->d:Lun2;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lun2$a;->c:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lun2$a;->a:Lun2$b;

    iget-object v1, v1, Lun2$b;->g:Lun2$a;

    invoke-static {v1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lun2;->n(Lun2$a;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lun2$a;->c:Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string p0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lun2$a;->d:Lun2;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lun2$a;->c:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lun2$a;->a:Lun2$b;

    iget-object v1, v1, Lun2$b;->g:Lun2$a;

    invoke-static {v1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, v2}, Lun2;->n(Lun2$a;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lun2$a;->c:Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string p0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lun2$a;->a:Lun2$b;

    iget-object v1, v0, Lun2$b;->g:Lun2$a;

    invoke-static {v1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lun2$a;->d:Lun2;

    iget-boolean v2, v1, Lun2;->k:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lun2;->n(Lun2$a;Z)V

    return-void

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, v0, Lun2$b;->f:Z

    :cond_1
    return-void
.end method

.method public final d(I)Ls18;
    .locals 5

    iget-object v0, p0, Lun2$a;->d:Lun2;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lun2$a;->c:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lun2$a;->a:Lun2$b;

    iget-object v1, v1, Lun2$b;->g:Lun2$a;

    invoke-static {v1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lmj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lun2$a;->a:Lun2$b;

    iget-boolean v1, v1, Lun2$b;->e:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lun2$a;->b:[Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lun2$a;->a:Lun2$b;

    iget-object v1, v1, Lun2$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, Lt06;

    new-instance v4, Lwv8;

    invoke-direct {v4}, Lwv8;-><init>()V

    invoke-direct {v3, v2, v4}, Lt06;-><init>(Ljava/io/OutputStream;Lwv8;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, Lt06;

    new-instance p1, Lwv8;

    invoke-direct {p1}, Lwv8;-><init>()V

    invoke-direct {v3, v2, p1}, Lt06;-><init>(Ljava/io/OutputStream;Lwv8;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    new-instance p1, Ll53;

    new-instance v1, Lun2$a$a;

    invoke-direct {v1, v0, p0}, Lun2$a$a;-><init>(Lun2;Lun2$a;)V

    invoke-direct {p1, v3, v1}, Ll53;-><init>(Ls18;Lnl3;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-object p1

    :catch_1
    :try_start_6
    new-instance p0, Lmj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_2
    :try_start_7
    const-string p0, "Check failed."

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    monitor-exit v0

    throw p0
.end method
