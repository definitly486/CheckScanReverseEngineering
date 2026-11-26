.class public final synthetic Lvj1;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Lbm3<",
        "Lk69;",
        "Lll3<",
        "+",
        "Lj59;",
        ">;",
        "Lj59;",
        ">;"
    }
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lk69;

    check-cast p2, Lll3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;

    sget v0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->s:I

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->m:Ls68;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsb4;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v1, Ltj1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Ltj1;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;Lk69;Lll3;Le02;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v2, v1, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->m:Ls68;

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
