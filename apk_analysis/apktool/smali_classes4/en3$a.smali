.class public final Len3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Len3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final c:Lxm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxm3<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lxm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Lxm3<",
            "-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Len3$a;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Len3$a;->c:Lxm3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Len3$a;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    instance-of v1, v0, Lj94;

    iget-object p0, p0, Len3$a;->c:Lxm3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lj94;

    invoke-virtual {v1}, Lj94;->a()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v1}, Lxm3;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Len3;->V(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0, v0}, Lxm3;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p0, v0}, Lxm3;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p0, v0}, Lxm3;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    new-instance v1, Lod5$a$b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, v0, Lod5$a;->c:Lod5$a$b;

    iput-object v1, v2, Lod5$a$b;->c:Lod5$a$b;

    iput-object v1, v0, Lod5$a;->c:Lod5$a$b;

    iget-object p0, p0, Len3$a;->c:Lxm3;

    iput-object p0, v1, Lod5$a$b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
