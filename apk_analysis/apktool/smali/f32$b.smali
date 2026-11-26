.class public final Lf32$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.core.ui.delegateAdapter.CounterViewBindingDelegateAdapter$onBindViewHolder$1$1"
    f = "CounterViewBindingDelegateAdapter.kt"
    l = {
        0x2b
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf32;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
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
.field public l:I

.field public final synthetic m:Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly68<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic n:Lf32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf32<",
            "Ljava/lang/Object;",
            "Landroidx/viewbinding/ViewBinding;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Ly68;Lf32;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly68<",
            "Ljava/lang/Long;",
            ">;",
            "Lf32<",
            "Ljava/lang/Object;",
            "Landroidx/viewbinding/ViewBinding;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Le02<",
            "-",
            "Lf32$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lf32$b;->m:Ly68;

    iput-object p2, p0, Lf32$b;->n:Lf32;

    iput-object p3, p0, Lf32$b;->o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
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

    new-instance p1, Lf32$b;

    iget-object v0, p0, Lf32$b;->n:Lf32;

    iget-object v1, p0, Lf32$b;->o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Lf32$b;->m:Ly68;

    invoke-direct {p1, p0, v0, v1, p2}, Lf32$b;-><init>(Ly68;Lf32;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lf32$b;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lf32$b;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lf32$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lf32$b;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p1, Lf32$b$a;

    iget-object v1, p0, Lf32$b;->n:Lf32;

    iget-object v4, p0, Lf32$b;->o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p1, v1, v4}, Lf32$b$a;-><init>(Lf32;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iput v3, p0, Lf32$b;->l:I

    iget-object v1, p0, Lf32$b;->m:Ly68;

    invoke-interface {v1, p1, p0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Lh8;->d()V

    return-object v2
.end method
