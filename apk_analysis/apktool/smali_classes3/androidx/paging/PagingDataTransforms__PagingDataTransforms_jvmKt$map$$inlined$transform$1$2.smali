.class public final Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1;->collect(Lid3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field final synthetic $executor$inlined:Ljava/util/concurrent/Executor;

.field final synthetic $this_unsafeFlow:Lid3;

.field final synthetic $transform$inlined:Lnl3;


# direct methods
.method public constructor <init>(Lid3;Ljava/util/concurrent/Executor;Lnl3;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2;->$this_unsafeFlow:Lid3;

    iput-object p2, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2;->$executor$inlined:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2;->$transform$inlined:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1;

    iget v1, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1;-><init>(Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p0, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lid3;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2;->$this_unsafeFlow:Lid3;

    check-cast p1, Landroidx/paging/PageEvent;

    iget-object v2, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2;->$executor$inlined:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Laq5;->x(Ljava/util/concurrent/Executor;)Lr22;

    move-result-object v2

    new-instance v6, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$1$1;

    iget-object p0, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2;->$transform$inlined:Lnl3;

    invoke-direct {v6, p1, p0, v3}, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$1$1;-><init>(Landroidx/paging/PageEvent;Lnl3;Le02;)V

    iput-object p2, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1;->label:I

    invoke-static {v2, v6, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v7, p2

    move-object p2, p0

    move-object p0, v7

    :goto_1
    iput-object v3, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1;->label:I

    invoke-interface {p0, p2, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
