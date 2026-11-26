.class final Landroidx/paging/CachedPageEventFlow$job$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/CachedPageEventFlow$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic this$0:Landroidx/paging/CachedPageEventFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/CachedPageEventFlow<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/CachedPageEventFlow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/CachedPageEventFlow<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/CachedPageEventFlow$job$1$1;->this$0:Landroidx/paging/CachedPageEventFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lj44;Le02;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj44<",
            "+",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;

    iget v1, v0, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;-><init>(Landroidx/paging/CachedPageEventFlow$job$1$1;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->label:I

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
    iget-object p1, v0, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lj44;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/paging/CachedPageEventFlow$job$1$1;->this$0:Landroidx/paging/CachedPageEventFlow;

    invoke-static {p2}, Landroidx/paging/CachedPageEventFlow;->access$getMutableSharedSrc$p(Landroidx/paging/CachedPageEventFlow;)Lvg5;

    move-result-object p2

    iput-object p1, v0, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->label:I

    invoke-interface {p2, p1, v0}, Lvg5;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p0, p0, Landroidx/paging/CachedPageEventFlow$job$1$1;->this$0:Landroidx/paging/CachedPageEventFlow;

    invoke-static {p0}, Landroidx/paging/CachedPageEventFlow;->access$getPageController$p(Landroidx/paging/CachedPageEventFlow;)Landroidx/paging/FlattenedPageController;

    move-result-object p0

    iput-object v3, v0, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->label:I

    invoke-virtual {p0, p1, v0}, Landroidx/paging/FlattenedPageController;->record(Lj44;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, Lj44;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/CachedPageEventFlow$job$1$1;->emit(Lj44;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
