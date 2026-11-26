.class public final Landroidx/paging/UnbatchedFlowCombiner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final initialDispatched:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Lyg5;

.field private final send:Lfm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfm3<",
            "TT1;TT2;",
            "Landroidx/paging/CombineSource;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final valueReceived:[Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfm3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfm3<",
            "-TT1;-TT2;-",
            "Landroidx/paging/CombineSource;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/UnbatchedFlowCombiner;->send:Lfm3;

    new-instance p1, Lyp1;

    invoke-direct {p1}, Lyp1;-><init>()V

    iput-object p1, p0, Landroidx/paging/UnbatchedFlowCombiner;->initialDispatched:Lxp1;

    new-instance p1, Lch5;

    invoke-direct {p1}, Lch5;-><init>()V

    iput-object p1, p0, Landroidx/paging/UnbatchedFlowCombiner;->lock:Lyg5;

    const/4 p1, 0x2

    new-array v0, p1, [Lxp1;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    new-instance v3, Lyp1;

    invoke-direct {v3}, Lyp1;-><init>()V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/paging/UnbatchedFlowCombiner;->valueReceived:[Lxp1;

    new-array v0, p1, [Ljava/lang/Object;

    :goto_1
    if-ge v1, p1, :cond_1

    invoke-static {}, Landroidx/paging/FlowExtKt;->access$getNULL$p()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object v0, p0, Landroidx/paging/UnbatchedFlowCombiner;->values:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onNext(ILjava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;

    iget v1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;

    invoke-direct {v0, p0, p3}, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;-><init>(Landroidx/paging/UnbatchedFlowCombiner;Le02;)V

    :goto_0
    iget-object p3, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lyg5;

    :try_start_0
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget p1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->I$0:I

    iget-object p2, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lyg5;

    iget-object v2, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$0:Ljava/lang/Object;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget p1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->I$0:I

    iget-object p2, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$0:Ljava/lang/Object;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/paging/UnbatchedFlowCombiner;->valueReceived:[Lxp1;

    aget-object p3, p3, p1

    invoke-interface {p3}, Lmb4;->P()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Landroidx/paging/UnbatchedFlowCombiner;->initialDispatched:Lxp1;

    iput-object p2, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->I$0:I

    iput v5, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->label:I

    invoke-interface {p3, v0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    goto/16 :goto_7

    :cond_5
    iget-object p3, p0, Landroidx/paging/UnbatchedFlowCombiner;->valueReceived:[Lxp1;

    aget-object p3, p3, p1

    sget-object v2, Lj59;->a:Lj59;

    invoke-interface {p3, v2}, Lxp1;->f(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    iget-object p3, p0, Landroidx/paging/UnbatchedFlowCombiner;->lock:Lyg5;

    iput-object p2, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->I$0:I

    iput v4, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->label:I

    invoke-interface {p3, v6, v0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_7

    :cond_7
    move-object v2, p2

    move-object p2, p3

    :goto_2
    :try_start_1
    iget-object p3, p0, Landroidx/paging/UnbatchedFlowCombiner;->values:[Ljava/lang/Object;

    array-length v4, p3

    const/4 v7, 0x0

    move v8, v7

    :goto_3
    if-ge v8, v4, :cond_9

    aget-object v9, p3, v8

    invoke-static {}, Landroidx/paging/FlowExtKt;->access$getNULL$p()Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_8

    move p3, v5

    goto :goto_4

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object p1, p2

    goto :goto_a

    :cond_9
    move p3, v7

    :goto_4
    iget-object v4, p0, Landroidx/paging/UnbatchedFlowCombiner;->values:[Ljava/lang/Object;

    aput-object v2, v4, p1

    array-length v2, v4

    move v8, v7

    :goto_5
    if-ge v8, v2, :cond_b

    aget-object v9, v4, v8

    invoke-static {}, Landroidx/paging/FlowExtKt;->access$getNULL$p()Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_a

    move-object p1, p2

    goto :goto_9

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    if-eqz p3, :cond_c

    sget-object p1, Landroidx/paging/CombineSource;->INITIAL:Landroidx/paging/CombineSource;

    goto :goto_6

    :cond_c
    if-nez p1, :cond_d

    sget-object p1, Landroidx/paging/CombineSource;->RECEIVER:Landroidx/paging/CombineSource;

    goto :goto_6

    :cond_d
    sget-object p1, Landroidx/paging/CombineSource;->OTHER:Landroidx/paging/CombineSource;

    :goto_6
    iget-object p3, p0, Landroidx/paging/UnbatchedFlowCombiner;->send:Lfm3;

    iget-object v2, p0, Landroidx/paging/UnbatchedFlowCombiner;->values:[Ljava/lang/Object;

    aget-object v4, v2, v7

    aget-object v2, v2, v5

    iput-object p2, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->label:I

    invoke-interface {p3, v4, v2, p1, v0}, Lfm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_e

    :goto_7
    return-object v1

    :cond_e
    move-object p1, p2

    :goto_8
    :try_start_2
    iget-object p0, p0, Landroidx/paging/UnbatchedFlowCombiner;->initialDispatched:Lxp1;

    sget-object p2, Lj59;->a:Lj59;

    invoke-interface {p0, p2}, Lxp1;->f(Ljava/lang/Object;)Z

    :goto_9
    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1, v6}, Lyg5;->unlock(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_a
    invoke-interface {p1, v6}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p0
.end method
