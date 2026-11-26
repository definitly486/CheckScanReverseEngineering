.class final synthetic Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final filter(Landroidx/paging/PagingData;Ljava/util/concurrent/Executor;Lnl3;)Landroidx/paging/PagingData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lnl3<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PagingData;

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getFlow$paging_common()Lhd3;

    move-result-object v1

    move-object v2, v1

    new-instance v1, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$$inlined$transform$1;

    invoke-direct {v1, v2, p1, p2}, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$$inlined$transform$1;-><init>(Lhd3;Ljava/util/concurrent/Executor;Lnl3;)V

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getUiReceiver$paging_common()Landroidx/paging/UiReceiver;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getHintReceiver$paging_common()Landroidx/paging/HintReceiver;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/paging/PagingData;-><init>(Lhd3;Landroidx/paging/UiReceiver;Landroidx/paging/HintReceiver;Lll3;ILjh2;)V

    return-object v0
.end method

.method public static final flatMap(Landroidx/paging/PagingData;Ljava/util/concurrent/Executor;Lnl3;)Landroidx/paging/PagingData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lnl3<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)",
            "Landroidx/paging/PagingData<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PagingData;

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getFlow$paging_common()Lhd3;

    move-result-object v1

    move-object v2, v1

    new-instance v1, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$$inlined$transform$1;

    invoke-direct {v1, v2, p1, p2}, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$$inlined$transform$1;-><init>(Lhd3;Ljava/util/concurrent/Executor;Lnl3;)V

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getUiReceiver$paging_common()Landroidx/paging/UiReceiver;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getHintReceiver$paging_common()Landroidx/paging/HintReceiver;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/paging/PagingData;-><init>(Lhd3;Landroidx/paging/UiReceiver;Landroidx/paging/HintReceiver;Lll3;ILjh2;)V

    return-object v0
.end method

.method public static final insertSeparators(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ljava/util/concurrent/Executor;Lbm3;)Landroidx/paging/PagingData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T::TR;>(",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Landroidx/paging/TerminalSeparatorType;",
            "Ljava/util/concurrent/Executor;",
            "Lbm3<",
            "-TT;-TT;+TR;>;)",
            "Landroidx/paging/PagingData<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$insertSeparators$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$insertSeparators$1;-><init>(Ljava/util/concurrent/Executor;Lbm3;Le02;)V

    invoke-static {p0, p1, v0}, Landroidx/paging/PagingDataTransforms;->insertSeparators(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ldm3;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final insertSeparators(Landroidx/paging/PagingData;Ljava/util/concurrent/Executor;Lbm3;)Landroidx/paging/PagingData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T::TR;>(",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbm3<",
            "-TT;-TT;+TR;>;)",
            "Landroidx/paging/PagingData<",
            "TR;>;"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/paging/PagingDataTransforms;->insertSeparators$default(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ljava/util/concurrent/Executor;Lbm3;ILjava/lang/Object;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic insertSeparators$default(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ljava/util/concurrent/Executor;Lbm3;ILjava/lang/Object;)Landroidx/paging/PagingData;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Landroidx/paging/TerminalSeparatorType;->FULLY_COMPLETE:Landroidx/paging/TerminalSeparatorType;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/paging/PagingDataTransforms;->insertSeparators(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ljava/util/concurrent/Executor;Lbm3;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final map(Landroidx/paging/PagingData;Ljava/util/concurrent/Executor;Lnl3;)Landroidx/paging/PagingData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lnl3<",
            "-TT;+TR;>;)",
            "Landroidx/paging/PagingData<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PagingData;

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getFlow$paging_common()Lhd3;

    move-result-object v1

    move-object v2, v1

    new-instance v1, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1;

    invoke-direct {v1, v2, p1, p2}, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1;-><init>(Lhd3;Ljava/util/concurrent/Executor;Lnl3;)V

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getUiReceiver$paging_common()Landroidx/paging/UiReceiver;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getHintReceiver$paging_common()Landroidx/paging/HintReceiver;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/paging/PagingData;-><init>(Lhd3;Landroidx/paging/UiReceiver;Landroidx/paging/HintReceiver;Lll3;ILjh2;)V

    return-object v0
.end method
