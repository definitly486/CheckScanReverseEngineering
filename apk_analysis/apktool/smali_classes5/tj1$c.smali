.class public final Ltj1$c;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.CiceroneActivity$openUnityOfferwall$1$result$1"
    f = "CiceroneActivity.kt"
    l = {
        0x1a1
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltj1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lnl3<",
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

.field public final synthetic m:Lcom/warefly/checkscan/presentation/CiceroneActivity;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/CiceroneActivity;",
            "Le02<",
            "-",
            "Ltj1$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltj1$c;->m:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Ltj1$c;

    iget-object p0, p0, Ltj1$c;->m:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    invoke-direct {v0, p0, p1}, Ltj1$c;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Le02;

    invoke-virtual {p0, p1}, Ltj1$c;->create(Le02;)Le02;

    move-result-object p0

    check-cast p0, Ltj1$c;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ltj1$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Ltj1$c;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ltj1$c;->m:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    sget-object p1, Lqo2;->a:Loi2;

    sget-object p1, Luy4;->a:Lhu3;

    invoke-virtual {p1}, Lhu3;->k0()Lgu3;

    move-result-object v6

    invoke-interface {p0}, Le02;->getContext()Lo22;

    move-result-object p1

    invoke-virtual {v6, p1}, Lgu3;->isDispatchNeeded(Lo22;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq p1, v1, :cond_2

    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_3

    sget-object p0, Lj59;->a:Lj59;

    goto :goto_0

    :cond_2
    new-instance p0, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw p0

    :cond_3
    new-instance v7, Ltj1$c$a;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Ltj1$c;->l:I

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLr22;Lll3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
