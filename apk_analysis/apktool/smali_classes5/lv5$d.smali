.class public final Llv5$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llv5;->d(Lnz4$a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Llv5;


# direct methods
.method public constructor <init>(Llv5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llv5$d;->b:Llv5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Llv5$d;->b:Llv5;

    iget-object v0, v0, Llv5;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llv5$d;->b:Llv5;

    const v2, 0x7fffffff

    iput v2, v1, Llv5;->G:I

    iget-object v1, v1, Llv5;->H:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const-string v2, "Pending streams detected during transport start. RPCs should not be started before transport is ready."

    invoke-static {v1, v2}, Lo8;->s(ZLjava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Llv5$d;->b:Llv5;

    iget-object v0, p0, Llv5;->q:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Llv5;->v:Llv5$e;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
