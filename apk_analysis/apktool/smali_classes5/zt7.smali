.class public final Lzt7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyt7$b;

.field public final synthetic c:Lyt7$c;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lyt7;


# direct methods
.method public constructor <init>(Lyt7;Lyt7$b;Lyt7$c;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzt7;->e:Lyt7;

    iput-object p2, p0, Lzt7;->b:Lyt7$b;

    iput-object p3, p0, Lzt7;->c:Lyt7$c;

    iput-object p4, p0, Lzt7;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lzt7;->e:Lyt7;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lzt7;->b:Lyt7$b;

    iget v1, v1, Lyt7$b;->b:I

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lzt7;->e:Lyt7;

    iget-object v1, v1, Lyt7;->a:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Lzt7;->c:Lyt7$c;

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzt7;->e:Lyt7;

    iget-object v1, v1, Lyt7;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzt7;->e:Lyt7;

    iget-object v1, v1, Lyt7;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v1, p0, Lzt7;->e:Lyt7;

    const/4 v2, 0x0

    iput-object v2, v1, Lyt7;->b:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lzt7;->c:Lyt7$c;

    iget-object p0, p0, Lzt7;->d:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lyt7$c;->b(Ljava/lang/Object;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
