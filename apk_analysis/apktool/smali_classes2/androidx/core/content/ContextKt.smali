.class public final Landroidx/core/content/ContextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getSystemService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final receiveBroadcasts(Landroid/content/Context;Landroid/content/IntentFilter;ILjava/lang/String;Landroid/os/Handler;Lbm3;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lbm3<",
            "-",
            "Landroid/content/BroadcastReceiver;",
            "-",
            "Landroid/content/Intent;",
            "Lj59;",
            ">;",
            "Le02<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Landroidx/core/content/ContextKt$receiveBroadcasts$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;

    iget v1, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;

    invoke-direct {v0, p6}, Landroidx/core/content/ContextKt$receiveBroadcasts$1;-><init>(Le02;)V

    :goto_0
    iget-object p6, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lr07;

    iget-object p1, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lbm3;

    iget-object p1, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->L$3:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    iget-object p1, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/content/IntentFilter;

    iget-object p1, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    :try_start_0
    invoke-static {p6}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p6, p0

    move-object p0, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_2

    :cond_2
    invoke-static {p6}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p6, Lr07;

    invoke-direct {p6}, Lr07;-><init>()V

    :try_start_1
    iput-object p0, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->L$3:Ljava/lang/Object;

    iput-object p5, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->L$4:Ljava/lang/Object;

    iput-object p6, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->L$5:Ljava/lang/Object;

    iput p2, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->I$0:I

    iput v3, v0, Landroidx/core/content/ContextKt$receiveBroadcasts$1;->label:I

    new-instance v2, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v2}, Lc31;->u()V

    new-instance v0, Landroidx/core/content/ContinuationBroadcastReceiver;

    invoke-direct {v0, v2, p5}, Landroidx/core/content/ContinuationBroadcastReceiver;-><init>(Le02;Lbm3;)V

    iput-object v0, p6, Lr07;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver;

    move p5, p2

    move-object p2, p1

    move-object p1, v0

    invoke-static/range {p0 .. p5}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    invoke-virtual {v2}, Lc31;->s()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    move-object p1, p0

    move-object p0, p6

    :goto_2
    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    if-eqz p0, :cond_4

    check-cast p0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    throw p2
.end method

.method public static synthetic receiveBroadcasts$default(Landroid/content/Context;Landroid/content/IntentFilter;ILjava/lang/String;Landroid/os/Handler;Lbm3;Le02;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    and-int/lit8 p8, p7, 0x4

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_1

    move-object p4, v0

    :cond_1
    invoke-static/range {p0 .. p6}, Landroidx/core/content/ContextKt;->receiveBroadcasts(Landroid/content/Context;Landroid/content/IntentFilter;ILjava/lang/String;Landroid/os/Handler;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final receiveBroadcastsAsync(Landroid/content/Context;Landroid/content/IntentFilter;ILjava/lang/String;Landroid/os/Handler;Ldm3;Le02;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Ldm3<",
            "-",
            "Landroid/content/BroadcastReceiver$PendingResult;",
            "-",
            "Landroid/content/Intent;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v1, v0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$1;

    iget v2, v1, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$1;

    invoke-direct {v1, v0}, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$1;-><init>(Le02;)V

    :goto_0
    iget-object v0, v1, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$1;->result:Ljava/lang/Object;

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    iget v3, v1, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v6, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;

    const/4 v13, 0x0

    move-object v7, p0

    move-object v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v13}, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;ILjava/lang/String;Landroid/os/Handler;Ldm3;Le02;)V

    iput v5, v1, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$1;->label:I

    invoke-static {v6, v1}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    invoke-static {}, Lh8;->d()V

    return-object v4
.end method

.method public static synthetic receiveBroadcastsAsync$default(Landroid/content/Context;Landroid/content/IntentFilter;ILjava/lang/String;Landroid/os/Handler;Ldm3;Le02;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    and-int/lit8 p8, p7, 0x4

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_1

    move-object p4, v0

    :cond_1
    invoke-static/range {p0 .. p6}, Landroidx/core/content/ContextKt;->receiveBroadcastsAsync(Landroid/content/Context;Landroid/content/IntentFilter;ILjava/lang/String;Landroid/os/Handler;Ldm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final withStyledAttributes(Landroid/content/Context;I[ILnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[I",
            "Lnl3<",
            "-",
            "Landroid/content/res/TypedArray;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-interface {p3, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static final withStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[IIILnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "[III",
            "Lnl3<",
            "-",
            "Landroid/content/res/TypedArray;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-interface {p5, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic withStyledAttributes$default(Landroid/content/Context;Landroid/util/AttributeSet;[IIILnl3;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    move p4, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-interface {p5, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
