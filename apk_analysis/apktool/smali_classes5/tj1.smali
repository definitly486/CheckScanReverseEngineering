.class public final Ltj1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.CiceroneActivity$openUnityOfferwall$1"
    f = "CiceroneActivity.kt"
    l = {
        0x1a0,
        0x119,
        0x1a9
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
.field public l:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public m:I

.field public final synthetic n:Lcom/warefly/checkscan/presentation/CiceroneActivity;

.field public final synthetic o:Lk69;

.field public final synthetic p:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;Lk69;Lll3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/CiceroneActivity;",
            "Lk69;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Le02<",
            "-",
            "Ltj1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltj1;->n:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    iput-object p2, p0, Ltj1;->o:Lk69;

    iput-object p3, p0, Ltj1;->p:Lll3;

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

    new-instance p1, Ltj1;

    iget-object v0, p0, Ltj1;->o:Lk69;

    iget-object v1, p0, Ltj1;->p:Lll3;

    iget-object p0, p0, Ltj1;->n:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    invoke-direct {p1, p0, v0, v1, p2}, Ltj1;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;Lk69;Lll3;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Ltj1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Ltj1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ltj1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Ltj1;->m:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Ltj1;->n:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-object v1, p0, Ltj1;->l:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, p0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-interface {v6}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v7

    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    sget-object p1, Lqo2;->a:Loi2;

    sget-object p1, Luy4;->a:Lhu3;

    invoke-virtual {p1}, Lhu3;->k0()Lgu3;

    move-result-object v10

    invoke-interface {p0}, Le02;->getContext()Lo22;

    move-result-object p1

    invoke-virtual {v10, p1}, Lgu3;->isDispatchNeeded(Lo22;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v7}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq p1, v1, :cond_4

    invoke-virtual {v7}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_5

    sget-object p1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object p1

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v4, "UnityOfferwallLoader"

    invoke-virtual {p1, v1, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    move-object v12, p0

    goto :goto_1

    :cond_4
    new-instance p0, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw p0

    :cond_5
    new-instance v11, Ltj1$a;

    invoke-direct {v11, v6}, Ltj1$a;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V

    iput v4, p0, Ltj1;->m:I

    move-object v12, p0

    invoke-static/range {v7 .. v12}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLr22;Lll3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto/16 :goto_3

    :cond_6
    :goto_1
    move-object v1, p1

    check-cast v1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    :try_start_1
    sget p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->s:I

    iget-object p0, v6, Lcom/warefly/checkscan/presentation/CiceroneActivity;->l:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq59;

    iget-object p1, v12, Ltj1;->o:Lk69;

    iget-object v4, p1, Lk69;->a:Ljava/lang/String;

    iget-object p1, p1, Lk69;->b:Ljava/lang/String;

    new-instance v7, Ltj1$c;

    invoke-direct {v7, v6, v5}, Ltj1$c;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;Le02;)V

    iput-object v1, v12, Ltj1;->l:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    iput v3, v12, Ltj1;->m:I

    invoke-interface {p0, v4, p1, v7, v12}, Lq59;->a(Ljava/lang/String;Ljava/lang/String;Ltj1$c;Ltj1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    check-cast p1, Lm69;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    instance-of p0, p1, Lm69$b;

    if-eqz p0, :cond_a

    new-instance p0, Lkd$t0$b;

    check-cast p1, Lm69$b;

    iget-object p1, p1, Lm69$b;->a:Lj69;

    invoke-virtual {p1}, Lj69;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Fallback"

    invoke-static {v1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Unity Offerwall"

    invoke-direct {p0, v1, p1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lkd;->c()V

    invoke-interface {v6}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v7

    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    sget-object p0, Lqo2;->a:Loi2;

    sget-object p0, Luy4;->a:Lhu3;

    invoke-virtual {p0}, Lhu3;->k0()Lgu3;

    move-result-object v10

    invoke-interface {v12}, Le02;->getContext()Lo22;

    move-result-object p0

    invoke-virtual {v10, p0}, Lgu3;->isDispatchNeeded(Lo22;)Z

    move-result v9

    iget-object p0, v12, Ltj1;->p:Lll3;

    if-nez v9, :cond_9

    invoke-virtual {v7}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq p1, v1, :cond_8

    invoke-virtual {v7}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_9

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    goto :goto_4

    :cond_8
    new-instance p0, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw p0

    :cond_9
    new-instance v11, Ltj1$b;

    invoke-direct {v11, p0}, Ltj1$b;-><init>(Lll3;)V

    iput-object v5, v12, Ltj1;->l:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    iput v2, v12, Ltj1;->m:I

    invoke-static/range {v7 .. v12}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLr22;Lll3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_a

    :goto_3
    return-object v0

    :cond_a
    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_5
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    throw p0
.end method
