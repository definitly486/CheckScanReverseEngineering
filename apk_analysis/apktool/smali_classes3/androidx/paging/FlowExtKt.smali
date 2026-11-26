.class public final Landroidx/paging/FlowExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NULL:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/paging/FlowExtKt;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getNULL$p()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/paging/FlowExtKt;->NULL:Ljava/lang/Object;

    return-object v0
.end method

.method public static final combineWithoutBatching(Lhd3;Lhd3;Lfm3;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "+TT1;>;",
            "Lhd3<",
            "+TT2;>;",
            "Lfm3<",
            "-TT1;-TT2;-",
            "Landroidx/paging/CombineSource;",
            "-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lhd3<",
            "+TR;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p3, Landroidx/paging/FlowExtKt$combineWithoutBatching$2;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Landroidx/paging/FlowExtKt$combineWithoutBatching$2;-><init>(Lhd3;Lhd3;Lfm3;Le02;)V

    invoke-static {p3}, Landroidx/paging/SimpleChannelFlowKt;->simpleChannelFlow(Lbm3;)Lhd3;

    move-result-object p0

    return-object p0
.end method

.method private static final combineWithoutBatching$$forInline(Lhd3;Lhd3;Lfm3;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "+TT1;>;",
            "Lhd3<",
            "+TT2;>;",
            "Lfm3<",
            "-TT1;-TT2;-",
            "Landroidx/paging/CombineSource;",
            "-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lhd3<",
            "+TR;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p3, Landroidx/paging/FlowExtKt$combineWithoutBatching$2;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Landroidx/paging/FlowExtKt$combineWithoutBatching$2;-><init>(Lhd3;Lhd3;Lfm3;Le02;)V

    invoke-static {p3}, Landroidx/paging/SimpleChannelFlowKt;->simpleChannelFlow(Lbm3;)Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public static final simpleFlatMapLatest(Lhd3;Lbm3;)Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "+TT;>;",
            "Lbm3<",
            "-TT;-",
            "Le02<",
            "-",
            "Lhd3<",
            "+TR;>;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lhd3<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;-><init>(Lbm3;Le02;)V

    invoke-static {p0, v0}, Landroidx/paging/FlowExtKt;->simpleTransformLatest(Lhd3;Ldm3;)Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public static final simpleMapLatest(Lhd3;Lbm3;)Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "+TT;>;",
            "Lbm3<",
            "-TT;-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lhd3<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/FlowExtKt$simpleMapLatest$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/paging/FlowExtKt$simpleMapLatest$1;-><init>(Lbm3;Le02;)V

    invoke-static {p0, v0}, Landroidx/paging/FlowExtKt;->simpleTransformLatest(Lhd3;Ldm3;)Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public static final simpleRunningReduce(Lhd3;Ldm3;)Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "+TT;>;",
            "Ldm3<",
            "-TT;-TT;-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lhd3<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;-><init>(Lhd3;Ldm3;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public static final simpleScan(Lhd3;Ljava/lang/Object;Ldm3;)Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "+TT;>;TR;",
            "Ldm3<",
            "-TR;-TT;-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lhd3<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/FlowExtKt$simpleScan$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(Ljava/lang/Object;Lhd3;Ldm3;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public static final simpleTransformLatest(Lhd3;Ldm3;)Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "+TT;>;",
            "Ldm3<",
            "-",
            "Lid3<",
            "-TR;>;-TT;-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lhd3<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/FlowExtKt$simpleTransformLatest$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/paging/FlowExtKt$simpleTransformLatest$1;-><init>(Lhd3;Ldm3;Le02;)V

    invoke-static {v0}, Landroidx/paging/SimpleChannelFlowKt;->simpleChannelFlow(Lbm3;)Lhd3;

    move-result-object p0

    return-object p0
.end method
