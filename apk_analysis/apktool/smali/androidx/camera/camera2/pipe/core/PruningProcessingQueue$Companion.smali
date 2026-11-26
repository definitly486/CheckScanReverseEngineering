.class public final Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final processIn(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ly22;)Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/camera2/pipe/core/PruningProcessingQueue<",
            "TT;>;",
            "Ly22;",
            ")",
            "Landroidx/camera/camera2/pipe/core/PruningProcessingQueue<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getStarted$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lht;

    move-result-object p0

    invoke-virtual {p0}, Lht;->a()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    new-instance p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion$processIn$job$1;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion$processIn$job$1;-><init>(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Le02;)V

    const/4 v1, 0x3

    invoke-static {p2, v0, v0, p0, v1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    invoke-virtual {p0}, Lsb4;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, v0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$closeAndReleaseUnprocessedElements(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Throwable;)V

    :cond_0
    return-object p1

    :cond_1
    const-string p0, "PruningProcessingQueue cannot be re-started!"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v0
.end method
