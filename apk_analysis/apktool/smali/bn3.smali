.class public final synthetic Lbn3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Z

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(JLjava/util/concurrent/ScheduledExecutorService;Ljava/lang/Object;ZLcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lbn3;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lbn3;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lbn3;->d:Ljava/lang/Object;

    iput-boolean p5, p0, Lbn3;->e:Z

    iput-wide p1, p0, Lbn3;->f:J

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 7

    iget-boolean v3, p0, Lbn3;->e:Z

    iget-wide v4, p0, Lbn3;->f:J

    iget-object v0, p0, Lbn3;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lbn3;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lbn3;->d:Ljava/lang/Object;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroidx/camera/core/impl/utils/futures/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Object;ZJLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
