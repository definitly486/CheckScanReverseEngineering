.class final Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.ContiguousPagedList$deferBoundaryCallbacks$1"
    f = "ContiguousPagedList.jvmAndAndroid.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/ContiguousPagedList;->deferBoundaryCallbacks$paging_common(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $deferBegin:Z

.field final synthetic $deferEmpty:Z

.field final synthetic $deferEnd:Z

.field label:I

.field final synthetic this$0:Landroidx/paging/ContiguousPagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/ContiguousPagedList<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLandroidx/paging/ContiguousPagedList;ZZLe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/paging/ContiguousPagedList<",
            "TK;TV;>;ZZ",
            "Le02<",
            "-",
            "Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->$deferEmpty:Z

    iput-object p2, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->this$0:Landroidx/paging/ContiguousPagedList;

    iput-boolean p3, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->$deferBegin:Z

    iput-boolean p4, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->$deferEnd:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;

    iget-boolean v1, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->$deferEmpty:Z

    iget-object v2, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->this$0:Landroidx/paging/ContiguousPagedList;

    iget-boolean v3, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->$deferBegin:Z

    iget-boolean v4, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->$deferEnd:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;-><init>(ZLandroidx/paging/ContiguousPagedList;ZZLe02;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->$deferEmpty:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->this$0:Landroidx/paging/ContiguousPagedList;

    invoke-virtual {p1}, Landroidx/paging/ContiguousPagedList;->getBoundaryCallback$paging_common()Landroidx/paging/PagedList$BoundaryCallback;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/paging/PagedList$BoundaryCallback;->onZeroItemsLoaded()V

    :cond_0
    iget-boolean p1, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->$deferBegin:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->this$0:Landroidx/paging/ContiguousPagedList;

    invoke-static {p1, v0}, Landroidx/paging/ContiguousPagedList;->access$setBoundaryCallbackBeginDeferred$p(Landroidx/paging/ContiguousPagedList;Z)V

    :cond_1
    iget-boolean p1, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->$deferEnd:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->this$0:Landroidx/paging/ContiguousPagedList;

    invoke-static {p1, v0}, Landroidx/paging/ContiguousPagedList;->access$setBoundaryCallbackEndDeferred$p(Landroidx/paging/ContiguousPagedList;Z)V

    :cond_2
    iget-object p0, p0, Landroidx/paging/ContiguousPagedList$deferBoundaryCallbacks$1;->this$0:Landroidx/paging/ContiguousPagedList;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/paging/ContiguousPagedList;->access$tryDispatchBoundaryCallbacks(Landroidx/paging/ContiguousPagedList;Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_3
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
