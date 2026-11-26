.class final Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1"
    f = "PagingDataTransforms.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt;->insertHeaderItem(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Ljava/lang/Object;)Landroidx/paging/PagingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "TT;TT;",
        "Le02<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le02<",
            "-",
            "Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1;->$item:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p2, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1;

    iget-object p0, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1;->$item:Ljava/lang/Object;

    invoke-direct {p2, p0, p3}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1;-><init>(Ljava/lang/Object;Le02;)V

    iput-object p1, p2, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1;->L$0:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p2, p0}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p3, Le02;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1;->label:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1;->L$0:Ljava/lang/Object;

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1;->$item:Ljava/lang/Object;

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1
.end method
