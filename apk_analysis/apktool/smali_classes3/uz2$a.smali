.class public final Luz2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luz2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ly08;

.field public final synthetic c:Luz2;


# direct methods
.method public constructor <init>(Luz2;Ly08;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luz2$a;->c:Luz2;

    iput-object p2, p0, Luz2$a;->b:Ly08;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Luz2$a;->b:Ly08;

    iget-object v1, v0, Ly08;->b:Lc78$a;

    invoke-virtual {v1}, Lc78$a;->a()V

    iget-object v0, v0, Ly08;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Luz2$a;->c:Luz2;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Luz2$a;->c:Luz2;

    iget-object v2, v2, Luz2;->b:Luz2$e;

    iget-object v3, p0, Luz2$a;->b:Ly08;

    iget-object v2, v2, Luz2$e;->b:Ljava/util/ArrayList;

    new-instance v4, Luz2$d;

    sget-object v5, Ly13;->b:Ly13$b;

    invoke-direct {v4, v3, v5}, Luz2$d;-><init>(Ly08;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Luz2$a;->c:Luz2;

    iget-object v3, p0, Luz2$a;->b:Ly08;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, v2, Luz2;->r:Lcom/bumptech/glide/load/engine/GlideException;

    const/4 v4, 0x5

    invoke-virtual {v3, v2, v4}, Ly08;->h(Lcom/bumptech/glide/load/engine/GlideException;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    new-instance v2, Lvy0;

    invoke-direct {v2, p0}, Lvy0;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Luz2$a;->c:Luz2;

    invoke-virtual {p0}, Luz2;->c()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method
