.class public final Landroidx/camera/camera2/pipe/FrameCapture$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/FrameCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/camera2/pipe/FrameCapture$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/FrameCapture$Companion;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/FrameCapture$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final useEachFrame$$forInline(Ljava/util/List;Lnl3;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/Frame;",
            "Lj59;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/pipe/core/AutoCloseables;->INSTANCE:Landroidx/camera/camera2/pipe/core/AutoCloseables;

    new-instance p0, Lp07;

    invoke-direct {p0}, Lp07;-><init>()V

    :goto_0
    :try_start_0
    iget p3, p0, Lp07;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget p3, p0, Lp07;->b:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v0, p0, Lp07;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp07;->b:I

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/pipe/FrameCapture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/FrameCapture;->awaitFrame(Le02;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/AutoCloseable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object v3, v2

    check-cast v3, Landroidx/camera/camera2/pipe/Frame;

    invoke-static {v0}, Lbj;->e(Landroidx/camera/camera2/pipe/FrameCapture;)V

    invoke-interface {p2, v3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v2, v1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {p3, v1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_6
    invoke-static {v2, p2}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-static {p3, p2}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_5
    :cond_0
    :goto_2
    iget p2, p0, Lp07;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    :try_start_9
    iget p2, p0, Lp07;->b:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lp07;->b:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/AutoCloseable;

    invoke-static {p2}, Lrk3;->d(Ljava/lang/AutoCloseable;)V

    sget-object p2, Lj59;->a:Lj59;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_3
    :try_start_a
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception p3

    :goto_4
    iget v0, p0, Lp07;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_b
    iget v0, p0, Lp07;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lp07;->b:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;

    invoke-static {v0}, Lrk3;->d(Ljava/lang/AutoCloseable;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v0

    invoke-static {p2, v0}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    sget-object v0, Lj59;->a:Lj59;

    goto :goto_4

    :cond_2
    throw p3
.end method

.method private final useEachFrameAsync$$forInline(Ljava/util/List;Ly22;Ldm3;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            ">;",
            "Ly22;",
            "Ldm3<",
            "-",
            "Ly22;",
            "-",
            "Landroidx/camera/camera2/pipe/Frame;",
            "-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "+TR;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/pipe/core/AutoCloseables;->INSTANCE:Landroidx/camera/camera2/pipe/core/AutoCloseables;

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    invoke-direct {p0, p4}, Ljava/util/ArrayList;-><init>(I)V

    move-object p4, p1

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p4, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    sget-object v2, Lc32;->UNDISPATCHED:Lc32;

    new-instance v3, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameAsync$$inlined$useEachFrameIndexedAsync$1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4, p3}, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameAsync$$inlined$useEachFrameIndexedAsync$1;-><init>(Ljava/lang/AutoCloseable;ILe02;Ldm3;)V

    const/4 v1, 0x1

    invoke-static {p2, v4, v2, v3, v1}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final useEachFrameIndexed$$forInline(Ljava/util/List;Lbm3;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            ">;",
            "Lbm3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/camera/camera2/pipe/Frame;",
            "Lj59;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/pipe/core/AutoCloseables;->INSTANCE:Landroidx/camera/camera2/pipe/core/AutoCloseables;

    new-instance p0, Lp07;

    invoke-direct {p0}, Lp07;-><init>()V

    :goto_0
    :try_start_0
    iget p3, p0, Lp07;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget p3, p0, Lp07;->b:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v0, p0, Lp07;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lp07;->b:I

    move-object v1, p3

    check-cast v1, Landroidx/camera/camera2/pipe/FrameCapture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroidx/camera/camera2/pipe/FrameCapture;->awaitFrame(Le02;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/AutoCloseable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object v4, v3

    check-cast v4, Landroidx/camera/camera2/pipe/Frame;

    invoke-static {v1}, Lbj;->e(Landroidx/camera/camera2/pipe/FrameCapture;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, v4}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v3, v2}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {p3, v2}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_6
    invoke-static {v3, p2}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-static {p3, p2}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_5
    :cond_0
    :goto_2
    iget p2, p0, Lp07;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    :try_start_9
    iget p2, p0, Lp07;->b:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lp07;->b:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/AutoCloseable;

    invoke-static {p2}, Lrk3;->d(Ljava/lang/AutoCloseable;)V

    sget-object p2, Lj59;->a:Lj59;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_3
    :try_start_a
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception p3

    :goto_4
    iget v0, p0, Lp07;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_b
    iget v0, p0, Lp07;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lp07;->b:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;

    invoke-static {v0}, Lrk3;->d(Ljava/lang/AutoCloseable;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v0

    invoke-static {p2, v0}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    sget-object v0, Lj59;->a:Lj59;

    goto :goto_4

    :cond_2
    throw p3
.end method

.method private final useEachFrameIndexedAsync$$forInline(Ljava/util/List;Ly22;Lfm3;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            ">;",
            "Ly22;",
            "Lfm3<",
            "-",
            "Ly22;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/camera/camera2/pipe/Frame;",
            "-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "+TR;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/pipe/core/AutoCloseables;->INSTANCE:Landroidx/camera/camera2/pipe/core/AutoCloseables;

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    invoke-direct {p0, p4}, Ljava/util/ArrayList;-><init>(I)V

    move-object p4, p1

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p4, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    sget-object v2, Lc32;->UNDISPATCHED:Lc32;

    new-instance v3, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexedAsync$$inlined$useEachIndexedAsync$1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4, p3}, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexedAsync$$inlined$useEachIndexedAsync$1;-><init>(Ljava/lang/AutoCloseable;ILe02;Lfm3;)V

    const/4 v1, 0x1

    invoke-static {p2, v4, v2, v3, v1}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final useFrame$$forInline(Landroidx/camera/camera2/pipe/FrameCapture;Lnl3;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/Frame;",
            "+TR;>;",
            "Le02<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_0
    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/FrameCapture;->awaitFrame(Le02;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/pipe/Frame;

    invoke-static {p1}, Lbj;->e(Landroidx/camera/camera2/pipe/FrameCapture;)V

    invoke-interface {p2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p3, p0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p1, p0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-static {p3, p0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p2

    invoke-static {p1, p0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final useEach(Ljava/util/List;Lnl3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/camera/camera2/pipe/core/AutoCloseables;->INSTANCE:Landroidx/camera/camera2/pipe/core/AutoCloseables;

    const/4 p0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p0, p0, 0x1

    :try_start_1
    invoke-interface {p2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v0, v1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-static {v0, p2}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p0, p2, :cond_1

    add-int/lit8 p2, p0, 0x1

    :try_start_5
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/AutoCloseable;

    invoke-static {p0}, Lrk3;->d(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move p0, p2

    goto :goto_1

    :cond_1
    return-void

    :goto_2
    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_2

    add-int/lit8 v1, p0, 0x1

    :try_start_7
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/AutoCloseable;

    invoke-static {p0}, Lrk3;->d(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p0

    invoke-static {p2, p0}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    move p0, v1

    goto :goto_3

    :cond_2
    throw v0
.end method

.method public final useEachFrame(Ljava/util/List;Lnl3;Le02;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/Frame;",
            "Lj59;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;

    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;-><init>(Landroidx/camera/camera2/pipe/FrameCapture$Companion;Le02;)V

    :goto_0
    iget-object p0, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->result:Ljava/lang/Object;

    sget-object p3, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->L$4:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/FrameCapture;

    iget-object p2, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->L$3:Ljava/lang/Object;

    check-cast p2, Ljava/lang/AutoCloseable;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lp07;

    iget-object v4, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lnl3;

    :try_start_0
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    move-object v0, p2

    move-object p2, v5

    move-object v5, v1

    move-object v1, v7

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p0, Landroidx/camera/camera2/pipe/core/AutoCloseables;->INSTANCE:Landroidx/camera/camera2/pipe/core/AutoCloseables;

    new-instance p0, Lp07;

    invoke-direct {p0}, Lp07;-><init>()V

    move-object v1, p0

    :goto_1
    :try_start_1
    iget p0, v1, Lp07;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge p0, v4, :cond_4

    iget p0, v1, Lp07;->b:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/AutoCloseable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    iget v4, v1, Lp07;->b:I

    add-int/2addr v4, v2

    iput v4, v1, Lp07;->b:I

    move-object v4, p0

    check-cast v4, Landroidx/camera/camera2/pipe/FrameCapture;

    iput-object p2, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->L$1:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->L$4:Ljava/lang/Object;

    iput v2, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrame$1;->label:I

    invoke-interface {v4, v0}, Landroidx/camera/camera2/pipe/FrameCapture;->awaitFrame(Le02;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-ne v5, p3, :cond_3

    return-object p3

    :cond_3
    move-object v7, v0

    move-object v0, p0

    move-object p0, v5

    move-object v5, v1

    move-object v1, v7

    move-object v7, v4

    move-object v4, p1

    move-object p1, v7

    :goto_2
    :try_start_3
    check-cast p0, Ljava/lang/AutoCloseable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    move-object v6, p0

    check-cast v6, Landroidx/camera/camera2/pipe/Frame;

    invoke-static {p1}, Lil1;->d(Landroidx/camera/camera2/pipe/FrameCapture;)V

    invoke-interface {p2, v6}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-static {p0, v3}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v0, v3}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v1

    move-object p1, v4

    move-object v1, v5

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p1, v4

    move-object v1, v5

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object p2, v0

    move-object v1, v5

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p2

    :try_start_8
    invoke-static {p0, p1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_5
    move-exception p2

    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    move-object v4, p1

    :goto_3
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception p1

    :try_start_a
    invoke-static {p2, p0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    move-exception p0

    move-object p1, v4

    goto :goto_5

    :catchall_8
    move-exception p0

    goto :goto_5

    :catchall_9
    :cond_4
    :goto_4
    iget p0, v1, Lp07;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p0, p2, :cond_5

    :try_start_b
    iget p0, v1, Lp07;->b:I

    add-int/lit8 p2, p0, 0x1

    iput p2, v1, Lp07;->b:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/AutoCloseable;

    invoke-static {p0}, Lrk3;->d(Ljava/lang/AutoCloseable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_4

    :cond_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_5
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    :catchall_a
    move-exception p2

    :goto_6
    iget p3, v1, Lp07;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_6

    :try_start_d
    iget p3, v1, Lp07;->b:I

    add-int/lit8 v0, p3, 0x1

    iput v0, v1, Lp07;->b:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/AutoCloseable;

    invoke-static {p3}, Lrk3;->d(Ljava/lang/AutoCloseable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto :goto_6

    :catchall_b
    move-exception p3

    invoke-static {p0, p3}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    throw p2
.end method

.method public final useEachFrameAsync(Ljava/util/List;Ly22;Ldm3;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            ">;",
            "Ly22;",
            "Ldm3<",
            "-",
            "Ly22;",
            "-",
            "Landroidx/camera/camera2/pipe/Frame;",
            "-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "+TR;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/pipe/core/AutoCloseables;->INSTANCE:Landroidx/camera/camera2/pipe/core/AutoCloseables;

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    invoke-direct {p0, p4}, Ljava/util/ArrayList;-><init>(I)V

    move-object p4, p1

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    sget-object v2, Lc32;->UNDISPATCHED:Lc32;

    new-instance v3, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameAsync$$inlined$useEachFrameIndexedAsync$1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4, p3}, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameAsync$$inlined$useEachFrameIndexedAsync$1;-><init>(Ljava/lang/AutoCloseable;ILe02;Ldm3;)V

    const/4 v1, 0x1

    invoke-static {p2, v4, v2, v3, v1}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final useEachFrameIndexed(Ljava/util/List;Lbm3;Le02;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            ">;",
            "Lbm3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/camera/camera2/pipe/Frame;",
            "Lj59;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;

    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;-><init>(Landroidx/camera/camera2/pipe/FrameCapture$Companion;Le02;)V

    :goto_0
    iget-object p0, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->result:Ljava/lang/Object;

    sget-object p3, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget p1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->I$0:I

    iget-object p2, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->L$4:Ljava/lang/Object;

    check-cast p2, Landroidx/camera/camera2/pipe/FrameCapture;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/AutoCloseable;

    iget-object v4, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lp07;

    iget-object v5, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lbm3;

    :try_start_0
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p0, Landroidx/camera/camera2/pipe/core/AutoCloseables;->INSTANCE:Landroidx/camera/camera2/pipe/core/AutoCloseables;

    new-instance p0, Lp07;

    invoke-direct {p0}, Lp07;-><init>()V

    move-object v4, p0

    :goto_1
    :try_start_1
    iget p0, v4, Lp07;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_4

    iget p0, v4, Lp07;->b:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/AutoCloseable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    iget p0, v4, Lp07;->b:I

    add-int/lit8 v5, p0, 0x1

    iput v5, v4, Lp07;->b:I

    move-object v5, v1

    check-cast v5, Landroidx/camera/camera2/pipe/FrameCapture;

    iput-object p2, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->L$2:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->L$4:Ljava/lang/Object;

    iput p0, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->I$0:I

    iput v2, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexed$1;->label:I

    invoke-interface {v5, v0}, Landroidx/camera/camera2/pipe/FrameCapture;->awaitFrame(Le02;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-ne v6, p3, :cond_3

    return-object p3

    :cond_3
    move-object v8, p1

    move p1, p0

    move-object p0, v6

    move-object v6, p2

    move-object p2, v5

    move-object v5, v8

    :goto_2
    :try_start_3
    check-cast p0, Ljava/lang/AutoCloseable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move-object v7, p0

    check-cast v7, Landroidx/camera/camera2/pipe/Frame;

    invoke-static {p2}, Lil1;->d(Landroidx/camera/camera2/pipe/FrameCapture;)V

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, p2, v7}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {p0, v3}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v1, v3}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object p1, v5

    move-object p2, v6

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p1, v5

    goto :goto_5

    :catchall_2
    move-exception p1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-static {p0, p1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_4
    move-exception p0

    move-object v5, p1

    :goto_3
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception p1

    :try_start_a
    invoke-static {v1, p0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_6
    move-exception p0

    goto :goto_5

    :catchall_7
    :cond_4
    :goto_4
    iget p0, v4, Lp07;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p0, p2, :cond_5

    :try_start_b
    iget p0, v4, Lp07;->b:I

    add-int/lit8 p2, p0, 0x1

    iput p2, v4, Lp07;->b:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/AutoCloseable;

    invoke-static {p0}, Lrk3;->d(Ljava/lang/AutoCloseable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_4

    :cond_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_5
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :catchall_8
    move-exception p2

    :goto_6
    iget p3, v4, Lp07;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_6

    :try_start_d
    iget p3, v4, Lp07;->b:I

    add-int/lit8 v0, p3, 0x1

    iput v0, v4, Lp07;->b:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/AutoCloseable;

    invoke-static {p3}, Lrk3;->d(Ljava/lang/AutoCloseable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto :goto_6

    :catchall_9
    move-exception p3

    invoke-static {p0, p3}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    throw p2
.end method

.method public final useEachFrameIndexedAsync(Ljava/util/List;Ly22;Lfm3;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            ">;",
            "Ly22;",
            "Lfm3<",
            "-",
            "Ly22;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/camera/camera2/pipe/Frame;",
            "-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "+TR;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/pipe/core/AutoCloseables;->INSTANCE:Landroidx/camera/camera2/pipe/core/AutoCloseables;

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    invoke-direct {p0, p4}, Ljava/util/ArrayList;-><init>(I)V

    move-object p4, p1

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    sget-object v2, Lc32;->UNDISPATCHED:Lc32;

    new-instance v3, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexedAsync$$inlined$useEachIndexedAsync$1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4, p3}, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useEachFrameIndexedAsync$$inlined$useEachIndexedAsync$1;-><init>(Ljava/lang/AutoCloseable;ILe02;Lfm3;)V

    const/4 v1, 0x1

    invoke-static {p2, v4, v2, v3, v1}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final useEachIndexed(Ljava/util/List;Lbm3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            ">;",
            "Lbm3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/camera/camera2/pipe/core/AutoCloseables;->INSTANCE:Landroidx/camera/camera2/pipe/core/AutoCloseables;

    const/4 p0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    add-int/lit8 v1, p0, 0x1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x0

    :try_start_2
    invoke-static {v0, p0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move p0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-static {v0, p0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_3
    move-exception p2

    move v1, p0

    move-object p0, p2

    goto :goto_2

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p0, p2, :cond_1

    add-int/lit8 p2, p0, 0x1

    :try_start_5
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/AutoCloseable;

    invoke-static {p0}, Lrk3;->d(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move p0, p2

    goto :goto_1

    :cond_1
    return-void

    :goto_2
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception p2

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    :try_start_7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    invoke-static {v1}, Lrk3;->d(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_4

    :catchall_6
    move-exception v1

    invoke-static {p0, v1}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    move v1, v0

    goto :goto_3

    :cond_2
    throw p2
.end method

.method public final useFrame(Landroidx/camera/camera2/pipe/FrameCapture;Lnl3;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/Frame;",
            "+TR;>;",
            "Le02<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;

    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;-><init>(Landroidx/camera/camera2/pipe/FrameCapture$Companion;Le02;)V

    :goto_0
    iget-object p0, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;->result:Ljava/lang/Object;

    sget-object p3, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;->L$2:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/FrameCapture;

    iget-object p2, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/AutoCloseable;

    iget-object p3, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lnl3;

    :try_start_0
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p1, p2

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iput-object p2, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;->L$2:Ljava/lang/Object;

    iput v2, v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion$useFrame$1;->label:I

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/FrameCapture;->awaitFrame(Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-ne p0, p3, :cond_3

    return-object p3

    :cond_3
    move-object p3, p2

    move-object p2, p1

    :goto_1
    :try_start_2
    check-cast p0, Ljava/lang/AutoCloseable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object v0, p0

    check-cast v0, Landroidx/camera/camera2/pipe/Frame;

    invoke-static {p1}, Lil1;->d(Landroidx/camera/camera2/pipe/FrameCapture;)V

    invoke-interface {p3, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {p0, v3}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {p2, v3}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_1
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p3

    :try_start_6
    invoke-static {p0, p1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_3
    move-exception p0

    :goto_2
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p2

    invoke-static {p1, p0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method
