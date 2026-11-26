.class public final Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;


# instance fields
.field private final capacity:I

.field private final channel:Lx81;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx81<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onUnprocessedElements:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/util/List<",
            "+TT;>;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final process:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "TT;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final prune:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/util/List<",
            "TT;>;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Lfr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfr<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final started:Lht;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->Companion:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;

    return-void
.end method

.method public constructor <init>(ILnl3;Lnl3;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Ljava/util/List<",
            "TT;>;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/util/List<",
            "+TT;>;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-TT;-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->capacity:I

    iput-object p2, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->prune:Lnl3;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->onUnprocessedElements:Lnl3;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->process:Lbm3;

    const/4 p2, 0x0

    invoke-static {p2}, Lkt;->a(Z)Lht;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->started:Lht;

    new-instance p2, Len4;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Len4;-><init>(Ljava/lang/Object;I)V

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-static {p1, p4, p2, p3}, Ll91;->a(ILcu0;Lnl3;I)Lmu0;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel:Lx81;

    new-instance p1, Lfr;

    invoke-direct {p1}, Lfr;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->queue:Lfr;

    return-void
.end method

.method public synthetic constructor <init>(ILnl3;Lnl3;Lbm3;ILjh2;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const p1, 0x7fffffff

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 49
    new-instance p2, Lay;

    const/4 p6, 0x2

    invoke-direct {p2, p6}, Lay;-><init>(I)V

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 50
    new-instance p3, Lus2;

    const/4 p5, 0x4

    invoke-direct {p3, p5}, Lus2;-><init>(I)V

    .line 51
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;-><init>(ILnl3;Lnl3;Lbm3;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/util/List;)Lj59;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final _init_$lambda$1(Ljava/util/List;)Lj59;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Object;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel$lambda$0(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$closeAndReleaseUnprocessedElements(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->closeAndReleaseUnprocessedElements(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$getChannel$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lx81;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel:Lx81;

    return-object p0
.end method

.method public static final synthetic access$getProcess$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lbm3;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->process:Lbm3;

    return-object p0
.end method

.method public static final synthetic access$getPrune$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lnl3;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->prune:Lnl3;

    return-object p0
.end method

.method public static final synthetic access$getQueue$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lfr;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->queue:Lfr;

    return-object p0
.end method

.method public static final synthetic access$getStarted$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lht;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->started:Lht;

    return-object p0
.end method

.method public static final synthetic access$processingLoop(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->processingLoop(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/List;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->_init_$lambda$0(Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/List;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->_init_$lambda$1(Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final channel$lambda$0(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Object;)Lj59;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->queue:Lfr;

    invoke-virtual {p0, p1}, Lfr;->addLast(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final closeAndReleaseUnprocessedElements(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel:Lx81;

    invoke-interface {v0, p1}, Lno7;->close(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel:Lx81;

    invoke-interface {p1}, Lqz6;->i()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    instance-of v0, p1, Lp91$b;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->queue:Lfr;

    if-nez v0, :cond_0

    invoke-static {p1}, Lp91;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lfr;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel:Lx81;

    invoke-interface {p1}, Lqz6;->i()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lfr;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->onUnprocessedElements:Lnl3;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->queue:Lfr;

    invoke-static {v0}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->queue:Lfr;

    invoke-virtual {p0}, Lfr;->clear()V

    :cond_1
    return-void
.end method

.method private final processingLoop(Le02;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;-><init>(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Le02;)V

    invoke-static {v0, p1}, Lrm9;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel:Lx81;

    invoke-interface {p0, p1, p2}, Lno7;->send(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final emitChecked(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel:Lx81;

    invoke-interface {p0, p1}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lp91$b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Failed to emit item to ProcessingQueue!: "

    invoke-static {p0}, Lp91;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getCapacity()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->capacity:I

    return p0
.end method

.method public final tryEmit(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel:Lx81;

    invoke-interface {p0, p1}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lp91$b;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
