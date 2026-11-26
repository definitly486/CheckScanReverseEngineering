.class public final Ly89;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog$sendSafetyEvent$1"
    f = "UpridWebFullScreenDialog.kt"
    l = {
        0x156
    }
    m = "invokeSuspend"
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

.field public final synthetic m:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;Ljava/lang/String;Ljava/lang/Runnable;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Le02<",
            "-",
            "Ly89;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ly89;->m:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    iput-object p2, p0, Ly89;->n:Ljava/lang/String;

    iput-object p3, p0, Ly89;->o:Ljava/lang/Runnable;

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

    new-instance p1, Ly89;

    iget-object v0, p0, Ly89;->n:Ljava/lang/String;

    iget-object v1, p0, Ly89;->o:Ljava/lang/Runnable;

    iget-object p0, p0, Ly89;->m:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    invoke-direct {p1, p0, v0, v1, p2}, Ly89;-><init>(Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;Ljava/lang/String;Ljava/lang/Runnable;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Ly89;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Ly89;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ly89;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Ly89;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ly89;->m:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Lqo2;->a:Loi2;

    sget-object v1, Luy4;->a:Lhu3;

    invoke-virtual {v1}, Lhu3;->k0()Lgu3;

    move-result-object v7

    invoke-interface {p0}, Le02;->getContext()Lo22;

    move-result-object v1

    invoke-virtual {v7, v1}, Lgu3;->isDispatchNeeded(Lo22;)Z

    move-result v6

    iget-object v1, p0, Ly89;->n:Ljava/lang/String;

    iget-object v8, p0, Ly89;->o:Ljava/lang/Runnable;

    if-nez v6, :cond_3

    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v9

    sget-object v10, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v9, v10, :cond_4

    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-ltz v9, :cond_3

    iget-object p0, p1, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->presenter:Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;->sendLink(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    sget-object p0, Lj59;->a:Lj59;

    goto :goto_1

    :cond_2
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v2, v8

    goto :goto_0

    :cond_4
    new-instance p0, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw p0

    :goto_0
    new-instance v8, Ly89$a;

    invoke-direct {v8, p1, v1, v2}, Ly89$a;-><init>(Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput v3, p0, Ly89;->l:I

    move-object v9, p0

    invoke-static/range {v4 .. v9}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLr22;Lll3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
