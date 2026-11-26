.class public final Landroidx/camera/camera2/pipe/core/ProcessingQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/core/ProcessingQueue$Companion;
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
.field public static final Companion:Landroidx/camera/camera2/pipe/core/ProcessingQueue$Companion;


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
            "Ljava/util/List<",
            "TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
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

    new-instance v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->Companion:Landroidx/camera/camera2/pipe/core/ProcessingQueue$Companion;

    return-void
.end method

.method public constructor <init>(ILnl3;Lbm3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Ljava/util/List<",
            "+TT;>;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Ljava/util/List<",
            "TT;>;-",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->capacity:I

    iput-object p2, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->onUnprocessedElements:Lnl3;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->process:Lbm3;

    const/4 p2, 0x0

    invoke-static {p2}, Lkt;->a(Z)Lht;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->started:Lht;

    new-instance p2, Lny2;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lny2;-><init>(Ljava/lang/Object;I)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Ll91;->a(ILcu0;Lnl3;I)Lmu0;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lx81;

    new-instance p1, Lfr;

    invoke-direct {p1}, Lfr;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lfr;

    return-void
.end method

.method public synthetic constructor <init>(ILnl3;Lbm3;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const p1, 0x7fffffff

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 43
    new-instance p2, Lwu2;

    const/4 p4, 0x4

    invoke-direct {p2, p4}, Lwu2;-><init>(I)V

    .line 44
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;-><init>(ILnl3;Lbm3;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/util/List;)Lj59;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(Landroidx/camera/camera2/pipe/core/ProcessingQueue;Ljava/lang/Object;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel$lambda$0(Landroidx/camera/camera2/pipe/core/ProcessingQueue;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getStarted$p(Landroidx/camera/camera2/pipe/core/ProcessingQueue;)Lht;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->started:Lht;

    return-object p0
.end method

.method public static final synthetic access$processingLoop(Landroidx/camera/camera2/pipe/core/ProcessingQueue;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->processingLoop(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$releaseUnprocessedElements(Landroidx/camera/camera2/pipe/core/ProcessingQueue;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->releaseUnprocessedElements(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->_init_$lambda$0(Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final channel$lambda$0(Landroidx/camera/camera2/pipe/core/ProcessingQueue;Ljava/lang/Object;)Lj59;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lfr;

    invoke-virtual {p0, p1}, Lfr;->addLast(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final processingLoop(Le02;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;-><init>(Landroidx/camera/camera2/pipe/core/ProcessingQueue;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget v2, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->I$0:I

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :try_start_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    :try_start_2
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lx81;

    iput v4, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    invoke-interface {p1, v0}, Lqz6;->b(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_2
    iget-object v2, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lfr;

    invoke-virtual {v2, p1}, Lfr;->addLast(Ljava/lang/Object;)V

    :cond_6
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lfr;

    invoke-virtual {p1}, Lfr;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lx81;

    invoke-interface {p1}, Lqz6;->i()Ljava/lang/Object;

    move-result-object p1

    :goto_3
    instance-of v2, p1, Lp91$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v5, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lfr;

    if-nez v2, :cond_7

    :try_start_3
    invoke-static {p1}, Lp91;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Lfr;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lx81;

    invoke-interface {p1}, Lqz6;->i()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Ld1;->size()I

    move-result v2

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->process:Lbm3;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lfr;

    iput v2, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->I$0:I

    iput v3, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    invoke-interface {p1, v5, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_4
    return-object v1

    :cond_8
    :goto_5
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lfr;

    invoke-virtual {p1}, Ld1;->size()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v2, p1, :cond_6

    goto :goto_1

    :goto_6
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->releaseUnprocessedElements(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final releaseUnprocessedElements(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lx81;

    invoke-interface {v0, p1}, Lno7;->close(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lx81;

    invoke-interface {p1}, Lqz6;->i()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    instance-of v0, p1, Lp91$b;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lfr;

    if-nez v0, :cond_0

    invoke-static {p1}, Lp91;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lfr;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lx81;

    invoke-interface {p1}, Lqz6;->i()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lfr;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->onUnprocessedElements:Lnl3;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lfr;

    invoke-static {v0}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lfr;

    invoke-virtual {p0}, Lfr;->clear()V

    :cond_1
    return-void
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

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lx81;

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

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lx81;

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

    iget p0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->capacity:I

    return p0
.end method

.method public final tryEmit(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lx81;

    invoke-interface {p0, p1}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lp91$b;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
