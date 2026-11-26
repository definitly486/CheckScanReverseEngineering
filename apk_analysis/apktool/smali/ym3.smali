.class public final synthetic Lym3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(JLjava/util/concurrent/ScheduledExecutorService;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lym3;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lym3;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iput-wide p1, p0, Lym3;->d:J

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lym3;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v1, p0, Lym3;->d:J

    iget-object p0, p0, Lym3;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->d(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
