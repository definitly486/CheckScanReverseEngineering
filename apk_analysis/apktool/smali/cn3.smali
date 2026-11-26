.class public final synthetic Lcn3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/Object;ZLcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn3;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p2, p0, Lcn3;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcn3;->d:Z

    iput-object p4, p0, Lcn3;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcn3;->d:Z

    iget-object v1, p0, Lcn3;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcn3;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object p0, p0, Lcn3;->c:Ljava/lang/Object;

    invoke-static {v2, p0, v0, v1}, Landroidx/camera/core/impl/utils/futures/Futures;->h(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/Object;ZLcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
