.class final synthetic Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic filter(Landroidx/paging/PagingData;Lbm3;)Landroidx/paging/PagingData;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PagingData;

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getFlow$paging_common()Lhd3;

    move-result-object v1

    move-object v2, v1

    new-instance v1, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1;

    invoke-direct {v1, v2, p1}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1;-><init>(Lhd3;Lbm3;)V

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

.method public static final synthetic flatMap(Landroidx/paging/PagingData;Lbm3;)Landroidx/paging/PagingData;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PagingData;

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getFlow$paging_common()Lhd3;

    move-result-object v1

    move-object v2, v1

    new-instance v1, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$flatMap$$inlined$transform$1;

    invoke-direct {v1, v2, p1}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$flatMap$$inlined$transform$1;-><init>(Lhd3;Lbm3;)V

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

.method public static final insertFooterItem(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ljava/lang/Object;)Landroidx/paging/PagingData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Landroidx/paging/TerminalSeparatorType;",
            "TT;)",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertFooterItem$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertFooterItem$1;-><init>(Ljava/lang/Object;Le02;)V

    invoke-static {p0, p1, v0}, Landroidx/paging/PagingDataTransforms;->insertSeparators(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ldm3;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final insertFooterItem(Landroidx/paging/PagingData;Ljava/lang/Object;)Landroidx/paging/PagingData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/PagingData<",
            "TT;>;TT;)",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Landroidx/paging/PagingDataTransforms;->insertFooterItem$default(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ljava/lang/Object;ILjava/lang/Object;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic insertFooterItem$default(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ljava/lang/Object;ILjava/lang/Object;)Landroidx/paging/PagingData;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Landroidx/paging/TerminalSeparatorType;->FULLY_COMPLETE:Landroidx/paging/TerminalSeparatorType;

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/paging/PagingDataTransforms;->insertFooterItem(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ljava/lang/Object;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final insertHeaderItem(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ljava/lang/Object;)Landroidx/paging/PagingData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Landroidx/paging/TerminalSeparatorType;",
            "TT;)",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1;-><init>(Ljava/lang/Object;Le02;)V

    invoke-static {p0, p1, v0}, Landroidx/paging/PagingDataTransforms;->insertSeparators(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ldm3;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final insertHeaderItem(Landroidx/paging/PagingData;Ljava/lang/Object;)Landroidx/paging/PagingData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/PagingData<",
            "TT;>;TT;)",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Landroidx/paging/PagingDataTransforms;->insertHeaderItem$default(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ljava/lang/Object;ILjava/lang/Object;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic insertHeaderItem$default(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ljava/lang/Object;ILjava/lang/Object;)Landroidx/paging/PagingData;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Landroidx/paging/TerminalSeparatorType;->FULLY_COMPLETE:Landroidx/paging/TerminalSeparatorType;

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/paging/PagingDataTransforms;->insertHeaderItem(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ljava/lang/Object;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic insertSeparators(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ldm3;)Landroidx/paging/PagingData;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PagingData;

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getFlow$paging_common()Lhd3;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroidx/paging/SeparatorsKt;->insertEventSeparators(Lhd3;Landroidx/paging/TerminalSeparatorType;Ldm3;)Lhd3;

    move-result-object v1

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

.method public static synthetic insertSeparators$default(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ldm3;ILjava/lang/Object;)Landroidx/paging/PagingData;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Landroidx/paging/TerminalSeparatorType;->FULLY_COMPLETE:Landroidx/paging/TerminalSeparatorType;

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/paging/PagingDataTransforms;->insertSeparators(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ldm3;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic map(Landroidx/paging/PagingData;Lbm3;)Landroidx/paging/PagingData;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PagingData;

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getFlow$paging_common()Lhd3;

    move-result-object v1

    move-object v2, v1

    new-instance v1, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1;

    invoke-direct {v1, v2, p1}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1;-><init>(Lhd3;Lbm3;)V

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

.method public static final transform(Landroidx/paging/PagingData;Lbm3;)Landroidx/paging/PagingData;
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
            "Lbm3<",
            "-",
            "Landroidx/paging/PageEvent<",
            "TT;>;-",
            "Le02<",
            "-",
            "Landroidx/paging/PageEvent<",
            "TR;>;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/paging/PagingData<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PagingData;

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getFlow$paging_common()Lhd3;

    move-result-object v1

    move-object v2, v1

    new-instance v1, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;

    invoke-direct {v1, v2, p1}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;-><init>(Lhd3;Lbm3;)V

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
