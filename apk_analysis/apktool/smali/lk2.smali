.class public final synthetic Llk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Executor;ZLjava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llk2;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Llk2;->c:Ljava/util/concurrent/Executor;

    iput-boolean p3, p0, Llk2;->d:Z

    iput-object p4, p0, Llk2;->e:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Llk2;->d:Z

    iget-object v1, p0, Llk2;->e:Ljava/util/Collection;

    iget-object v2, p0, Llk2;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Llk2;->c:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0, v0, v1, p1}, Landroidx/camera/core/impl/DeferrableSurfaces;->a(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Executor;ZLjava/util/Collection;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
