.class public final Lyads/dw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/r75;

.field public final synthetic c:Lyads/ew;


# direct methods
.method public constructor <init>(Lyads/ew;Lyads/r75;)V
    .locals 0

    iput-object p1, p0, Lyads/dw;->c:Lyads/ew;

    iput-object p2, p0, Lyads/dw;->b:Lyads/r75;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lyads/dw;->c:Lyads/ew;

    iget-object v0, v0, Lyads/ew;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object p0, p0, Lyads/dw;->b:Lyads/r75;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
